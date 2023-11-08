using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using SteelStrickers.Models;
using SteelStrickers.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddRobotPopup : PopupPage
    {
        public AddRobotPopup()
        {
            InitializeComponent();
        }

        private void OnCloseButtonClicked(object sender, EventArgs e)
        {
            // Close the popup
            PopupNavigation.Instance.PopAsync(true);
        }

        private void OnBondedDeviceSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is Robot robot)
            {
                discoveryListView.SelectedItem = null; // Désélectionner l'autre liste
                var viewModel = BindingContext as AddRobotViewModel;
                viewModel.SelectedRobot = robot; // Définir le robot sélectionné
                viewModel?.ConnectToBondedDevice(robot); // Connecter le robot
            }
        }

        private void OnDiscoveryDeviceSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is Robot robot)
            {
                bondedListView.SelectedItem = null; // Désélectionner l'autre liste
                var viewModel = BindingContext as AddRobotViewModel;
                viewModel.SelectedRobot = robot; // Définir le robot sélectionné
                viewModel?.PairAndConnectToDiscoveryDevice(robot); // Apparier et connecter le robot
            }
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
        }
    }
}