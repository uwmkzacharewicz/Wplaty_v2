using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Wplaty_v2.Data;
using Wplaty_v2.View;
using Wplaty_v2.ViewModel;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.PlatformConfiguration.WindowsSpecific;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2
{
    [XamlCompilation(XamlCompilationOptions.Compile)]

    public partial class MainPage : ContentPage
    {
        public static List<ModelListView> PassengersListView { get; set; } = new List<ModelListView>();

        public MainPage()
        {
            InitializeComponent();

            if (Connectivity.NetworkAccess == NetworkAccess.None)
                disconnect.IsVisible = true;

            if (MainDataBase.isNull())
            {
                MainDataBase.GetInstance();
            }

            if (!MainDataBase.GetListPassenger().Any())
            {
                DisplayAlert("Brak zawartości",
                    "Brak elementów do wyświetlenia. Sprawdź listę pasażerów, a następnie spróbuj ponownie", "OK");
                return;
            }

            GenerateNewModelListPassenger();
            PassengerView.ItemsSource = PassengersListView;
            BindingContext = this;
        }



        protected override void OnAppearing()
        {
            GenerateNewModelListPassenger();
            var freshList = PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled, SearchPassenger.Text);

            PassengerView.ItemsSource = freshList;
            BindingContext = this;
        }

        public static void GenerateNewModelListPassenger()
        {
            PassengersListView = new List<ModelListView>();

            foreach (var pass in MainDataBase.GetListPassenger())
            {
                ModelListView model = new ModelListView
                {
                    Color = pass.Status == "Yes" ? Color.LightPink : Color.DeepPink,
                    ModelFullName = pass.FullName,
                    ModelRoute = pass.Route,
                    Status = pass.Status
                };
                PassengersListView.Add(model);
            }
        }

        private void BtnSettings_OnClicked(object sender, EventArgs e)
        {
            Navigation.PushAsync(new OptionPage());
        }

        public void RefreshMainPage()
        {
            GenerateNewModelListPassenger();
            PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled, SearchPassenger.Text);
            BindingContext = this;
        }


        async void MyRefreshView_OnRefreshing(object sender, EventArgs e)
        {
            await Task.Delay(1000);
            RefreshMainPage();
            myRefreshView.IsRefreshing = false;
        }

        private void Paid_OnToggled(object sender, ToggledEventArgs e)
        {
            PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled,
                SearchPassenger.Text);

        }

        private void NotPaid_OnToggled(object sender, ToggledEventArgs e)
        {
            PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled, SearchPassenger.Text);
        }

        private void SearchPassenger_OnTextChanged(object sender, TextChangedEventArgs e)
        {
            var keyword = SearchPassenger.Text;
            PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled, SearchPassenger.Text);
        }

        private async void PassengerView_OnItemTapped(object sender, ItemTappedEventArgs e)
        {
            var passenger = e.Item as ModelListView;

            var findPassengerFromBase = MainDataBase.GetListPassenger()
                .First((c => passenger != null && c.FullName == passenger.ModelFullName));

            await Navigation.PushAsync(new PassengerInfo(findPassengerFromBase));
        }

        private async void BtnShowPayments_OnClicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new TablePaymentsView());
        }

        private void btnRefreshData_Clicked(object sender, EventArgs e)
        {
            GenerateNewModelListPassenger();
            var freshList = PassengerView.ItemsSource = ModelListView.GetFilter(PassengersListView, Paid.IsToggled, NotPaid.IsToggled, SearchPassenger.Text);

            PassengerView.ItemsSource = freshList;
            BindingContext = this;
        }
    }
}
