using Syncfusion.SfDataGrid.XForms;
using System;
using System.Collections.Generic;
using System.Text;
using Wplaty_v2.ViewModel;
using Xamarin.Forms;

namespace Wplaty_v2.Data
{
    public class CustomSelectionController : GridSelectionController
    {
        public CustomSelectionController(SfDataGrid datagrid) : base(datagrid)
        {
        }

        //Code to set multiple selection colors
        public override Color GetSelectionColor(int rowIndex, object rowData)
        {
            if (!(rowData is null))
            {
                if ((rowData as ModelListPayments).SendStatus == "niezapłacony")
                    return Color.FromHex("e7c6ff");
            }

            return Color.FromHex("#87cefa");
        }
    }
}