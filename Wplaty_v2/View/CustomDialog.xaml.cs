using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2.View
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class CustomDialog : ContentView
    {
        public event EventHandler<bool> DialogClosed;

        public CustomDialog()
        {
            var titleLabel = new Label
            {
                Text = "Wysyłanie SMS",
                FontAttributes = FontAttributes.Bold,
                HorizontalOptions = LayoutOptions.Center,
                Margin = new Thickness(0, 10)
            };

            var messageLabel = new Label
            {
                Text = "Czy na pewno chcesz wysłać SMS?",
                HorizontalOptions = LayoutOptions.Center,
                Margin = new Thickness(0, 10)
            };

            var yesButton = new Button
            {
                Text = "Tak",
                HorizontalOptions = LayoutOptions.Center
            };
            yesButton.Clicked += (s, e) => OnDialogClosed(true);

            var noButton = new Button
            {
                Text = "Nie",
                HorizontalOptions = LayoutOptions.Center
            };
            noButton.Clicked += (s, e) => OnDialogClosed(false);

            var buttonStack = new StackLayout
            {
                Orientation = StackOrientation.Horizontal,
                HorizontalOptions = LayoutOptions.Center,
                Children = { yesButton, noButton }
            };

            Content = new Frame
            {
                Padding = new Thickness(20),
                HorizontalOptions = LayoutOptions.Center,
                VerticalOptions = LayoutOptions.Center,
                Content = new StackLayout
                {
                    Children = { titleLabel, messageLabel, buttonStack }
                }
            };
        }

        private void OnDialogClosed(bool result)
        {
            DialogClosed?.Invoke(this, result);
        }
    }
}