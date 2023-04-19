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
using Syncfusion.Data.Extensions;
using Syncfusion.Pdf;
using Syncfusion.Pdf.Graphics;
using Syncfusion.SfDataGrid.XForms;
using Syncfusion.SfDataGrid.XForms.Exporting;
using Wplaty_v2.ViewModel;
using Xamarin.Essentials;

namespace Wplaty_v2.Data.Excel
{
    public class ExportFileCopy
    {
        public ObservableCollection<ModelListPayments> ListPayments { get; set; } =
            new ObservableCollection<ModelListPayments>();
        public string FilePathPdf { get; set; }
        public string FilePathXlsx { get; set; }

        public List<string> Attachments { get; set; } = new List<string>();

        public bool IsSendFullList { get; set; }

        private SfDataGrid dataGrid;
        private Stream fontStream;


        public ExportFileCopy(List<ModelListPayments> listPayments, SfDataGrid dg, bool ifSendFull = false)
        {
            ListPayments = listPayments.ToObservableCollection();

            IsSendFullList = ifSendFull;
            dataGrid = dg;
            FilePathPdf = GetFileNamePdf();
            FilePathXlsx = GetFileNameXlsx();

        }

        public string GetFileNamePdf()
        {
            fontStream = typeof(App).GetTypeInfo().Assembly.GetManifestResourceStream("Wplaty.DataBase.OpenSans-Medium.ttf");
            DataGridPdfExportingController pdfExport = new DataGridPdfExportingController();
            pdfExport.RowExporting += PdfExport_RowExporting;
            PdfDocument exportToPdf = new PdfDocument();

            if (!IsSendFullList)
            {
                pdfExport.CellExporting += PdfExport_CellExporting;
                DataGridPdfExportOption exportOption = new DataGridPdfExportOption();

                exportOption.FitAllColumnsInOnePage = true;
                exportOption.ApplyGridStyle = true;
                exportOption.AutoFitRowHeight = true;
                exportOption.ExportColumnWidth = true;
                exportOption.RepeatHeaders = true;
                var list = new List<string>();
                list.Add("IdPassenger");
                list.Add("NumberPayment");
                list.Add("SendStatus");
                list.Add("DateOfPayment");
                exportOption.ExcludedColumns = list;

                exportToPdf = pdfExport.ExportToPdf(dataGrid, exportOption);
            }
            else
            {
                exportToPdf = pdfExport.ExportToPdf(dataGrid, new DataGridPdfExportOption()
                {
                    FitAllColumnsInOnePage = true,
                });
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
                return String.Empty;
            }

            Attachments.Add(newFile);
            return newFile;
        }

        private void PdfExport_RowExporting(object sender, DataGridRowPdfExportingEventArgs e)
        {
            e.PdfGrid.Columns[0].Width = 50;
            e.PdfGrid.Columns[1].Width = 200;
        }

        private string GetFileNameXlsx()
        {
            ExcelService excelService = new ExcelService();

            var fileName = $"Payments-{Guid.NewGuid()}.xlsx";
            var filePath = excelService.GenerateExcel(fileName);

            var data = new ExcelStructure
            {
                Headers = new List<string>() { "Nr wpłaty", "IdPas", "Pasażer", "Kwota", "Trasa", "Data", "Status" }
            };

            foreach (var item in ListPayments)
            {
                data.Values.Add(new List<string>() { item.NumberPayment.ToString(), item.IdPassenger.ToString(), item.FullName, item.Price.ToString(), item.Route, item.DateOfPayment, item.SendStatus });
            }

            excelService.InsertDataIntoSheet(filePath, "Invoice", data);

            Attachments.Add(filePath);
            return filePath;
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

            if (!paymentsList.Any())
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

