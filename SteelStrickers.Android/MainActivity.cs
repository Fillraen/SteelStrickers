using Android;
using Android.App;
using Android.Content.PM;
using Android.OS;
using Android.Support.V4.App;
using Android.Support.V4.Content;
using SteelStrickers.Droid.Services;
using Xamarin.Forms;
using Xamarin.Essentials;
using System;
using Android.Runtime;
using Android.Widget;

namespace SteelStrickers.Droid
{
    [Activity(Label = "SteelStrickers", Icon = "@mipmap/icon", Theme = "@style/MainTheme", MainLauncher = true, ConfigurationChanges = ConfigChanges.ScreenSize | ConfigChanges.Orientation | ConfigChanges.UiMode | ConfigChanges.ScreenLayout | ConfigChanges.SmallestScreenSize)]
    public class MainActivity : global::Xamarin.Forms.Platform.Android.FormsAppCompatActivity
    {
        private readonly string[] Permissions =
        {
            Manifest.Permission.BluetoothScan,
            Manifest.Permission.Bluetooth,
            Manifest.Permission.BluetoothAdmin,
            Manifest.Permission.BluetoothAdvertise,
            Manifest.Permission.BluetoothConnect,
            Manifest.Permission.BluetoothPrivileged,
            Manifest.Permission.AccessNetworkState,
            Manifest.Permission.AccessCoarseLocation,
            Manifest.Permission.AccessFineLocation
        };

        private const int RequestPermissionsCode = 1000;

        public static BluetoothDiscoveryService BluetoothDiscoveryService { get; private set; }

        protected override void OnCreate(Bundle savedInstanceState)
        {
            base.OnCreate(savedInstanceState);
            Xamarin.Essentials.Platform.Init(this, savedInstanceState);
            global::Xamarin.Forms.Forms.Init(this, savedInstanceState);

            BluetoothDiscoveryService = new BluetoothDiscoveryService();
            DependencyService.RegisterSingleton<BluetoothDiscoveryService>(BluetoothDiscoveryService);

            // Demandez les permissions nécessaires
            RequestNecessaryPermissions();

            LoadApplication(new App());
        }

        private bool AllPermissionsGranted()
        {
            foreach (string permission in Permissions)
            {
                if (ContextCompat.CheckSelfPermission(this, permission) != Permission.Granted)
                    return false;
            }
            return true;
        }

        private void RequestNecessaryPermissions()
        {
            if (!AllPermissionsGranted())
            {
                ActivityCompat.RequestPermissions(this, Permissions, RequestPermissionsCode);
            }
        }

        public override void OnRequestPermissionsResult(int requestCode, string[] permissions, [GeneratedEnum] Android.Content.PM.Permission[] grantResults)
        {
            Xamarin.Essentials.Platform.OnRequestPermissionsResult(requestCode, permissions, grantResults);

            if (requestCode == RequestPermissionsCode)
            {
                if (AllPermissionsGranted())
                {
                    // Toutes les permissions ont été accordées, continuez votre logique ici.
                    //BluetoothDiscoveryService.StartDiscovery();
                }
                else
                {
                    Toast.MakeText(this, "Toutes les permissions sont nécessaires pour le fonctionnement de l'application", ToastLength.Long).Show();
                }
            }

            base.OnRequestPermissionsResult(requestCode, permissions, grantResults);
        }
    }
}
