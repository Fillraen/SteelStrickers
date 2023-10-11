using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using SteelStrickers.Models;
using SteelStrickers.Services;
using SteelStrickers.Views;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class HomeViewModel : BaseViewModel
    {
        private ObservableCollection<Robot> robots;

        public ObservableCollection<Robot> Robots
        {
            get { return robots; }
            set { SetProperty(ref robots, value); }
        }

        private DetailedUser detailedUser;
        public DetailedUser DetailedUser
        {
            get { return detailedUser; }
            set
            {
                if (SetProperty(ref detailedUser, value))
                {
                    UpdateApiPropertyAsync();
                }
            }
        }

        public Command ChooseModeCommand { get; }

        public Command DiscoverCommand { get; }
        public ICommand OnOpenSettingsClicked { get; private set; }
        public ICommand OnAddRobotClicked { get; private set; }
        public HomeViewModel()
        {
            InitializeData();
            ChooseModeCommand = new Command(OnFightClicked);
            DiscoverCommand = new Command(async () => await Discover());
            OnOpenSettingsClicked = new Command(OpenSettings);
            OnAddRobotClicked = new Command(AddRobot);
            //Robots = new ObservableCollection<Robot>(bluetoothService.GetAvailableRobots());
        }

        private async Task Discover()
        {
            MessagingCenter.Subscribe<Robot>(this, "DiscoveredDevice", (robot) =>
            {
                // Ajouter le robot à votre ObservableCollection
                Console.WriteLine($"Robot discovered: {robot.Adresse_MAC} , Name {robot.Nom_Robot}" );
            });
            bluetoothDiscoveryService.StartDiscovery();
        }
        private async void InitializeData()
        {
            DetailedUser = await daoUser.GetUser();
            Robots = new ObservableCollection<Robot>(DetailedUser.Robots);
        }

        private async void OnFightClicked(object obj)
        {
            Console.WriteLine("test");
            await Shell.Current.GoToAsync($"{nameof(ChooseModePage)}");
        }

        private async void UpdateApiPropertyAsync()
        {
            await daoUser.UpdateApiPropertyAsync(DetailedUser);
        }

        private void OpenSettings()
        {
            PopupNavigation.Instance.PushAsync(new SettingsPopup());
        }

        private void AddRobot()
        {
            PopupNavigation.Instance.PushAsync(new AddRobotPopup());
        }

        ~HomeViewModel()
        {
            MessagingCenter.Unsubscribe<Robot>(this, "DiscoveredDevice");
        }

    }
}
