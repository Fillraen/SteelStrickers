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

        public Command ChooseModeCommand { get; }

        public Command DiscoverCommand { get; }
        public HomeViewModel()
        {
            InitializeData();
            ChooseModeCommand = new Command(OnFightClicked);
            DiscoverCommand = new Command(async () => await Discover());
            //Robots = new ObservableCollection<Robot>(bluetoothService.GetAvailableRobots());
            
        }
        private async Task Discover()
        {
            MessagingCenter.Subscribe<Robot>(this, "DiscoveredDevice", (robot) =>
            {
                // Ajouter le robot à votre ObservableCollection
                Console.WriteLine($"Robot discovered: {robot.Adresse_MAC} , Name {robot.Nom_Robot}" );
                DetailedUser.Robots.Add(robot);
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

        ~HomeViewModel()
        {
            MessagingCenter.Unsubscribe<Robot>(this, "DiscoveredDevice");
        }

    }
}
