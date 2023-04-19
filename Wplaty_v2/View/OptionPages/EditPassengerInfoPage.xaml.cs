using System;
using System.Threading.Tasks;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View.OptionPages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditPassengerInfoPage : Popup
    {
        public Passenger EditPassenger { get; set; }

        public EditPassengerInfoPage(Passenger newPass)
        {
            InitializeComponent();

            EditPassenger = newPass;

            BindingContext = this;

        }

        private async void BtnAdd_OnClicked(object sender, EventArgs e)
        {
            EditPassenger.FullName = enFullName.Text;
            EditPassenger.Phone = enPhone.Text;
            EditPassenger.Route = enRoute.Text;
            EditPassenger.Price = enPrice.Text;

            lblProgress.Text = "Aktualizacja pasażera w bazie...";
            await progressBar.ProgressTo(1, 1000, Easing.Linear);
            MainDataBase.MyDB.Update(EditPassenger);
            btnAdd.IsEnabled = false;

            lblProgress.Text = $"Edytowano: [{EditPassenger.ID}] {EditPassenger.FullName}.\nZamknięcie za 2s...";
            await Task.Delay(1000);
            lblProgress.Text = $"Edytowano: [{EditPassenger.ID}] {EditPassenger.FullName}.\nZamknięcie za 1s...";
            await Task.Delay(1000);

            Dismiss(true);

        }

        private void BtnExit_OnClicked(object sender, EventArgs e)
        {
            Dismiss(false);
        }
    }
}