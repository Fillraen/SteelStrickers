using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Windows.Input;
using Plugin.BluetoothClassic.Abstractions;
using Xamarin.Forms;
using System.Threading.Tasks;
using Rg.Plugins.Popup.Services;
using Xamarin.Essentials;

namespace SteelStrickers.ViewModels
{
    public class AddRobotViewModel : BaseViewModel
    {
        private string _nomRobot;
        public string NomRobot
        {
            get { return _nomRobot; }
            set
            {
                SetProperty(ref _nomRobot, value);
                // Cela mettra à jour l'état actif de la commande de création de robot.
                (CreateRobotCommand as Command)?.ChangeCanExecute();
            }
        }
        
        public ObservableCollection<Robot> BondedDevices { get; set; } = new ObservableCollection<Robot>();
        public ObservableCollection<Robot> DiscoveryDevices { get; set; } = new ObservableCollection<Robot>();

        private Robot _selectedRobot;
        public Robot SelectedRobot
        {
            get => _selectedRobot;
            set => SetProperty(ref _selectedRobot, value);
        }

        public ICommand ClosePopupCommand { get; private set; }
        public ICommand CreateRobotCommand { get; private set; }
        private bool _robotCreated = false;
        private int userId;
        public AddRobotViewModel()
        {
            ConnectBluetooth();
            ClosePopupCommand = new Command(async () => await ClosePopup());
            CreateRobotCommand = new Command(async () => await CreateRobot(), () => CanCreateRobot());
            userId = Preferences.Get("IdUser", -1);
        }
        private bool CanCreateRobot()
        {
            // Le nom du robot ne doit pas être vide et ne doit pas dépasser 50 caractères.
            return !string.IsNullOrWhiteSpace(NomRobot) && NomRobot.Length <= 50;
        }

        private async Task CreateRobot()
        {
            if (ValidateRobotName() && SelectedRobot != null && bluetoothService.IsConnected())
            {
                SelectedRobot.Name = NomRobot;
                SelectedRobot.IdUser = userId;
                await daoRobots.AddRobot(SelectedRobot);

                _robotCreated = true; // Définissez le drapeau sur true car le robot a été créé avec succès
                // Fermez la popup après la création.
                
                // Envoyez un message avec le nouveau robot créé
                MessagingCenter.Send(this, "RobotAdded", SelectedRobot);

                await ClosePopup();
            }
            else
            { 
                // Afficher un message d'erreur
                await Application.Current.MainPage.DisplayAlert("Erreur", "Veuillez sélectionner un robot et un nom de robot valide (Maximum 50 charactere !).", "OK");
            }
        }

        private async Task ClosePopup()
        {
            // Si le robot n'a pas été créé, déconnectez le Bluetooth
            if (!_robotCreated && bluetoothService.IsConnected())
            {
                await bluetoothService.Disconnect();
            }
            // Fermez la popup.
            await PopupNavigation.Instance.PopAsync();
        }
        
        private bool ValidateRobotName()
        {
            return !string.IsNullOrWhiteSpace(NomRobot) && NomRobot.Length <= 50;
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

            // Lors de la destruction de la ViewModel, déconnectez le Bluetooth uniquement si le robot n'a pas été créé
            if (!_robotCreated)
            {
                Task.Run(async () => { if (bluetoothService.IsConnected()) await bluetoothService.Disconnect(); });
            }
        }

    }
}
