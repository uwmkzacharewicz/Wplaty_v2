using SQLite;
using System;
using System.Collections.Generic;
using System.Net.Mail;
using System.Text;
using Wplaty_v2.Data;
using Xamarin.Essentials;

namespace Wplaty_v2.Model
{
    [Table("Passenger")]
    public class Passenger
    {
        [PrimaryKey]
        public int ID { get; set; }
        public string FullName { get; set; }
        public string Route { get; set; }
        public string Price { get; set; }
        public string Phone { get; set; }
        public string Status { get; set; }
        public string DateOfPayment { get; set; }

        public void GoPayment(string date, int numberPay)
        {
            // Change record in Passenger
            Status = "Yes";
            DateOfPayment = date;

            // Update DataBase
            string com = "UPDATE Passenger SET Status = \"Yes\", DateOfPayment = \"" + date + "\" WHERE ID = \"" + ID + "\"";

            SQLiteCommand command = MainDataBase.MyDB.CreateCommand(com);
            command.ExecuteNonQuery();

        }

        public static void SendEmail(Passenger p, string type, int nrPay, string date)
        {

            string message = $"[RIK:PAY] ({p.ID}) {p.FullName} -- {p.Route} -->  {p.Price}  [{type}]  --> {nrPay}  {date}";

            try
            {
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

                mail.From = new MailAddress("karolzach87@gmail.com");
                mail.To.Add("karolzach87@gmail.com");
                mail.Subject = message;
                mail.Body = message;

                SmtpServer.Port = 587;
                SmtpServer.Host = "smtp.gmail.com";
                SmtpServer.EnableSsl = true;
                SmtpServer.UseDefaultCredentials = false;
                SmtpServer.Credentials = new System.Net.NetworkCredential("karolzach87@gmail.com", "gccicmqcwofutnft");

                SmtpServer.Send(mail);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
        }

        public async void SendSMS(int nrPay, string typePay, string date)
        {
            string messageToSend = $"-------------------  ZAPŁACONO  -------------------\n" +
                                   $"[{nrPay}]  {date}\n" +
                                   $"Bilet miesięczny:  KWIECIEŃ 2022\n" +
                                   $"Pasażer:  {FullName} [{ID}]\n" +
                                   $"Trasa: {Route}\n" +
                                   $"Kwota: {Price} zł  [{typePay}]" +
                                   $"\n----------------------------------------------\n" +
                                   $"Dziękuje za wpłatę.\n Otrzymana wiadomość " +
                                   $"jest potwierdzeniem opłacenia biletu miesięcznego.";

            await Clipboard.SetTextAsync(messageToSend);
            await Sms.ComposeAsync(new SmsMessage(messageToSend, Phone));
        }

        public async void SendNrAccount()
        {
            string messageToSend = "Dokonaj wpłaty na jeden z następujących sposobów:\n" +
                                   "=====>  PRZELEW  <=====\n" +
                                   "Odbiorca: Karol Zacharewicz\n" +
                                   "Nr konta: 23249000050000400040523511\n" +
                                   $"Kwota: {Price} zł\n" +
                                   $"Tytuł: {FullName}, miesięczny\n\n" +
                                   "===>  BLIK - przelew na telefon  <===\n" +
                                   "Odbiorca: Karol Zacharewicz\n" +
                                   "Nr telefonu: 515997823\n" +
                                   $"Kwota: {Price} zł";

            await Clipboard.SetTextAsync(messageToSend);
            await Sms.ComposeAsync(new SmsMessage("", Phone));
        }
    }


}
