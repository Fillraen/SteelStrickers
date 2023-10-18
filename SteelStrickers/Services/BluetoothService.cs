
using Plugin.BluetoothClassic.Abstractions;
using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading;
using Xamarin.Forms;

namespace SteelStrickers.Services
{

    public class BluetoothService : IBluetoothService
    {
        private IBluetoothAdapter _bluetoothAdapter = DependencyService.Resolve<IBluetoothAdapter>();
        private IBluetoothManagedConnection _currentBluetoothConnection;
        public BluetoothService()
        {

        }
        public ObservableCollection<Robot> GetAvailableDevices()
        {
            var robots = new ObservableCollection<Robot>();

            // Obtenir tous les périphériques appairés
            var bondedDevices = _bluetoothAdapter.BondedDevices;

            foreach (var device in bondedDevices)
            {
                robots.Add(new Robot
                {
                    MacAddress = device.Address,
                    BluetoothName = device.Name
                    // Remplissez les autres propriétés si nécessaire
                });
            }

            return robots;
        }

        public bool Connect(Robot robot)
        {
            BluetoothDeviceModel device = _bluetoothAdapter.BondedDevices.FirstOrDefault(d => d.Address == robot.MacAddress);




            var connection = _bluetoothAdapter.CreateManagedConnection(device);
            try
            {
                connection.Connect();
                _currentBluetoothConnection = connection;

                // Abonner aux événements
                _currentBluetoothConnection.OnStateChanged += HandleStateChanged;
                _currentBluetoothConnection.OnRecived += HandleDataReceived;
                _currentBluetoothConnection.OnError += HandleConnectionError;

                return true; // Connexion réussie
            }
            catch
            {
                return false; // Connexion échouée
            }
        }

        public void SendData(string data)
        {
            if (_currentBluetoothConnection != null)
            {
                byte[] bytes = Encoding.UTF8.GetBytes(data);
                _currentBluetoothConnection.Transmit(new Memory<byte>(bytes));
            }
        }

        public event EventHandler<string> DataReceived;


        private void HandleStateChanged(object sender, StateChangedEventArgs args)
        {
            ConnectionState state = args.ConnectionState;
            // Gérer les changements d'état de connexion ici
        }

        private void HandleDataReceived(object sender, RecivedEventArgs args)
        {
            Memory<byte> data = args.Buffer;
            // Gérer les données reçues ici
            var receivedString = Encoding.UTF8.GetString(data.ToArray());
            Console.WriteLine("message : " + receivedString + " \n ");
            DataReceived?.Invoke(this, receivedString); // Pour déclencher l'événement DataReceived
        }

        private void HandleConnectionError(object sender, ThreadExceptionEventArgs threadExceptionEventArgs)
        {
            throw new NotImplementedException();
        }

    }
}
   