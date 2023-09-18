using System;
using System.Collections.Generic;
using System.Text;
using Wplaty_v2.Model;
using Xamarin.Forms;
using Xamarin.CommunityToolkit.UI.Views;
using Rg.Plugins.Popup.Services;

namespace Wplaty_v2.View
{
    public class ConfirmationPopup : Popup
    {
        public event EventHandler<(bool confirmed, string message, Passenger passenger)> DialogConfirmed;
        private Passenger _passenger;

        public ConfirmationPopup(string message, Passenger passenger)
        {
            _passenger = passenger;

            var layout = new StackLayout
            {
                Padding = new Thickness(20)
            };

            var titleLabel = new Label
            {
                Text = "Potwierdzenie",
                FontSize = 18,
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.Center
            };

            var messageLabel = new Label
            {
                Text = message,
                FontSize = 16,
                HorizontalOptions = LayoutOptions.Center
            };

            var messageEditor = new Editor
            {
                Text = message,
                FontSize = 16
            };

            var phoneNumberLabel = new Label
            {
                Text = $"Numer telefonu: {passenger.Phone}",
                FontSize = 16,
                HorizontalOptions = LayoutOptions.Center
            };

            var cancelButton = new Button
            {
                Text = "Anuluj",
                FontSize = 16
            };
            //cancelButton.Clicked += async (sender, args) =>
            //{
            //    await PopupNavigation.Instance.PopAsync();
            //};

            cancelButton.Clicked += (sender, args) => OnDialogConfirmed(false, message);


            var confirmButton = new Button
            {
                Text = "Potwierdź",
                FontSize = 16
            };

            confirmButton.Clicked += (sender, args) => OnDialogConfirmed(true, message);

            //confirmButton.Clicked += async (sender, args) =>
            //{
            //    // Tutaj możemy dodać logikę do obsługi potwierdzenia
            //    await PopupNavigation.Instance.PopAsync();
            //};

            layout.Children.Add(titleLabel);
            layout.Children.Add(messageLabel);
            layout.Children.Add(messageEditor);
            layout.Children.Add(phoneNumberLabel);
            layout.Children.Add(cancelButton);
            layout.Children.Add(confirmButton);

            Content = layout;


        }

        private async void OnDialogConfirmed(bool result, string message)
        {
            DialogConfirmed?.Invoke(this, (result, message, _passenger));

            await PopupNavigation.Instance.PopAsync(); // Zamknij okno
        }
    }
}
