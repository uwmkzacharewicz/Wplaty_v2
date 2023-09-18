using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Wplaty_v2.View.OptionPages;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class OptionPage : ContentPage
	{
		public OptionPage ()
		{
			InitializeComponent ();
		}

		private void UpdateListFromCsv_OnClicked(object sender, EventArgs e)
		{

		}

		private async void BtnAddPassenger_OnClicked(object sender, EventArgs e)
		{
            var newPage = new AddNewPassengerPage();
            await Navigation.PushAsync(newPage);
        }

		private void BtnEdit_OnClicked(object sender, EventArgs e)
		{

		}

		private async void BtnSendPaymentsToEmail_OnClicked(object sender, EventArgs e)
		{
            if (Connectivity.NetworkAccess == NetworkAccess.None)
            {
                await DisplayAlert("Brak połączenia", "Brak połączenia internetowego, spróbuj później", "OK");
                return;
            }

            var list = MainDataBase.MyDB.Table<Payment>().ToList();
            string message = "";

            foreach (var pay in list)
            {
                message += ("-----------------------------------------------------------------------------------------------------------------------\n");
                message += $"[{pay.NrPayment}]\t [{pay.ID}]\t\t {pay.FullName}  ===> {pay.Price}  ===> {pay.DateOfPayment}\n";
            }


            if (OperationSending.SendEmail(message, "[RIK] WPŁATY"))
            {
                await DisplayAlert("Wysłano e-mail", "Wysłano e-mail na adres: karolzach87@gmail.com", "OK");
            }

        }

		private async void BtnChangePaymentNumber_OnClicked(object sender, EventArgs e)
        {
            await ChangePaymentNumber();

        }

        private async Task ChangePaymentNumber()
        {
            string result = await DisplayPromptAsync($"" +
                                                                 $"pref_nrPayment" +
                                                                 $": {Preferences.Get("pref_nrPayment", 0)}", "Podaj nowy numer:", keyboard: Keyboard.Numeric);

            if (result != null)
            {
                int newNumber = int.Parse(result);
                Preferences.Remove("pref_nrPayment");
                Preferences.Set("pref_nrPayment", newNumber);
            }
        }

        private async void BtnShowPaymentsTable_OnClicked(object sender, EventArgs e)
		{
            await Navigation.PushAsync(new TablePaymentsView());
        }

		private async void BtnNewMonth_OnClicked(object sender, EventArgs e)
		{

            bool result = await DisplayAlert("Czyszczenie bazy", "Czy zresetować bazę danych?", "Tak", "Nie");

            if (result)
            {
                MainDataBase.ResetPassengerStatusAndPaymentDate();
                await ChangePaymentNumber();
            }

            await DisplayAlert("Zakończono czyszczenie", "Zakończenie czyszczenia bazy", "OK");

        }

		private void BackButton_OnClicked(object sender, EventArgs e)
		{
            var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
            dualSimSmsService.SendSms("515997823", "Hello, World!", 1); // 1 oznacza drugi slot SIM
        }

        private async void btnShowPassengerTable_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PassengerListPage());
        }
    }
}