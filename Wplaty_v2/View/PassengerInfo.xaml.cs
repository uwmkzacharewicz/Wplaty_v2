using SQLite;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Wplaty_v2.View.OptionPages;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

[assembly: ExportFont("OpenSans-Medium.ttf", Alias = "OpenSans")]

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PassengerInfo : ContentPage
    {
        public Passenger Passenger { get; set; }
        public string typePayment;

        public PassengerInfo(Passenger chosenPassenger)
        {
            InitializeComponent();

            Passenger = chosenPassenger;
            string phone = chosenPassenger.Phone;

            BindingContext = chosenPassenger;

            if (chosenPassenger.Phone.Length < 12)
                phone = "+48100200300";

            lblNumberPhone.Text = $"{phone.Substring(3, 3)} {phone.Substring(6, 3)} {phone.Substring(9, 3)}";


            if (Passenger.Status == "Yes")
            {
                BtnConfirm.Text = "SZCZEGÓŁY WPŁATY";
                BtnConfirm.BackgroundColor = Color.DodgerBlue;
                BtnConfirm.FontAttributes = FontAttributes.None;
            }
        }

        private async void BtnConfirm_OnClicked(object sender, EventArgs e)
        {
            var popup = new PaymentPage(Passenger);

            var result = await Navigation.ShowPopupAsync(popup);

            bool isSend = (bool)result;

            if (isSend)
            {
                BtnConfirm.IsEnabled = false;
                await Navigation.PopAsync();
            }
        }

        private void BtnSendAccount_OnClicked(object sender, EventArgs e)
        {
            OperationSending.SendNrAccount(Passenger);
        }

        private async void BtnEdit_OnClicked(object sender, EventArgs e)
        {
            var popup = new EditPassengerInfoPage(Passenger);

            var result = await Navigation.ShowPopupAsync(popup);

            bool isSend = (bool)result;

            if (isSend)
            {
                var previousPage = Navigation.NavigationStack.LastOrDefault();
                //BtnConfirm.IsEnabled = false;
                await Navigation.PushAsync(new PassengerInfo(Passenger));
                Navigation.RemovePage(previousPage);

            };
        }

        private async void BtnSendSMS_OnClicked(object sender, EventArgs e)
        {
            await Sms.ComposeAsync(new SmsMessage("", Passenger.Phone)); ;
        }

        private void BtnCall_OnClicked(object sender, EventArgs e)
        {
            PhoneDialer.Open(Passenger.Phone);
        }

        private void BtnUndoPayment_OnClicked(object sender, EventArgs e)
        {
            var findPay = MainDataBase.GetListPayments().FirstOrDefault(p => Passenger.ID == p.ID);

            if (findPay != null)
            {
                int actualNrPay = Preferences.Get("pref_nrPayment", 0);

                foreach (var p in MainDataBase.GetListPayments())
                {
                    Console.WriteLine($"{p.ID} {p.NrPayment} {p.FullName} {p.DateOfPayment}");
                }

                if (findPay.NrPayment == actualNrPay)   // Record is the last
                {
                    //if (MainDataBase.GetListPayments().Count == 1)
                    MainDataBase.MyDB.Delete(findPay);
                }
                else
                {
                    MainDataBase.MyDB.Delete(findPay);

                    string com = "UPDATE Passenger SET Status = \"No\", DateOfPayment = null WHERE ID = \"" + Passenger.ID + "\"";
                    SQLiteCommand command = MainDataBase.MyDB.CreateCommand(com);
                    command.ExecuteNonQuery();
                }

                foreach (var p in MainDataBase.GetListPayments())
                {
                    Console.WriteLine($"{p.ID} {p.NrPayment} {p.FullName} {p.DateOfPayment}");
                }
            }
            else
            {
                DisplayAlert("Brak wpłaty", "Brak wpłaty w systemie", "OK");
            }


            

        }
    }
}