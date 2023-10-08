using Android.Bluetooth;
using Android.Content;
using SteelStrickers.Models;
using SteelStrickers.Services;
using Xamarin.Forms;

namespace SteelStrickers.Droid.Services
{
    public class BluetoothDiscoveryService : IBluetoothDiscoveryService
    {
        private readonly BluetoothAdapter _bluetoothAdapter;
        private readonly Context _context;
        private readonly BroadcastReceiver _receiver;

        public BluetoothDiscoveryService(Context context)
        {
            _bluetoothAdapter = BluetoothAdapter.DefaultAdapter;
            _context = context;
            _receiver = new DiscoveryReceiver();
        }

        public void StartDiscovery()
        {
            if (_bluetoothAdapter == null)
            {
                // Gérer si le Bluetooth n'est pas supporté
                return;
            }

            if (!_bluetoothAdapter.IsEnabled)
            {
                // Vous pouvez également envisager de demander à l'utilisateur d'activer le Bluetooth ici
                return;
            }

            IntentFilter filter = new IntentFilter(BluetoothDevice.ActionFound);
            _context.RegisterReceiver(_receiver, filter);

            _bluetoothAdapter.StartDiscovery();
        }

        private class DiscoveryReceiver : BroadcastReceiver
        {
            public override void OnReceive(Context context, Intent intent)
            {
                string action = intent.Action;

                if (BluetoothDevice.ActionFound.Equals(action))
                {
                    BluetoothDevice device = (BluetoothDevice)intent.GetParcelableExtra(BluetoothDevice.ExtraDevice);

                    Robot robot = new Robot
                    {
                        Adresse_MAC = device.Address,
                        Nom_Robot = device.Name
                    };

                    MessagingCenter.Send(robot, "DiscoveredDevice");
                }
            }
        }
    }
}