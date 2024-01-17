using Rg.Plugins.Popup.Services;
using SQLite;
using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Model;
using Wplaty_v2.View;
using Xamarin.Essentials;
using Xamarin.Forms;


namespace Wplaty_v2.Data
{
    public static class OperationSending
    {
        public static int statusConnection = (int)Connectivity.NetworkAccess;
        public static void ApprovePayment(Passenger p, string date, int numberPay, string comm, string type, bool sentSms, bool isPaid)
        {
            // sent status:
            // 0 - Not Paid
            // 1 - Paid
            // 2 - Approval, (sending sms)
            // 8 - Order, without approval
            // 9 - Order, with approval

            int statusSending = 0;  // Paid

            if (isPaid)
            {
                statusSending++;

                if (sentSms)
                    statusSending++;   // Approved
            }
            else
            {
                statusSending = 0;
            }

            if (p.Status == "No")
            {
                AddPaymentToDataBase(p, numberPay, date, statusSending, comm);

                string com = "UPDATE Passenger SET Status = \"Yes\", DateOfPayment = \"" + date + "\" WHERE ID = " + p.ID;
                
                SQLiteCommand command = MainDataBase.MyDB.CreateCommand(com);
                command.ExecuteNonQuery();

                SendEmail(p, type, numberPay, date);
                Preferences.Set("pref_nrPayment", ++numberPay);
            }
        }

        public static bool SendEmail(string message, string subject)
        {
            if (statusConnection == 1)
                return false;

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("zacharewiczkarol@gmail.com");
                mail.To.Add("karolzach87@gmail.com");
                mail.Subject = subject;
                mail.Body = message;

                SmtpServer.Port = 587;
                SmtpServer.Host = "smtp.gmail.com";
                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("zacharewiczkarol@gmail.com", "agopbtinnykgrthl");

                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return true;
        }

        public static bool SendEmail(Passenger p, string type, int nrPay, string date)
        {
            string message = $"[RIK:PAY] ({p.ID}) {p.FullName} -- {p.Route} -->  {p.Price}  [{type}]  --> {nrPay}  {date}";

            if (statusConnection == 1)
                return false;

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("zacharewiczkarol@gmail.com");
                mail.To.Add("zacharewiczkarol@gmail.com");
                mail.Subject = message;
                mail.Body = message;

                SmtpServer.Port = 587;
                SmtpServer.Host = "smtp.gmail.com";
                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("zacharewiczkarol@gmail.com", "agopbtinnykgrthl");

                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }

            return true;
        }


        public static async void SendSMS(Passenger p, int nrPay, string typePay, string date, Page pageContext)
        {
            string[] listMonth =
            {
                "Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec", "Lipiec",
                "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień"
            };

            string nrMonth = nrPay.ToString().Substring(4, 2);
            int numberMonth = int.Parse(nrMonth);

            int numberM = numberMonth < 12 ? numberMonth : 0;

            string ticketMonth = listMonth[numberM].ToUpper() + " 2024";

            string messageToSend = "-------------------  ZAPŁACONO  -------------------\n" +
                                   $"[{nrPay}]  {date}\n" +
                                   $"Bilet miesięczny:  {ticketMonth}\n" +
                                   //$"Bilet miesięczny:  KWIECIEŃ 2023\n" +
                                   $"Pasażer:  {p.FullName} [{p.ID}]\n" +
                                   $"Trasa: {p.Route}\n" +
                                   $"Kwota: {p.Price} zł  [{typePay}]" +
                                   $"\n----------------------------------------------\n" +
                                   $"Dziękuje za wpłatę.\nOtrzymana wiadomość " +
                                   $"jest potwierdzeniem opłacenia biletu miesięcznego.";

            try
            {
                await Clipboard.SetTextAsync(messageToSend);
                await Sms.ComposeAsync(new SmsMessage(messageToSend, p.Phone));
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Wystąpił błąd podczas wysyłania SMS: {ex.Message}");
            }

            //await Clipboard.SetTextAsync(messageToSend);
           // await Sms.ComposeAsync(new SmsMessage(messageToSend, p.Phone));

           // var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
          //  dualSimSmsService.SendSms("515997823", "Hello", 1); // 1 oznacza drugi slot SIM

            //bool result = await pageContext.DisplayAlert("Wysłać SMS?", "Czy na pewno chcesz wysłać SMS z potwierdzeniem płatności?", "Tak", "Anuluj");

            //if (result)
            //{

            //    var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
            //    dualSimSmsService.SendSms("515997823", messageToSend, 1); // 1 oznacza drugi slot SIM
            //}

            // await PopupNavigation.Instance.PopAsync();
            //await PopupNavigation.Instance.PushAsync(new ConfirmationPopup(messageToSend, p));


            // Wyświetl okno potwierdzenia przed wysłaniem SMS-a
            //var confirmationPopup = new ConfirmationPopup(messageToSend, p);
            //confirmationPopup.DialogConfirmed += OnDialogConfirmed;
            //await Rg.Plugins.Popup.Services.PopupNavigation.Instance.PushAsync(confirmationPopup);


            //var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
            //dualSimSmsService.SendSms(p.Phone, messageToSend, 1); // 1 oznacza drugi slot SIM

            // await Sms.ComposeAsync(new SmsMessage(messageToSend, p.Phone));
        }

        private static void OnDialogConfirmed(object sender, (bool confirmed, string message, Passenger passenger) result)
        {
            
            var confirmationPopup = (ConfirmationPopup)sender;
            confirmationPopup.DialogConfirmed -= OnDialogConfirmed;

            if (result.confirmed)
            {
                var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
                dualSimSmsService.SendSms(result.passenger.Phone, result.message, 1); // 1 oznacza drugi slot SIM
            }
        }


        public static async void SendNrAccount(Passenger p)
        {
            string messageToSend = "Dokonaj wpłaty na jeden z następujących sposobów:\n" +
                                   "=====>  PRZELEW  <=====\n" +
                                   "Odbiorca: Karol Zacharewicz\n" +
                                   "Nr konta: 23249000050000400040523511\n" +
                                   $"Kwota: {p.Price} zł\n" +
                                   $"Tytuł: {p.FullName}, miesięczny\n\n" +
                                   "===>  BLIK - przelew na telefon  <===\n" +
                                   "Odbiorca: Karol Zacharewicz\n" +
                                   "Nr telefonu: 515997823\n" +
                                   $"Kwota: {p.Price} zł";

            await Clipboard.SetTextAsync(messageToSend);
            await Sms.ComposeAsync(new SmsMessage(messageToSend, p.Phone));
        }

        public static void AddPaymentToDataBase(Passenger p, int nrPay, string date, int sent, string comm = "")
        {
            Payment pay = new Payment
            {
                FullName = p.FullName,
                ID = p.ID,
                Price = p.Price,
                DateOfPayment = date,
                Comment = comm,
                SendStatus = sent,
                NrPayment = nrPay
            };

            MainDataBase.MyDB.Insert(pay);

        }
    }
}

