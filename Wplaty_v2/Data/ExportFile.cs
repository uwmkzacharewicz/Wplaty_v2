using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data;
using System.IO;
using System.Linq;
using System.Net.Mail;
using System.Net.Mime;
using System.Reflection;
using System.Text;
using Syncfusion.Data;
using Syncfusion.Data.Extensions;
using Syncfusion.Pdf;
using Syncfusion.Pdf.Graphics;
using Syncfusion.SfDataGrid.XForms;
using Syncfusion.SfDataGrid.XForms.Exporting;
using Wplaty_v2.Data.Excel;
using Wplaty_v2.ViewModel;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace Wplaty_v2.Data
{
    public class ExportFile
    {
        public ObservableCollection<ModelListPayments> ListPayments { get; set; } =
            new ObservableCollection<ModelListPayments>();
        public string FilePathPdf { get; set; }
        public string FilePathXlsx { get; set; }

        public string OrderBy { get; set; }

        public List<string> Attachments { get; set; } = new List<string>();
        public SfDataGrid dataGrid { get; set; }

        private Stream fontStream;

        public int OptionWidth { get; set; } = 0;


        public ExportFile(List<ModelListPayments> listPayments, SfDataGrid dg, string orderByColumn = "FullName")
        {
            OrderBy = orderByColumn;

            var result =
                from p in listPayments
                orderby OrderBy
                select p;

            ListPayments = result.ToObservableCollection();

            int newLp = 1;
            foreach (var p in ListPayments)
            {
                p.Id = newLp++;
            }

            dataGrid = dg;
            dataGrid.ItemsSource = ListPayments;
        }

        public ExportFile()
        {

        }

        public void GeneratePdfFile(bool ifSendFull, string sortBy = "FullName")
        {
            fontStream = typeof(App).GetTypeInfo().Assembly.GetManifestResourceStream("Wplaty_v2.DataBase.OpenSans-Medium.ttf");

            //dataGrid.ItemsSource = ListPayments;

            OptionWidth = 0;
            dataGrid.AllowSorting = true;
            dataGrid.SortColumnDescriptions.Clear();
            dataGrid.SortColumnDescriptions.Add(new SortColumnDescription()
            {
                ColumnName = sortBy,
                SortDirection = ListSortDirection.Ascending
            });


            DataGridPdfExportingController pdfExport = new DataGridPdfExportingController();
            pdfExport.RowExporting += PdfExport_RowExporting;

            PdfDocument exportToPdf = new PdfDocument();


            if (ifSendFull)
            {
                OptionWidth = 1;
                pdfExport.CellExporting += PdfExport_CellExporting;
                DataGridPdfExportOption exportOption = new DataGridPdfExportOption
                {
                    FitAllColumnsInOnePage = true,
                    ApplyGridStyle = true,
                    AutoFitRowHeight = true,
                    ExportColumnWidth = true,
                    RepeatHeaders = true
                };

                List<string> list = new List<string>();

                list = new List<string>
                {
                    "Id"
                };

                exportOption.ExcludedColumns = list;

                exportToPdf = pdfExport.ExportToPdf(dataGrid, exportOption);
            }
            else
            {
                OptionWidth = 0;
                pdfExport.CellExporting += PdfExport_CellExporting;
                DataGridPdfExportOption exportOption = new DataGridPdfExportOption
                {
                    FitAllColumnsInOnePage = true,
                    ApplyGridStyle = true,
                    AutoFitRowHeight = true,
                    ExportColumnWidth = true,
                    RepeatHeaders = true
                };

                List<string> list = new List<string>();

                list = new List<string>
                {
                    "IdPassenger",
                    "NumberPayment",
                    "SendStatus",
                    "DateOfPayment"
                };

                exportOption.ExcludedColumns = list;
                exportToPdf = pdfExport.ExportToPdf(dataGrid, exportOption);
            }

            MemoryStream stream = new MemoryStream();

            string fileName = DateTime.Now.ToString("ddMMyy_HHmmss");
            var newFile = Path.Combine(FileSystem.AppDataDirectory, fileName + ".pdf");

            try
            {
                FileStream file = new FileStream(newFile, FileMode.Create, FileAccess.Write);
                exportToPdf.Save(stream);

                stream.WriteTo(file);
                exportToPdf.Close(true);

                file.Close();
                stream.Close();
            }
            catch (Exception e)
            {
                return;
            }

            FilePathPdf = newFile;
            Attachments.Add(newFile);

        }

        private void PdfExport_HeaderAndFooterExporting(object sender, PdfHeaderFooterEventArgs e)
        {
            Stream stream = typeof(App).GetTypeInfo().Assembly.GetManifestResourceStream("Wplaty.DataBase.OpenSans-Medium.ttf");
            PdfFont myFont = new PdfTrueTypeFont(stream, 20f, PdfFontStyle.Bold);
            var width = e.PdfPage.GetClientSize().Width;
            PdfPageTemplateElement header = new PdfPageTemplateElement(width, 38);
            header.Graphics.DrawString("Miesięczne", myFont, PdfPens.Black, 70, 3);
            e.PdfDocumentTemplate.Top = header;

            //PdfPageTemplateElement footer = new PdfPageTemplateElement(width, 38);
            //footer.Graphics.DrawString("Order Details", font, PdfPens.Black, 70, 3);
            //e.PdfDocumentTemplate.Bottom = footer;
        }

        private void PdfExport_RowExporting(object sender, DataGridRowPdfExportingEventArgs e)
        {
            if (OptionWidth == 0)
            {
                e.PdfGrid.Columns[0].Width = 50;
                e.PdfGrid.Columns[1].Width = 200;
            }
            else
            {
                e.PdfGrid.Columns[0].Width = 50;
                e.PdfGrid.Columns[1].Width = 80;
                e.PdfGrid.Columns[2].Width = 30;
                e.PdfGrid.Columns[3].Width = 110;
                e.PdfGrid.Columns[4].Width = 90;
                e.PdfGrid.Columns[5].Width = 60;
            }

        }

        public void GenerateFileXlsx()
        {
            ExcelService excelService = new ExcelService();

            var fileName = $"Payments-{Guid.NewGuid()}.xlsx";
            var filePath = excelService.GenerateExcel(fileName);

            var data = new ExcelStructure
            {
                Headers = new List<string>() { "Nr wpłaty", "Id Pasażer", "Pasażer", "Kwota", "Trasa", "Data", "Status" }
            };

            foreach (var item in ListPayments)
            {
                data.Values.Add(new List<string>() { item.NumberPayment.ToString(), item.IdPassenger.ToString(), item.FullName, item.Price.ToString(), item.Route, item.DateOfPayment, item.SendStatus });
            }

            excelService.InsertDataIntoSheet(filePath, "Invoice", data);

            FilePathXlsx = filePath;
            Attachments.Add(filePath);
        }


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

        private string GetHtmlTable()
        {
            List<ModelListPayments> paymentsList = ListPayments.ToList();

            if (!ListPayments.Any())
                return String.Empty;

            DataTable data_table = ToDataTable(paymentsList);

            string textBody = "<font size='3' face='Times New Roman'> <table border=" + 1 + " cellpadding=" + 0 + " cellspacing=" + 0 + " width = 100%><tr bgcolor='#7209B7' font>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"><b>Numer</b></td> " +
                              "<td style=\"text-align:center; color: #FFFFFF\"><b>ID</b></td>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"><b>Pasażer</b></td>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"> <b>Kwota</b></td>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"> <b>Trasa</b></td>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"> <b>Data</b></td>" +
                              "<td style=\"text-align:center; color: #FFFFFF\"> <b>Status</b></td>" +
                              "</tr>";

            for (int loopCount = 0; loopCount < data_table.Rows.Count; loopCount++)
            {

                textBody += "<tr><td style=\"text-align:center\">" + data_table.Rows[loopCount]["NumberPayment"] + "</td>" +
                            "<td style=\"text-align:center\">" + data_table.Rows[loopCount]["IdPassenger"] + "</td>" +
                            "<td style=\"text-align:center\">" + data_table.Rows[loopCount]["FullName"] + "</td>" +
                            "<td style=\"text-align:center\">" + String.Format("{0:N2}", data_table.Rows[loopCount]["Price"]) +
                            "<td style=\"text-align:center\">" + data_table.Rows[loopCount]["Route"] + "</td>" +
                            "<td style=\"text-align:center\">" + data_table.Rows[loopCount]["DateOfPayment"] + "</td>" +
                            "<td style=\"text-align:center\">" + data_table.Rows[loopCount]["SendStatus"] + "</td>" +
                            "</tr>";
            }

            textBody += "</table>";

            return textBody;
        }

        public void SendEmail()
        {
            MailMessage mail = new MailMessage();
            SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");

            mail.From = new MailAddress("zacharewiczkarol@gmail.com");
            mail.To.Add("zacharewiczkarol@gmail.com");
            mail.To.Add("karolzach87@gmail.com");
            mail.Subject = "[RIK:LIST_PAYMENT]";
            mail.IsBodyHtml = true;
            mail.Body = GetHtmlTable();

            foreach (var at in Attachments)
            {
                Attachment attach = new Attachment(at, MediaTypeNames.Application.Octet);
                mail.Attachments.Add(attach);
            }

            //mail.Attachments.Add(attach);
            SmtpServer.Port = 587;
            SmtpServer.Host = "smtp.gmail.com";
            SmtpServer.EnableSsl = true;
            SmtpServer.UseDefaultCredentials = false;
            SmtpServer.Credentials = new System.Net.NetworkCredential("zacharewiczkarol@gmail.com", "agopbtinnykgrthl");

            SmtpServer.Send(mail);
        }

        private DataTable ToDataTable<T>(List<T> items)
        {
            var tb = new DataTable(typeof(T).Name);

            PropertyInfo[] props = typeof(T).GetProperties(BindingFlags.Public | BindingFlags.Instance);

            foreach (PropertyInfo prop in props)
            {
                Type t = GetCoreType(prop.PropertyType);
                tb.Columns.Add(prop.Name, t);
            }


            foreach (T item in items)
            {
                var values = new object[props.Length];

                for (int i = 0; i < props.Length; i++)
                {
                    values[i] = props[i].GetValue(item, null);
                }

                tb.Rows.Add(values);
            }
            return tb;
        }

        private bool IsNullable(Type t)
        {
            return !t.IsValueType || (t.IsGenericType && t.GetGenericTypeDefinition() == typeof(Nullable<>));
        }

        private Type GetCoreType(Type t)
        {
            if (t != null && IsNullable(t))
            {
                if (!t.IsValueType)
                {
                    return t;
                }
                else
                {
                    return Nullable.GetUnderlyingType(t);
                }
            }
            else
            {
                return t;
            }
        }

    }
}

