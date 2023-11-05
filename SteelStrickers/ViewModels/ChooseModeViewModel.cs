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
            get { return selectedRobot; }
            set { SetProperty(ref selectedRobot, value); }
        }

        public ObservableCollection<Robot> robots_list{ get; set; }

        public ICommand EditRobotCommand { get; private set; }
        public ICommand DeleteRobotCommand { get; private set; }
        public ICommand ConnectBluetoothCommand { get; private set; }
        public ICommand DisconnectBluetoothCommand { get; private set; }
        public ICommand OpenSettingsCommand { get; private set; }
        public ICommand ChooseTestModeCommand { get; private set; }
        public ICommand ChooseMatchModeCommand { get; private set; }
        public ICommand AddRobotCommand { get; private set; }
        public ICommand UserInformationCommand { get; private set; }
        
        private int userId;

        public ChooseModeViewModel()
        {
            Robots = new ObservableCollection<Robot>();
            ConnectedRobot = new Robot();
            SelectedRobot = new Robot();
            _User = new User();
            InitializeData();
            

            // Initialize commands
            EditRobotCommand = new Command(() => EditRobot());
            DeleteRobotCommand = new Command(() => DeleteRobot());
            ConnectBluetoothCommand = new Command(() => ConnectBluetooth());
            DisconnectBluetoothCommand = new Command(() => DisconnectBluetooth());
            OpenSettingsCommand = new Command(() => OpenSettings());
            ChooseTestModeCommand = new Command(() => ChooseTestMode());
            ChooseMatchModeCommand = new Command(() => ChooseMatchMode());
            AddRobotCommand = new Command(() => AddRobot());
            UserInformationCommand = new Command(() => UserInformation());
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

        private void UserInformation()
        {
            //open user information popup page
            PopupNavigation.Instance.PushAsync(new UserInformationPopup());

        }

        private void EditRobot()
        {
            // Implement the edit logic here
        }

        private void DeleteRobot()
        {
            // Implement the delete logic here
        }

        private void ConnectBluetooth()
        {
            // Implement the connect Bluetooth logic here
            var t = SelectedRobot;
        }

        private void DisconnectBluetooth()
        {
            // Implement the disconnect Bluetooth logic here
        }

        private void OpenSettings()
        {
            // Implement the settings logic here
            PopupNavigation.Instance.PushAsync(new SettingsPopup());
        }

        private void ChooseTestMode()
        {
            // Implement the logic to choose the test mode here
        }

        private void ChooseMatchMode()
        {
            // Implement the logic to choose the match mode here
        }

        private void AddRobot()
        {
            // Implement the logic to add a new robot here
            PopupNavigation.Instance.PushAsync(new AddRobotPopup());
        }


    }

}
