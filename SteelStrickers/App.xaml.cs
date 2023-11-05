using SteelStrickers.Services;
using SteelStrickers.Views;
using Syncfusion.Licensing;
using System;
using Xamarin.Essentials;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers
{
    public partial class App : Application
    {
        private readonly AudioService audioService;
        public App()
        {
            InitializeComponent();
            SyncfusionLicenseProvider.RegisterLicense("Ngo9BigBOggjHTQxAR8/V1NHaF5cXmVCf1FpQXxbf1xzZFxMZV5bRXJPMyBoS35RdURiWXteeXFXR2VbUUZy");
            DependencyService.Register<DAO_User>(); 
            DependencyService.Register<DAO_Robots>(); 
            DependencyService.Register<DAO_Match>();
            DependencyService.Register<BluetoothService>();
            //DependencyService.Register<BluetoothDiscoveryService>();
            DependencyService.Register<DAO_MQTT>();

            audioService = new AudioService();
            audioService.PlayBackgroundMusic();


            MainPage = new AppShell();
            Preferences.Set("IdUser", 2);
        }

        protected override void OnStart()
        {
            /*
            if (MainPage is Shell shellPage)
            {
                int userId = Preferences.Get("IdUser", -1);
                long ticks = Preferences.Get("token_expiry", 0L);
                DateTime tokenExpiry = new DateTime(ticks);
                bool IsTokenExpired = DateTime.UtcNow >= tokenExpiry;

                if (userId != -1)
                {
                    if (IsTokenExpired)
                    {
                        Preferences.Remove("token_expiry");
                        Preferences.Set("IdUser", -1);
                        App.Current.MainPage.DisplayAlert("Session expirée", "Veuillez vous reconnecter", "OK").ContinueWith(t =>
                        {
                            if (t.IsCompleted)
                                shellPage.GoToAsync($"//{nameof(LoginPage)}");
                        });
                    }
                    else
                    {
                        shellPage.GoToAsync($"//{nameof(HomePage)}");
                    }
                }
                else
                {
                    shellPage.GoToAsync($"//{nameof(LoginPage)}");
                }
            }
            */
        }

        protected override void OnSleep()
        {
            // Stop music when app goes to sleep
            audioService.StopBackgroundMusic();
        }

        protected override void OnResume()
        {
            // Resume music when app comes back to foreground
            audioService.PlayBackgroundMusic();
        }
    }
}
