using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows.Input;
using Plugin.BluetoothClassic.Abstractions;
using Xamarin.Forms;
using System.Threading.Tasks;

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

        public async Task ConnectToBondedDevice(Robot robot)
        {
            // Logic to connect to the bonded device
            if (await bluetoothService.Connect(robot))
            {
                await bluetoothService.SendData("Login;");
            }
        }

        public async Task PairAndConnectToDiscoveryDevice(Robot robot)
        {
            // Logic for pairing and connecting to the discovered device
            bluetoothDiscoveryService.PairDevice(robot); // Assuming this is a synchronous call.
            if (await bluetoothService.Connect(robot))
            {
                // Connected successfully, you may want to do something here.
            }
        }

        ~AddRobotViewModel()
        {
            MessagingCenter.Unsubscribe<Robot>(this, "DiscoveredDevice");
        }

    }
}
