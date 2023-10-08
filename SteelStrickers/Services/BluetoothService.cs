﻿
using Plugin.BluetoothClassic.Abstractions;
using SteelStrickers.Models;
using System;
using System.Collections.Generic;
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
            // Abonnez-vous au message pour recevoir la liste des appareils
            MessagingCenter.Subscribe<List<Robot>>(this, "DiscoveredDevices", (devices) =>
            {
                // Traitez la liste des appareils ici
                // Par exemple, les afficher dans une ListView
            });
        }


        public IEnumerable<Robot> GetAvailableDevices()
        {
            var robots = new List<Robot>();

            // Obtenir tous les périphériques appairés
            var bondedDevices = _bluetoothAdapter.BondedDevices;

            foreach (var device in bondedDevices)
            {
                robots.Add(new Robot
                {
                    Adresse_MAC = device.Address,
                    Nom_Robot = device.Name
                    // Remplissez les autres propriétés si nécessaire
                });
            }

            return robots;
        }

        public bool Connect(Robot robot)
        {
            BluetoothDeviceModel device = _bluetoothAdapter.BondedDevices.FirstOrDefault(d => d.Address == robot.Adresse_MAC);
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
            DataReceived?.Invoke(this, receivedString); // Pour déclencher l'événement DataReceived
        }

        private void HandleConnectionError(object sender, ThreadExceptionEventArgs threadExceptionEventArgs)
        {
            throw new NotImplementedException();
        }

    }
}
