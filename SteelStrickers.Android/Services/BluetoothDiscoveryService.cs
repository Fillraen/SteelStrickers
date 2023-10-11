using System;
using System.Linq;
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

            IntentFilter bondStateChangedFilter = new IntentFilter(BluetoothDevice.ActionBondStateChanged);
            _context.RegisterReceiver(_receiver, bondStateChangedFilter);


            IntentFilter filterFinished = new IntentFilter(BluetoothAdapter.ActionDiscoveryFinished);
            _context.RegisterReceiver(new FinishDiscoveryReceiver(_context, _receiver, _bluetoothAdapter, ref _isDiscovering), filterFinished);

            _bluetoothAdapter.StartDiscovery();
            _isDiscovering = true;
            
            new Handler().PostDelayed(() => {
                if (_bluetoothAdapter.IsDiscovering)
                {
                    _bluetoothAdapter.CancelDiscovery();
                }
            }, 30000); // 10 secondes
            
        }

        public bool PairDevice(Robot robot)
        {
            try
            {
                // Utilisez la méthode CreateBond pour apparier l'appareil
                BluetoothDevice device = _bluetoothAdapter.GetRemoteDevice(robot.Adresse_MAC);
                return device.CreateBond();
            }
            catch
            {
                return false;
            }
        }

        private class DiscoveryReceiver : BroadcastReceiver
        {
            public override void OnReceive(Context context, Intent intent)
            {
                string action = intent.Action;

                if (BluetoothDevice.ActionFound.Equals(action))
                {
                    BluetoothDevice device = (BluetoothDevice)intent.GetParcelableExtra(BluetoothDevice.ExtraDevice);
                    string robotName = device.Name ?? device.Alias;

                    // Vérifiez si le dispositif n'est pas déjà apparié
                    if (device.BondState != Bond.Bonded && !string.IsNullOrEmpty(robotName))
                    {
                        Robot robot = new Robot
                        {
                            Adresse_MAC = device.Address,
                            Bluetooth_Name = robotName
                        };

                        MessagingCenter.Send(robot, "DiscoveredDevice");
                    }
                }
                else if (BluetoothDevice.ActionBondStateChanged.Equals(action))
                {
                    BluetoothDevice device = (BluetoothDevice)intent.GetParcelableExtra(BluetoothDevice.ExtraDevice);

                    if (device.BondState == Bond.Bonded)
                    {
                        // L'appareil est maintenant apparié, vous pouvez initier la connexion ici
                        Robot robot = new Robot
                        {
                            Adresse_MAC = device.Address,
                            Bluetooth_Name = device.Name ?? device.Alias
                        };

                        BluetoothService bluetoothService = new BluetoothService();
                        bluetoothService.Connect(robot);
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
