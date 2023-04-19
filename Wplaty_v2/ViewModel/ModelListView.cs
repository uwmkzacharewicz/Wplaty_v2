using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using Xamarin.Forms;

namespace Wplaty_v2.ViewModel
{
    public class ModelListView : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        // This method is called by the Set accessor of each property.  
        // The CallerMemberName attribute that is applied to the optional propertyName  
        // parameter causes the property name of the caller to be substituted as an argument.  
        private void NotifyPropertyChanged([CallerMemberName] String propertyName = "")
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }

        private string _modelFullName;
        public string ModelFullName
        {
            get => this._modelFullName;

            set
            {
                if (value == this._modelFullName) return;
                this._modelFullName = value;
                NotifyPropertyChanged();
            }
        }

        private string _modelRoute;
        public string ModelRoute
        {
            get => this._modelRoute;

            set
            {
                if (value == this._modelRoute) return;
                this._modelRoute = value;
                NotifyPropertyChanged();
            }
        }

        private Color _color;
        public Color Color
        {
            get => this._color;

            set
            {
                if (value == this._color) return;
                this._color = value;
                NotifyPropertyChanged();
            }
        }

        public string Status { get; set; }

        //public static IEnumerable<ModelListView> GetFilter(List<ModelListView> ListToFilter, bool sPaid, bool sNotPaid, string sbEntry)
        //{
        //    IEnumerable<ModelListView> listFiltered = new List<ModelListView>();

        //    if (sPaid && sNotPaid)
        //        listFiltered = ListToFilter;
        //    if (!sPaid && sNotPaid)
        //        listFiltered = ListToFilter.Where(c => c.Status == "No");
        //    if (sPaid && !sNotPaid)
        //        listFiltered = ListToFilter.Where(c => c.Status == "Yes");

        //    if (!string.IsNullOrEmpty(sbEntry))
        //    {
        //        var suggestions = listFiltered.Where(p => p.ModelFullName.ToLower().Contains(sbEntry.ToLower()));

        //        return suggestions;
        //    }
        //    else
        //    {
        //        return listFiltered.OrderBy(p => p.ModelFullName);
        //    }
        //}

        public static IEnumerable<ModelListView> GetFilter(List<ModelListView> ListToFilter, bool sPaid, bool sNotPaid, string sbEntry)
        {
            return ListToFilter
                .Where(item => (sPaid && item.Status == "Yes") || (sNotPaid && item.Status == "No"))
                .Where(item => string.IsNullOrEmpty(sbEntry) || item.ModelFullName.ToLower().Contains(sbEntry.ToLower()))
                .OrderBy(item => item.ModelFullName);
        }

    }
}

