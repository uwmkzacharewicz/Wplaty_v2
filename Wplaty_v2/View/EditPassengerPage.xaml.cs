using System;
using System.Diagnostics;
using Wplaty_v2.Data;
using Wplaty_v2.Model;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class EditPassengerPage : ContentPage
    {
        private Passenger _passenger;
        private Action _updatePassengerList;

        public EditPassengerPage(Passenger passenger, Action updatePassengerList)
        {
            InitializeComponent();
            _passenger = passenger;
            _updatePassengerList = updatePassengerList;

            FullNameEntry.Text = _passenger.FullName;
            IDEntry.Text = _passenger.ID.ToString();
            // Ustaw wartości początkowe dla innych właściwości Passenger
        }

        private async void SaveButton_Clicked(object sender, EventArgs e)
        {
            try
            {
                // Aktualizuj wartości właściwości Passenger
                _passenger.FullName = FullNameEntry.Text;
                _passenger.ID = int.Parse(IDEntry.Text);
                // Aktualizuj inne właściwości Passenger

                // Zaktualizuj pasażera w bazie danych
                Debug.WriteLine($"Zaktualizowany pasażer: ID: {_passenger.ID}, FullName: {_passenger.FullName}");
                MainDataBase.UpdatePassenger(_passenger);

                foreach (var passenger in MainDataBase.GetListPassenger())
                {           
                    // Wyświetl dane pasażera w Debug.Write
                    string passengerInfo = $"ID: {passenger.ID}, FullName: {passenger.FullName}";
                    Debug.Write($"Passenger: {passengerInfo}");
                }

                // Wywołaj delegat do zaktualizowania listy pasażerów
                _updatePassengerList?.Invoke();

                // Wyślij wiadomość o zaktualizowanym pasażerze
                //MessagingCenter.Send(this, "PassengerUpdated", _passenger);
            }
            catch (Exception ex)
            {
                // obsłuż wyjątek, np. wyświetl komunikat o błędzie
                Debug.Write($"Wystąpił błąd podczas aktualizacji rekordu w bazie danych: {ex.Message}");
            }

            // Powróć do poprzedniej strony
            await Navigation.PopAsync();

        }
    }
}
