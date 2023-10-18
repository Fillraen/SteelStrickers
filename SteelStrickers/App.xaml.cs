using SteelStrickers.Services;
using SteelStrickers.Views;
using Syncfusion.Licensing;
using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers
{
    public partial class App : Application
    {

        public App()
        {
            InitializeComponent();
            SyncfusionLicenseProvider.RegisterLicense("Ngo9BigBOggjHTQxAR8/V1NHaF5cXmVCf1NpRmJGfV5yd0VOalxUTnRbUj0eQnxTdEZiWX9acXBURWRaVUV2Wg==");
            DependencyService.Register<DAO_User>(); 
            DependencyService.Register<DAO_Robots>(); 
            DependencyService.Register<DAO_Match>();
            DependencyService.Register<BluetoothService>();
            //DependencyService.Register<BluetoothDiscoveryService>();
            DependencyService.Register<DAO_MQTT>();
            MainPage = new AppShell();
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
