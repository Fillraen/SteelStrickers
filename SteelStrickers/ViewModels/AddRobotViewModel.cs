﻿using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows.Input;
using Plugin.BluetoothClassic.Abstractions;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class AddRobotViewModel : BaseViewModel
    {
        private string _nomRobot;
        public string NomRobot
        {
            get { return _nomRobot; }
            set { SetProperty(ref _nomRobot, value); }
        }
        
        public ObservableCollection<Robot> BondedDevices { get; set; } = new ObservableCollection<Robot>();
        public ObservableCollection<Robot> DiscoveryDevices { get; set; } = new ObservableCollection<Robot>();

        public AddRobotViewModel()
        {

            ConnectBluetooth();
        }

        private void ConnectBluetooth()
        {
            BondedDevices.Clear();
            DiscoveryDevices.Clear();
            // Logique pour démarrer la découverte Bluetooth et remplir les listes BondedDevices et DiscoveryDevices
            var t= bluetoothService.GetAvailableDevices();

            foreach (Robot device in t)
            {
                BondedDevices.Add(device);
            }

            MessagingCenter.Subscribe<Robot>(this, "DiscoveredDevice", (robot) =>
            {
                // Ajouter le robot à la collection DiscoveredRobots
                DiscoveryDevices.Add(robot);
            });

            bluetoothDiscoveryService.StartDiscovery();
        }

        public void ConnectToBondedDevice(Robot robot)
        {
            // Logique pour se connecter à l'appareil associé
            if (bluetoothService.Connect(robot))
            {
                bluetoothService.SendData("Login;");
            }
            
        }

        public void PairAndConnectToDiscoveryDevice(Robot robot)
        {
            // Logique pour l'appariement et la connexion à l'appareil détecté
            bluetoothDiscoveryService.PairDevice(robot);
            if (bluetoothService.Connect(robot))
            {
                
            }
        }

        ~AddRobotViewModel()
        {
            MessagingCenter.Unsubscribe<Robot>(this, "DiscoveredDevice");
        }

    }
}
