using SQLite;
using Syncfusion.Data.Extensions;
using Syncfusion.SfDataGrid.XForms;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Syncfusion.Pdf.Graphics;
using Syncfusion.SfDataGrid.XForms.Exporting;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Wplaty_v2.ViewModel;
using Xamarin.CommunityToolkit.Extensions;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using SelectionMode = Syncfusion.SfDataGrid.XForms.SelectionMode;

namespace Wplaty_v2.View
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class TablePaymentsView : ContentPage
	{
        public List<ModelListPayments> PaymentsListView { get; set; } = new List<ModelListPayments>();

        public List<ModelListPayments> PaymentsListSelected { get; set; } = new List<ModelListPayments>();

        public Dictionary<string, int[]> FiltrStatus = new Dictionary<string, int[]>
        {
            {"niezapłacone", new []{0} },
            {"zapłacone", new []{1,2} },
            {"niezamówione", new []{0,1,2} }, //
            {"zamówione", new []{7,8,9}},
            {"wszystkie", new []{0,1,2,3,4,5,6,7,8,9} },
            {"zamówione, nieopłacone", new []{7} },
            {"nieopłacone, wszystkie", new []{0,7} },//
        };

        public static Dictionary<int, string> NameStatus = new Dictionary<int, string>()
        {
            {0, "niezapłacony"},
            {1, "zapłacony"},
            {2, "potwierdzony"},
            {3, "b/d"},
            {4, "b/d"},
            {7, "zamówiony - nieopłacony"},
            {8, "zamówiony (b/potwierdzenia)"},
            {9, "zamówiony (potwierdzony)"},
            {-1, "błędny status"}
        };

        private bool isSearchActive;


        public TablePaymentsView()
        {
            InitializeComponent();

            //switchOnlyNotOrder.IsToggled = false;

            if (!MainDataBase.MyDB.Table<Payment>().ToList().Any())
            {
                DisplayAlert("Pusta lista", "Brak danych, dodaj elementy i spróbuj ponownie", "OK");
                switchOnlyNotOrder.IsEnabled = false;
                return;
            }

            PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);

            this.dataGrid.QueryRowStyle += DataGrid_QueryRowStyle;
            this.dataGrid.SelectionChanged += DataGrid_SelectionChanged;
            BindingContext = this;

            isSearchActive = false;
        }


        private void DataGrid_SelectionChanged(object sender, GridSelectionChangedEventArgs e)
        {
            if (dataGrid.SelectedItems.Any())
            {
                btnSelectAll.Text = "Odznacz wszystko";
                btnSelectAll.BackgroundColor = Color.FromHex("#4895EF");
                isSelectedActive = true;
            }
            else
            {
                btnSelectAll.Text = "Zaznacz wszystko";
                btnSelectAll.BackgroundColor = Color.FromHex("#3F37C9");
                isSelectedActive = false;

            }
        }

        private void DataGrid_QueryRowStyle(object sender, QueryRowStyleEventArgs e)
        {
            if (!(e.RowData is null))
            {
                if ((e.RowData as ModelListPayments).SendStatus == "zamówiony (b/potwierdzenia)"
                    || (e.RowData as ModelListPayments).SendStatus == "zamówiony (potwierdzony)")
                {
                    e.Style.ForegroundColor = Color.LightSlateGray;
                }

                if ((e.RowData as ModelListPayments).SendStatus == "niezapłacony")
                {
                    e.Style.ForegroundColor = Color.Red;
                }

                if ((e.RowData as ModelListPayments).SendStatus == "zamówiony - nieopłacony")
                {
                    e.Style.ForegroundColor = Color.White;
                    e.Style.FontAttributes = FontAttributes.Bold;
                    e.Style.BackgroundColor = Color.Red;
                }
            }
            e.Handled = true;
        }


        private List<ModelListPayments> GetFullList(int[] nrStatus)
        {

            List<ModelListPayments> newList = new List<ModelListPayments>();

            var listPassengers = MainDataBase.MyDB.Table<Passenger>().ToList();
            var listPayments = MainDataBase.MyDB.Table<Payment>().ToList();

            int orderId = 1;

            var result = from pass in listPassengers
                         join pay in listPayments on pass.ID equals pay.ID
                         where nrStatus.Any(p => p == pay.SendStatus)
                         orderby pass.FullName
                         select new ModelListPayments
                         {
                             Id = orderId++,
                             IdPassenger = pass.ID,
                             FullName = pass.FullName,
                             Route = pass.Route,
                             Price = double.Parse(pay.Price.Replace(",", "."), System.Globalization.CultureInfo.InvariantCulture),
                             NumberPayment = pay.NrPayment,
                             SendStatus = NameStatus[pay.SendStatus],
                             DateOfPayment = pass.DateOfPayment
                         };

            newList = result.ToList();

            return newList;

        }

        private void SwitchOnlyNotOrder_OnToggled(object sender, ToggledEventArgs e)
        {
            PaymentsListView.Clear();

            if (switchOnlyNotOrder.IsToggled)
                PaymentsListView = GetFullList(FiltrStatus["niezamówione"]);
            else
                PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);

            dataGrid.ItemsSource = PaymentsListView;
            BindingContext = this;
        }

        private async void BtnExport_OnClicked(object sender, EventArgs e)
        {
            string action = await DisplayActionSheet("Wybierz formę listy", "Cancel", null, "Wszystkie (nazwisko)", "Wszystkie (nr wpłaty)", "Tylko zamówione (nazwisko)", "Tylko zamówione (nr wpłaty)");
            //Debug.WriteLine("Action: " + action);

            List<ModelListPayments> list = new List<ModelListPayments>();
            ExportFile newExport = new ExportFile();
            string orderBy = "FullName";


            if (action == "Wszystkie (nazwisko)")
            {
                orderBy = "FullName";
                list = GetFullList(FiltrStatus["wszystkie"]);
                newExport = new ExportFile(list, dataGrid, orderBy);
                //list.OrderBy(p => p.NumberPayment).ToList();

            }

            if (action == "Wszystkie (nr wpłaty)")
            {
                orderBy = "NumberPayment";
                list = GetFullList(FiltrStatus["wszystkie"]);
                newExport = new ExportFile(list, dataGrid, orderBy);
                //list = list.OrderBy(p => p.NumberPayment).ToList();
            }

            if (action == "Tylko zamówione (nazwisko)")
            {
                orderBy = "FullName";
                list = GetFullList(FiltrStatus["zamówione"]);
                newExport = new ExportFile(list, dataGrid);

            }

            if (action == "Tylko zamówione (nr wpłaty)")
            {
                orderBy = "NumberPayment";
                list = GetFullList(FiltrStatus["zamówione"]);
                newExport = new ExportFile(list, dataGrid, orderBy);

            }
            //ExportFile newExport = new ExportFile(list, dataGrid);

            newExport.GeneratePdfFile(true, orderBy);
            newExport.GenerateFileXlsx();
            newExport.SendEmail();


            DisplayAlert("Wysłano", "Poprawnie wysłano pełną listę na email: karolzach87@gmail.com", "OK");

        }

        Stream fontStream;

        private void PdfExport_CellExporting(object sender, DataGridCellPdfExportingEventArgs e)
        {
            if (e.CellValue != null)
            {
                if (IsUnicode(e.CellValue.ToString()))
                {
                    PdfFont font = e.PdfGridCell.Style.Font;
                    PdfTrueTypeFont unicodeFont = new PdfTrueTypeFont(fontStream, font.Size, font.Style);
                    e.PdfGridCell.Style.Font = unicodeFont;
                }
            }
        }

        public bool IsUnicode(string value)
        {
            if (value == null)
                throw new ArgumentNullException("value");

            return Encoding.UTF8.GetByteCount(value) != value.Length;
        }


        private void BtnSelectAll_OnClicked(object sender, EventArgs e)
        {

            //dataGrid.SelectionMode = SelectionMode.Multiple;

            if (btnSelectAll.Text == "Zaznacz wszystko")
            {
                dataGrid.SelectAll();
                btnSelectAll.Text = "Odznacz wszystko";
                btnSelectAll.BackgroundColor = Color.FromHex("#4895EF");
                isSelectedActive = true;
                return;
            }

            if (btnSelectAll.Text == "Odznacz wszystko")
            {
                dataGrid.ClearSelection();
                btnSelectAll.Text = "Zaznacz wszystko";
                btnSelectAll.BackgroundColor = Color.FromHex("#3F37C9");
                isSelectedActive = false;
                return;
            }

        }


        private bool isSelectedActive = false;

        private void BtnUnSelectAll_OnClicked(object sender, EventArgs e)
        {
            this.dataGrid.ClearSelection();
        }

        private void CheckNotPaid_OnCheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            PaymentsListView = GetFullList(checkNotPaid.IsChecked ? FiltrStatus["niezamówione"] : FiltrStatus["zapłacone"]);

            dataGrid.SelectionController = new CustomSelectionController(dataGrid);

            dataGrid.ItemsSource = PaymentsListView;
            BindingContext = this;

            dataGrid.SelectionMode = SelectionMode.Multiple;
            if (isSelectedActive)
            {
                dataGrid.SelectAll();
            }
            else
            {
                dataGrid.ClearSelection();
            }

        }

        private void BtnStartOrder_OnClicked(object sender, EventArgs e)
        {
            laySelect.IsVisible = true;
            btnStartOrder.IsVisible = false;
            btnOrder.IsVisible = true;
            btnCancel.IsVisible = true;
            layFirst.IsVisible = false;

            PaymentsListView = GetFullList(checkNotPaid.IsChecked ? FiltrStatus["niezamówione"] : FiltrStatus["zapłacone"]);

            dataGrid.SelectionController = new CustomSelectionController(dataGrid);

            dataGrid.ItemsSource = PaymentsListView;
            BindingContext = this;

            isSelectedActive = true;

            var records = this.dataGrid.View.Records;
            dataGrid.SelectionMode = SelectionMode.Multiple;
            dataGrid.SelectAll();
        }

        private void BtnCancel_OnClicked(object sender, EventArgs e)
        {
            btnStartOrder.IsVisible = true;
            btnOrder.IsVisible = false;
            btnCancel.IsVisible = false;
            laySelect.IsVisible = false;
            isSelectedActive = false;
            layFirst.IsVisible = true;

            PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);
            dataGrid.ItemsSource = PaymentsListView;
            dataGrid.SelectionMode = SelectionMode.None;
            BindingContext = this;
        }

        private async void BtnOrder_OnClicked(object sender, EventArgs e)
        {

            var selected = this.dataGrid.SelectedItems.ToList<ModelListPayments>().OrderBy(p => p.FullName);

            if (selected.Any())
            {
                PaymentsListSelected = selected.ToList();
            }
            else
            {
                await DisplayAlert("Brak zaznaczenia", "Wybierz bilety do zamówienia!", "OK");
                return;
            }


            string message = "";

            foreach (var m in PaymentsListSelected)
                message += m.FullName + "\n";

            var popup = new OrderingPage(PaymentsListSelected, dataGrid);

            var result = await Navigation.ShowPopupAsync(popup);

            bool isSend = (bool)result;

            if (isSend)
            {
                laySelect.IsVisible = true;
                btnStartOrder.IsVisible = true;
                btnOrder.IsVisible = false;
                btnCancel.IsVisible = false;
                layFirst.IsVisible = true;

                btnCancelHand.IsVisible = false;

                PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);

                dataGrid.ItemsSource = PaymentsListView;
                dataGrid.QueryRowStyle += DataGrid_QueryRowStyle;
                dataGrid.SelectionChanged += DataGrid_SelectionChanged;
                dataGrid.SelectionMode = SelectionMode.None;
                BindingContext = this;
            }
            else
                await Navigation.PopAsync();
        }



        private async void DataGrid_OnGridDoubleTapped(object sender, GridDoubleTappedEventArgs e)
        {
            ModelListPayments pass = e.RowData as ModelListPayments;

            if (pass.SendStatus == "zamówiony - nieopłacony")
            {
                var result = await DisplayAlert("Zapłacono", "Czy potwierdzić opłacenie biletu?", "Tak", "Anuluj");

                if (result)
                {
                    string com = "UPDATE Payment SET SendStatus = " + 8 + " WHERE ID = \"" + pass.IdPassenger + "\"";
                    SQLiteCommand command = MainDataBase.MyDB.CreateCommand(com);
                    command.ExecuteNonQuery();

                    PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);
                    dataGrid.ItemsSource = PaymentsListView;
                    dataGrid.SelectionMode = SelectionMode.None;
                    BindingContext = this;

                    await DisplayAlert("Zmiana statusu", $"Pomyślnie zmieniono status na {NameStatus[8]} ", "OK");
                }
            }
        }

        private void BtnCancelHand_OnClicked(object sender, EventArgs e)
        {
            laySelect.IsVisible = true;
            btnStartOrder.IsVisible = true;
            btnOrder.IsVisible = false;
            btnCancel.IsVisible = false;
            layFirst.IsVisible = true;

            btnCancelHand.IsVisible = false;

            PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);

            dataGrid.ItemsSource = PaymentsListView;
            dataGrid.QueryRowStyle += DataGrid_QueryRowStyle;
            dataGrid.SelectionChanged += DataGrid_SelectionChanged;
            dataGrid.SelectionMode = SelectionMode.None;
            BindingContext = this;
        }



        private async void BtnShowSearch_OnClicked(object sender, EventArgs e)
        {
            if (isSearchActive)
            {
                var animate = new Animation(d => textInput.WidthRequest = d, 150, 1, Easing.Linear);
                dataGrid.ItemsSource = PaymentsListView;
                animate.Commit(textInput, "BarGraph", 16, 500);
                await Task.Delay(500);
                textInput.IsVisible = false;
                isSearchActive = false;
                entrySearch.Text = "";

            }
            else
            {
                textInput.IsVisible = true;
                var animate = new Animation(d => textInput.WidthRequest = d, 1, 150, Easing.Linear);
                animate.Commit(textInput, "BarGraph", 16, 500);
                isSearchActive = true;
            }

        }

        private void EntrySearch_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            var keyword = entrySearch.Text;

            //IEnumerable<ModelListPayments> listFiltered = new List<ModelListPayments>();

            if (!string.IsNullOrEmpty(keyword))
            {
                var suggestion = PaymentsListView.Where(p => p.FullName.ToLower().Contains(keyword.ToLower()));
                dataGrid.ItemsSource = suggestion;
                return;
            }



        }

        private void BtnNotPaid_OnClicked(object sender, EventArgs e)
        {
            if (btnNotPaid.Text == "Niezapłacone")
            {
                PaymentsListView = GetFullList(FiltrStatus["nieopłacone, wszystkie"]);
                dataGrid.ItemsSource = PaymentsListView;
                dataGrid.SelectionMode = SelectionMode.Single;

                layFirst.IsVisible = false;
                btnNotPaid.Text = "Wszystkie";
            }
            else
            {
                PaymentsListView = GetFullList(FiltrStatus["wszystkie"]);
                dataGrid.ItemsSource = PaymentsListView;
                dataGrid.SelectionMode = SelectionMode.None;

                layFirst.IsVisible = true;
                btnNotPaid.Text = "Niezapłacone";
            }


        }
    }


}