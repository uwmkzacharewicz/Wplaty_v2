using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace Wplaty_v2
{
    public partial class App : Application
    {
        public App()
        {
            Syncfusion.Licensing.SyncfusionLicenseProvider.RegisterLicense("Mgo+DSMBaFt+QHFqUUdrXVNbdV5dVGpAd0N3RGlcdlR1fUUmHVdTRHRcQllhSX5Xck1hWnlWeHQ=;Mgo+DSMBPh8sVXJ1S0d+WFBPd11dXmJWd1p/THNYflR1fV9DaUwxOX1dQl9gSXpRdkVnXXdcc3NVQmA=;MTc4NDg3OUAzMjMxMmUzMTJlMzQzMUV0TTNMRnUvN2ozQUF3V2ZJcmlmcFU5R0RseFRRZm9yKzlxSmMwRXYxWk09;Mgo+DSMBMAY9C3t2VFhhQlVFfV5AQmBIYVp/TGpJfl96cVxMZVVBJAtUQF1hSn5XdEVjXXtWcnddTmdc;MTc4NDg4MUAzMjMxMmUzMTJlMzQzMUV0TTNMRnUvN2ozQUF3V2ZJcmlmcFU5R0RseFRRZm9yKzlxSmMwRXYxWk09");
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
