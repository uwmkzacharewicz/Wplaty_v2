using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Text;
using System.Threading.Tasks;
using DocumentFormat.OpenXml.Drawing;
using SQLite;
using Syncfusion.Data.Extensions;
using Syncfusion.SfDataGrid.XForms;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Wplaty_v2.ViewModel;
using Xamarin.CommunityToolkit.UI.Views;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OrderingPage : Popup
    {
        public List<ModelListPayments> ListToOrder { get; set; }
        public List<Payment> ListPayments { get; set; }

        public double ProgressMax { get; set; } = 0;

        public SfDataGrid DataGridFromPayPage { get; set; }




        public OrderingPage(List<ModelListPayments> selectedItems, SfDataGrid dataGrid)
        {
            InitializeComponent();

            int[] nrStatus = new[] { 0, 1, 2, 3, 4, 5, 6 };
            var list = MainDataBase.GetListPayments().Where(p => nrStatus.Contains(p.SendStatus));

            ProgressMax = list.ToList().Count;
            ListPayments = list.ToList();
            ListToOrder = selectedItems;
            DataGridFromPayPage = dataGrid;

        }

        private void BtnEnd_OnClicked(object sender, EventArgs e)
        {
            Dismiss(false);
        }

        private async void BtnStart_OnClicked(object sender, EventArgs e)
        {
            btnStart.IsEnabled = false;

            lblStatus.Text = "Nawiązywanie połączęnia z bazą danych...";
            edit.Text = "Próba nawiązania połączenia z bazą danych...\n";

            progressLine.Minimum = 0;
            progressLine.Maximum = ListPayments.Count;

            progressLine.Progress = 0;
            // connect with database
            progressLine.SetProgress(ProgressMax, 1000, Easing.Linear);
            progressCircus.SetProgress(25, 1000, Easing.Linear);

            await Task.Delay(300);
            if (MainDataBase.isNull())
            {
                MainDataBase.GetInstance();
            }
            edit.Text += "Połączono z bazą danych...\n";
            await Task.Delay(300);
            edit.Text += "Łączenie z tabelą Payment: ";

            List<Payment> listPayments = new List<Payment>();

            if (!MainDataBase.GetListPayments().Any())
            {
                lblStatus.Text = "Brak danych w tabeli Payment!...";
                edit.Text += "Error...";
                return;
            }

            listPayments = ListPayments;

            await Task.Delay(300);
            edit.Text += " Sukces...\n";
            lblStatus.Text = "Połączono z bazą danych... Odczyt danych z tablicy Payment";

            await Task.Delay(200);
            lblStatus.Text = "Odczyt danych z listy wpłat...";
            await Task.Delay(200);
            lblStatus.Text += $" Znaleziono {ProgressMax} rekordów";
            edit.Text += "Odczytuje rekordy:\n";

            // odczytanie danych

            progressLine.Progress = 0;
            int actualProgress = 0;
            //progressLine.SetProgress(ProgessMax,  (int)ProgessMax * 100, Easing.Linear);
            progressCircus.SetProgress(50, (int)ProgressMax * 102, Easing.Linear);

            await Task.Delay(200);
            foreach (var p in listPayments)
            {
                progressLine.SetProgress(++actualProgress, 100, Easing.Linear);
                await Task.Delay(100);
                lblStatus.Text = $"Odczytuje: {actualProgress}/{ProgressMax}";
                edit.Text += $" {p.FullName}\n";
            }

            lblStatus.Text = $"Pomyślnie odczytano {ProgressMax} rekordów";
            edit.Text += "Pomyślnie odczytano wszystkie rekordy...\n";
            progressLine.Progress = 0;
            await Task.Delay(300);
            edit.Text += "Przygotowanie biletów do zamówienia...\n";
            lblStatus.Text = "Przygotowanie biletów...";

            actualProgress = 0;
            //progressLine.SetProgress(ProgessMax,  (int)ProgessMax * 100, Easing.Linear);
            progressCircus.SetProgress(75, (int)ProgressMax * 110, Easing.Linear);
            progressLine.Progress = 0;
            //progressLine.SetProgress(0, 1, Easing.SpringIn);
            await Task.Delay(200);

            // left join
            var result = from pass in ListPayments
                         join ord in ListToOrder
                             on pass.NrPayment equals ord.NumberPayment into nrPay
                         from subPay in nrPay.DefaultIfEmpty()
                         select new
                         {
                             pass.FullName,
                             isPay = subPay?.NumberPayment ?? 0,
                             pass.ID,
                             pass.SendStatus
                         };



            int countOrder = 0;
            int countDismiss = 0;

            foreach (var p in result.OrderBy(p => p.FullName))
            {
                progressLine.SetProgress(++actualProgress, 100, Easing.Linear);
                await Task.Delay(100);
                lblStatus.Text = $"Przetwarzam: {actualProgress}/{ProgressMax}";

                if (p.isPay == 0)
                {
                    edit.Text += $"Odrzucono: {p.FullName}\n";
                    countDismiss++;
                }
                else
                {
                    edit.Text += $"Zamawiam: {p.FullName}\n";
                    await Task.Delay(200);

                    int newStatus;

                    switch (p.SendStatus)
                    {
                        case 0:
                            newStatus = 7;
                            break;
                        case 1:
                            newStatus = 8;
                            break;
                        case 2:
                            newStatus = 9;
                            break;
                        default:
                            newStatus = -1;
                            break;
                    }

                    if (newStatus == -1)
                    {
                        edit.Text += $"Nieznany status... Odrzucono bilet\n";
                        countDismiss++;
                        break;
                    }

                    string com = "UPDATE Payment SET SendStatus = " + newStatus + " WHERE ID = \"" + p.ID + "\"";
                    SQLiteCommand command = MainDataBase.MyDB.CreateCommand(com);
                    command.ExecuteNonQuery();
                    edit.Text += $"Zmieniono status:\n {TablePaymentsView.NameStatus[p.SendStatus]} => {TablePaymentsView.NameStatus[newStatus]}\n\n";
                    countOrder++;
                }
            }

            lblStatus.Text = $"Zamówiono pomyślnie: {countOrder}, odrzucono: {countDismiss}";
            edit.Text += $"Podsumowanie:\n - zamówiono: {countOrder}\n - odrzucono: {countDismiss}\n\n";
            progressLine.Progress = 0;
            await Task.Delay(300);

            lblStatus.Text = $"Przygotowanie plików do wysłania...";
            await Task.Delay(300);
            lblStatus.Text = $"Przygotowanie pliku pdf...";
            edit.Text += "Tworzenie pliku pdf...\n";
            progressLine.Progress = 0;

            //pdf

            progressLine.SetProgress(ProgressMax, 1000, Easing.Linear);
            progressCircus.SetProgress(84, 1000, Easing.Linear);
            await Task.Delay(1000);
            ExportFile newExport = new ExportFile(ListToOrder, DataGridFromPayPage);



            newExport.GeneratePdfFile(false);


            edit.Text += $"Pomyślnie utworzono plik pdf\n {newExport.FilePathPdf}\n\n";

            // xlsx
            lblStatus.Text = $"Przygotowanie pliku xlsx......";
            await Task.Delay(300);
            edit.Text += "Tworzenie pliku xlsx...\n";
            progressLine.Progress = 0;
            progressLine.SetProgress(ProgressMax, 1000, Easing.Linear);
            progressCircus.SetProgress(92, 1000, Easing.Linear);
            await Task.Delay(1000);


            newExport.GenerateFileXlsx();


            edit.Text += $"Pomyślnie utworzono plik xlsx.\n {newExport.FilePathXlsx}\n\n";

            await Task.Delay(300);

            progressLine.Progress = 0;
            edit.Text += "Wysyłanie e-maila z załącznikami...\n";
            await Task.Delay(500);
            lblStatus.Text = $"Wysyłanie e-mail...";
            progressLine.SetProgress(ProgressMax, 1000, Easing.Linear);
            progressCircus.SetProgress(100, 1000, Easing.Linear);
            await Task.Delay(1000);
            await Clipboard.SetTextAsync(edit.Text);

            newExport.SendEmail();
            edit.Text += $"Wysłano e-mail...";
            edit.Text += "Zakończono pomyślnie!";

            lblStatus.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 3s...";
            await Task.Delay(1000);
            lblStatus.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 2s..";
            await Task.Delay(1000);
            lblStatus.Text = "Zakończono pomyślnie! Automatyczne zamknięcie za 1s.";
            await Task.Delay(1000);
            Dismiss(true);



        }

        private void BtnCancel_OnClicked(object sender, EventArgs e)
        {
            Dismiss(false);
        }


        private void Edit_OnFocused(object sender, FocusEventArgs e)
        {
            scrollView.ScrollToAsync(0, 0, true);
        }

        private void Edit_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            edit.Focus();
        }
    }
}