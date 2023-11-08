using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Rg.Plugins.Popup.Services;
using SteelStrickers.Models;
using SteelStrickers.Views;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class ChooseModeViewModel : BaseViewModel
    {

        private ObservableCollection<Robot> robots;

        public ObservableCollection<Robot> Robots
        {
            get { return robots; }
            set { SetProperty(ref robots, value); }
        }

        private User user;
        public User _User
        {
            get { return user; }
            set
            {
                if (SetProperty(ref user, value))
                {
                    UpdateApiPropertyAsync();
                }
            }
        }

        private Robot connectedRobot;

        public Robot ConnectedRobot
        {
            get { return connectedRobot; }
            set { SetProperty(ref connectedRobot, value); }
        }

        private Robot selectedRobot;

        public Robot SelectedRobot
        {
            get => selectedRobot;
            set
            {
                if (selectedRobot != value)
                {
                    // Si un robot était déjà connecté, déconnectez-le

                    SetProperty(ref selectedRobot, value);
                }
            }
        }


        public ICommand EditRobotCommand { get; private set; }
        public ICommand DeleteRobotCommand { get; private set; }
        public ICommand ConnectBluetoothCommand { get; private set; }
        public ICommand DisconnectBluetoothCommand { get; private set; }
        public ICommand OpenSettingsCommand { get; private set; }
        public ICommand ChooseTestModeCommand { get; private set; }
        public ICommand ChooseMatchModeCommand { get; private set; }
        public ICommand AddRobotCommand { get; private set; }
        public ICommand UserInformationCommand { get; private set; }
        public bool IsBluetoothConnected { get; private set; }
        public bool IsBluetoothDisconnected => !IsBluetoothConnected;

        private int userId;

        public ChooseModeViewModel()
        {
            Robots = new ObservableCollection<Robot>();
            ConnectedRobot = new Robot();
            SelectedRobot = new Robot();
            _User = new User();
            InitializeData();

            

            // Initialize commands
            EditRobotCommand = new Command(async () => await EditRobot());
            DeleteRobotCommand = new Command(async () => await DeleteRobot());
            ConnectBluetoothCommand = new Command(async () => await ConnectBluetooth());
            DisconnectBluetoothCommand = new Command(async () => await DisconnectBluetooth());
            OpenSettingsCommand = new Command(async () => await OpenSettings());
            ChooseTestModeCommand = new Command(async () => await ChooseTestMode());
            ChooseMatchModeCommand = new Command(async () => await ChooseMatchMode());
            AddRobotCommand = new Command(async () => await AddRobot());
            UserInformationCommand = new Command(async () => await UserInformation());


            MessagingCenter.Subscribe<AddRobotViewModel, Robot>(this, "RobotAdded", (sender, robot) =>
            {
                Device.BeginInvokeOnMainThread(() =>
                {
                    Robots.Add(robot);
                    SelectedRobot = robot; // Sélectionnez le nouveau robot
                });
            });
        }
        private async void UpdateApiPropertyAsync()
        {
            await daoUser.UpdateUserAsync(_User);
        }
        private void InitializeData()
        {
            //Load your data here
            userId = Preferences.Get("IdUser", -1);
            Task.Run(async () => await LoadUser());
            Task.Run(async () => await LoadRobots());
            Task.Run(async () => await daoMqtt.Connect());
        }
        private async Task LoadRobots()
        {
            // Load your robots here
            var RobotsList = await daoRobots.GetAllRobotsByUserId();
            foreach (var robots in RobotsList)
            {
                Robots.Add(robots);
            }
        }
        private async Task LoadUser()
        {
            // Load your user here
            _User = await daoUser.GetUserByIdAsync(userId);
        }

        private async Task UserInformation()
        {
            //open user information popup page
            await PopupNavigation.Instance.PushAsync(new UserInformationPopup());
        }

        private async Task EditRobot()
        {
            // Implement the edit logic here asynchronously
        }

        private async Task DeleteRobot()
        {
            // Delete Robot asynchronously
            if (SelectedRobot.Name != null)
            {
                Robots.Remove(SelectedRobot);
                await daoRobots.DeleteRobot(SelectedRobot.IdRobot);
                SelectedRobot = new Robot();
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Delete Error", "No robot is selected. Please select to a robot before attempting to delete.", "OK");
            }
        }

        private async Task ConnectBluetooth()
        {
            // Implement the connect Bluetooth logic asynchronously
            if (SelectedRobot.Name != null)
            {
                await bluetoothService.Connect(SelectedRobot);
                await Application.Current.MainPage.DisplayAlert("Connection Ok", "", "OK");
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Connection Error", "No robot selected for connection.", "OK");
            }
        }

        private async Task DisconnectBluetooth()
        {
            var isConnected = bluetoothService.IsConnected();

            // Implement the disconnect Bluetooth logic asynchronously
            if (SelectedRobot.Name != null && isConnected)
            {
                await bluetoothService.Disconnect();
            }
        }

        private async Task OpenSettings()
        {
            // Implement the settings logic asynchronously
            await PopupNavigation.Instance.PushAsync(new SettingsPopup());
        }

        private async Task ChooseTestMode()
        {
            // First check if there is a connected robot
            var isConnected = bluetoothService.IsConnected();

            if (isConnected)
            {
                // If there is a connected robot, navigate to the Controller page
                await Application.Current.MainPage.Navigation.PushAsync(new ControllerPage());
            }
            else
            {
                // If no robot is connected, show an error message or prompt to connect
                await Application.Current.MainPage.DisplayAlert("Connection Error", "No robot is connected. Please connect to a robot before attempting to choose test mode.", "OK");
            }
        }

        private async Task ChooseMatchMode()
        {
            // First check if there is a connected robot
            var isConnected = bluetoothService.IsConnected();
            isConnected = true;
            if (isConnected)
            {
                // If there is a connected robot, navigate to the Match Creation or Join popup
                await PopupNavigation.Instance.PushAsync(new MatchModePopup(SelectedRobot));
            }
            else
            {
                // If no robot is connected, show an error message or prompt to connect
                await Application.Current.MainPage.DisplayAlert("Connection Error", "No robot is connected. Please connect to a robot before attempting to choose Match mode.", "OK");
            }
        }

        private async Task AddRobot()
        {
            // Implement the logic to add a new robot asynchronously
            await PopupNavigation.Instance.PushAsync(new AddRobotPopup());
        }
        ~ChooseModeViewModel()
        {
            MessagingCenter.Unsubscribe<AddRobotViewModel, Robot>(this, "RobotAdded");
        }

    }

}
