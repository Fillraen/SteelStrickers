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
            cancelButton.Clicked += OnCloseButtonClicked;
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
                // Logique pour se connecter à l'appareil sélectionné
                (BindingContext as AddRobotViewModel)?.ConnectToBondedDevice(robot);
            }
            // Désélectionnez l'élément pour pouvoir le sélectionner à nouveau
            ((ListView)sender).SelectedItem = null;
        }

        private void OnDiscoveryDeviceSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (e.SelectedItem is Robot robot)
            {
                // Logique pour l'appariement et la connexion à l'appareil sélectionné
                (BindingContext as AddRobotViewModel)?.PairAndConnectToDiscoveryDevice(robot);
            }
            // Désélectionnez l'élément pour pouvoir le sélectionner à nouveau
            ((ListView)sender).SelectedItem = null;
        }

        protected override void OnDisappearing()
        {
            base.OnDisappearing();
            cancelButton.Clicked -= OnCloseButtonClicked;
        }
    }
}