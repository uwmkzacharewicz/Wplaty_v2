using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.TizenSpecific;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PaymentPage : Popup
    {
        public Passenger CurrentPassenger { get; set; }
        public string TypePay { get; set; }
        public string DatePayment { get; set; }
        public int StatusConnection;

        private int _nextPaymentNumber;

        public int NextPaymentNumber
        {
            get
            {
                if (!Preferences.ContainsKey("pref_nrPayment"))
                    Preferences.Set("pref_nrPayment", 202309001);

                if (CurrentPassenger.Status == "Yes")
                    return GetNumberIfExist();

                return Preferences.Get("pref_nrPayment", 0);
            }
            set
            {
                if (!Preferences.ContainsKey("pref_nrPayment"))
                    Preferences.Set("pref_nrPayment", 202309001);
                _nextPaymentNumber = value;
            }
        }

        public PaymentPage(Passenger sendingCurrentPassenger)
        {
            InitializeComponent();

            CurrentPassenger = sendingCurrentPassenger;
            DatePayment = DateTime.Now.ToString("dd/MM/yy HH:mm");

            //StatusConnection = (int)Connectivity.NetworkAccess;

            //// 1 => No internet
            //if (StatusConnection == 1)
            //{
            //    lblProgress.Text = "Brak połączenia z internetem!";
            //    lblProgress.TextColor = Color.Red;
            //    btnSend.Text = "Dodaj do kolejki...";
            //    btnSend.BackgroundColor = Color.Red;
            //    btnSend.TextColor = Color.White;
            //}


            if (CurrentPassenger.Status == "Yes")
            {
                rbBlik.IsEnabled = false;
                rbTransfer.IsEnabled = false;
                rbBlik.IsEnabled = false;

                sendSMS.IsEnabled = false;
                switchPaid.IsEnabled = false;

                lblProgress.IsVisible = false;
                progressBar.IsVisible = false;

                btnSend.Text = "Wyślij potwierdzenie";

                DatePayment = MainDataBase.GetListPayments().First(p => CurrentPassenger.ID == p.ID).DateOfPayment;
            }

            BindingContext = this;
        }


        private int GetNumberIfExist()
        {
            var numberPayment = MainDataBase.GetListPayments().First(p => CurrentPassenger.ID == p.ID).NrPayment;

            return numberPayment;
            //(p => passenger != null && c.FullName == passenger.ModelFullName)););
        }

        private void SendSMS_OnToggled(object sender, ToggledEventArgs e)
        {

        }

        private void SwitchPaid_OnToggled(object sender, ToggledEventArgs e)
        {
            if (switchPaid.IsToggled)
            {
                sendSMS.IsEnabled = true;
            }
            else
            {
                sendSMS.IsToggled = false;
                sendSMS.IsEnabled = false;
            }
        }

        private async void BtnSend_OnClicked(object sender, EventArgs e)
        {

            if (rbCash.IsChecked) { TypePay = rbCash.Content.ToString(); }
            if (rbTransfer.IsChecked) { TypePay = rbTransfer.Content.ToString(); }
            if (rbBlik.IsChecked) { TypePay = rbBlik.Content.ToString(); }


            if (sendSMS.IsToggled)
            {
                if (chbChangeNumber.IsChecked)
                    CurrentPassenger.Phone = NewNumber.Text;
                lblProgress.Text = "Wysyłanie sms...";
                await progressBar.ProgressTo(0.5, 800, Easing.Linear);

                //OperationSending.SendSMS(CurrentPassenger, NextPaymentNumber, TypePay, DatePayment);
                OperationSending.SendSMS(CurrentPassenger, NextPaymentNumber, TypePay, DatePayment, Xamarin.Forms.Application.Current.MainPage);

            }


            lblProgress.Text = "Dodawanie wpłaty do bazy danych...";
            await progressBar.ProgressTo(1, 500, Easing.Linear);

            // Action!
            OperationSending.ApprovePayment(p: CurrentPassenger,
                date: DatePayment,
                numberPay: NextPaymentNumber,
                comm: NewComment.Text,
                type: TypePay,
                sentSms: sendSMS.IsToggled,
                isPaid: switchPaid.IsToggled);


            btnSend.IsEnabled = false;
            lblProgress.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 3s....";
            await Task.Delay(1000);
            lblProgress.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 2s....";
            await Task.Delay(1000);
            lblProgress.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 1s....";
            await Task.Delay(1000);
            Dismiss(true);

        }

        private void BtnExit_OnClicked(object sender, EventArgs e)
        {
            Dismiss(false);
        }
    }
}