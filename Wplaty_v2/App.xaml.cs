using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2
{
    public partial class App : Application
    {
        public App()
        {
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("NjE0NzYxQDMyMzAyZTMxMmUzMEJHRGpQY29qT01udENZUitocmc0Y1dRMnkrMEFmUjF3VHk3U21taUQyREE9");
            InitializeComponent();

            MainPage = new NavigationPage(new MainPage());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
