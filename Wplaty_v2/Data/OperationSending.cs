using SQLite;
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Model;
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
                string com = "UPDATE Passenger SET Status = \"Yes\", DateOfPayment = \"" + date + "\" WHERE ID = \"" + p.ID + "\"";
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


        public static async void SendSMS(Passenger p, int nrPay, string typePay, string date)
        {
            string[] listMonth =
            {
                "Styczeń", "Luty", "Marzec", "Kwiecień", "Maj", "Czerwiec", "Lipiec",
                "Sierpień", "Wrzesień", "Październik", "Listopad", "Grudzień"
            };

            string nrMonth = nrPay.ToString().Substring(4, 2);
            int numberMonth = int.Parse(nrMonth);

            int numberM = numberMonth < 12 ? numberMonth : 0;

            string ticketMonth = listMonth[numberM].ToUpper() + " 2023";

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

            await Clipboard.SetTextAsync(messageToSend);


            var dualSimSmsService = DependencyService.Get<IDualSimSmsService>();
            dualSimSmsService.SendSms(p.Phone, messageToSend, 1); // 1 oznacza drugi slot SIM

           // await Sms.ComposeAsync(new SmsMessage(messageToSend, p.Phone));
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

