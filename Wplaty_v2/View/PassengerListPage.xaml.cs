using System.Collections.ObjectModel;
using System.Linq;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PassengerListPage : ContentPage
    {
        public ObservableCollection<Passenger> Passengers { get; set; }

        public PassengerListPage()
        {
            InitializeComponent();
            Passengers = new ObservableCollection<Passenger>(MainDataBase.GetListPassenger());
            BindingContext = this;

            //// Subskrybuj wiadomość "PassengerUpdated"
            //MessagingCenter.Subscribe<EditPassengerPage, Passenger>(this, "PassengerUpdated", (sender, updatedPassenger) =>
            //{
            //    var existingPassenger = Passengers.FirstOrDefault(p => p.ID == updatedPassenger.ID);
            //    if (existingPassenger != null)
            //    {
            //        existingPassenger.FullName = updatedPassenger.FullName;
            //        existingPassenger.ID = updatedPassenger.ID;
            //        // Aktualizuj inne właściwości
            //    }
            //});
        }

        private async void PassengerListView_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem == null)
                return;

            var passenger = e.SelectedItem as Passenger;
            await Navigation.PushAsync(new EditPassengerPage(passenger, UpdatePassengerList));
            ((ListView)sender).SelectedItem = null;
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            UpdatePassengerList();
        }

        private void UpdatePassengerList()
        {
            var updatedPassengers = MainDataBase.GetListPassenger();
            Passengers.Clear();
            foreach (var passenger in updatedPassengers)
            {
                Passengers.Add(passenger);
            }
        }
    }
}

