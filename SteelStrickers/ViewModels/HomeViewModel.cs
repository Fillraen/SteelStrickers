using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;
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
        private IBluetoothDiscoveryService _bluetoothDiscoveryService = DependencyService.Get<IBluetoothDiscoveryService>();
        public Command ChooseModeCommand { get; }

        public Command DiscoverCommand { get; }
        public HomeViewModel()
        {
            InitializeData();
            ChooseModeCommand = new Command(OnFightClicked);
            DiscoverCommand = new Command(() => Discover());
            //Robots = new ObservableCollection<Robot>(bluetoothService.GetAvailableRobots());

            MessagingCenter.Subscribe<Robot>(this, "DiscoveredDevice", (robot) =>
            {
                // Ajouter le robot à votre ObservableCollection
                Robots.Add(robot);
            });
        }
        private void Discover()
        {
            _bluetoothDiscoveryService.StartDiscovery();
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
    }

}
