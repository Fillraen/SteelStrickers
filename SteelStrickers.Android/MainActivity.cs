using System;

using Android.App;
using Android.Content.PM;
using Android.Runtime;
using Android.OS;
using SteelStrickers.Droid.Services;
using Xamarin.Forms;

namespace SteelStrickers.Droid
{
    [Activity(Label = "SteelStrickers", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        public static BluetoothDiscoveryService BluetoothDiscoveryService { get; private set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            // Créez l'instance ici
            BluetoothDiscoveryService = new BluetoothDiscoveryService(this);

            // Enregistrez cette instance avec DependencyService
            DependencyService.RegisterSingleton<BluetoothDiscoveryService>(BluetoothDiscoveryService);

            LoadApplication(new App());
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);
            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
