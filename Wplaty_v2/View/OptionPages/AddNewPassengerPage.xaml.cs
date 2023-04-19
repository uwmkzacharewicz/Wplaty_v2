using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Spreadsheet;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Xamarin.Forms;
using Xamarin.Forms.Internals;
using Xamarin.Forms.Xaml;
using Color = Xamarin.Forms.Color;
using ValueChangedEventArgs = Syncfusion.XForms.ComboBox.ValueChangedEventArgs;

namespace Wplaty_v2.View.OptionPages
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddNewPassengerPage : ContentPage
    {
        public List<Ticket> ListTickets { get; set; } = new List<Ticket>();
        private int _nextId;

        public int NextId { get; set; }

        public Ticket SelectedTicket { get; set; } = new Ticket();


        public AddNewPassengerPage()
        {
            InitializeComponent();

            ListTickets = MainDataBase.GetListTickets();

            List<String> route = new List<String>();

            var list = ListTickets.Select(p => p.NameRoute).OrderBy(p => p);
            //list.OrderBy(p => p);

            foreach (var p in list)
                route.Add(p);

            entryRoute.DataSource = route;

            NextId = MainDataBase.MyDB.Table<Passenger>().Select(x => x.ID).Max();
            NextId++;

            BindingContext = this;

        }

        private async void BtnAdd_OnClicked(object sender, EventArgs e)
        {
            bool isError = false;

            if (String.IsNullOrEmpty(entryFirstName.Text))
            {
                inputFirstName.HasError = true;
                inputFirstName.ErrorText = "Pole wymagane*";
                inputFirstName.ErrorColor = Color.Red;
                isError = true;
            }

            if (String.IsNullOrEmpty(entryLastName.Text))
            {
                inputLastName.HasError = true;
                inputLastName.ErrorText = "Pole wymagane *";
                inputLastName.ErrorColor = Color.Red;
                isError = true;
            }

            if (String.IsNullOrEmpty(entryRoute.Text))
            {
                inputRoute.HasError = true;
                inputRoute.ErrorText = "Pole wymagane *";
                inputRoute.ErrorColor = Color.Red;
                isError = true;
            }

            if (String.IsNullOrEmpty(entryPrice.Text))
            {
                inputPrice.HasError = true;
                inputPrice.ErrorText = "Pole wymagane *";
                inputPrice.ErrorColor = Color.Red;
                isError = true;
            }

            if (isError)
                return;

            string phone = entryPhone.Value != null ? entryPhone.Value.ToString() : "";
            string price = entryPrice.Text.Replace(",", ".");

            Passenger AddNew = new Passenger
            {
                ID = int.Parse(entryID.Text),
                FullName = entryLastName.Text.ToUpper() + " " + entryFirstName.Text.ToUpper(),
                Phone = "+48" + phone.Replace(" ", ""),
                Price = price,
                Route = SelectedTicket.RouteShortcut,
                Status = "No"
            };

            Console.WriteLine(AddNew.Phone);

            MainDataBase.MyDB.Insert(AddNew);

            await DisplayAlert("Dodano nowego pasażera", $"Pomyślnie dodano pasażera: [{AddNew.ID}]  {AddNew.FullName}",
                "OK");

            await Navigation.PopAsync();
        }

        private void BtnCancel_OnClicked(object sender, EventArgs e)
        {
            entryFirstName.Text = "";
            entryLastName.Text = "";
            entryPhone.Value = "";
            entryRoute.Text = "";
            entryPrice.Text = "";
        }

        private void EntryRoute_OnValueChanged(object sender, ValueChangedEventArgs e)
        {
            SelectedTicket = ListTickets.Find(p => p.NameRoute.Contains(e.Value));

            entryPrice.Text = SelectedTicket.TicketPrice;
        }
    }
}