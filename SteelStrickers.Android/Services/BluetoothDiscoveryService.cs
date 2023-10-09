using Android.Bluetooth;
using Android.Content;
using Android.OS;
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

        private bool _isDiscovering = false;

        public BluetoothDiscoveryService()
        {
            _bluetoothAdapter = BluetoothAdapter.DefaultAdapter;
            _context = Android.App.Application.Context;
            _receiver = new DiscoveryReceiver();
        }

        public void StartDiscovery()
        {
            if (_isDiscovering) return;

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

            IntentFilter filterFinished = new IntentFilter(BluetoothAdapter.ActionDiscoveryFinished);
            _context.RegisterReceiver(new FinishDiscoveryReceiver(_context, _receiver, _bluetoothAdapter, ref _isDiscovering), filterFinished);

            _bluetoothAdapter.StartDiscovery();
            _isDiscovering = true;

            new Handler().PostDelayed(() => {
                if (_bluetoothAdapter.IsDiscovering)
                {
                    _bluetoothAdapter.CancelDiscovery();
                }
            }, 10000); // 5 secondes
        }

        private class DiscoveryReceiver : BroadcastReceiver
        {
            public override void OnReceive(Context context, Intent intent)
            {
                string action = intent.Action;

                if (BluetoothDevice.ActionFound.Equals(action))
                {
                    BluetoothDevice device = (BluetoothDevice)intent.GetParcelableExtra(BluetoothDevice.ExtraDevice);

                    // Vérifier si le dispositif n'est pas déjà couplé
                    if (device.BondState != Bond.Bonded)
                    {
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

        private class FinishDiscoveryReceiver : BroadcastReceiver
        {
            private readonly Context _context;
            private readonly BroadcastReceiver _receiver;
            private readonly BluetoothAdapter _bluetoothAdapter;
            private bool _isDiscovering;

            public FinishDiscoveryReceiver(Context context, BroadcastReceiver receiver, BluetoothAdapter bluetoothAdapter, ref bool isDiscovering)
            {
                _context = context;
                _receiver = receiver;
                _bluetoothAdapter = bluetoothAdapter;
                _isDiscovering = isDiscovering;
            }

            public override void OnReceive(Context context, Intent intent)
            {
                if (_bluetoothAdapter.IsDiscovering)
                {
                    _context.UnregisterReceiver(_receiver);
                }
                _isDiscovering = false;
            }


        }

    }
}
