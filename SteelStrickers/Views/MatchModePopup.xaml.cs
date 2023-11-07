using Rg.Plugins.Popup.Pages;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SteelStrickers.Models;
using SteelStrickers.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MatchModePopup : PopupPage
    {
        public MatchModePopup(Robot selectedRobot)
        {
            InitializeComponent();
            this.BindingContext = new MatchModeViewModel(selectedRobot);
        }

        protected override async void OnDisappearing()
        {
            base.OnDisappearing();

            // Vérifiez si le match n'a pas démarré et s'il a été créé, puis supprimez-le.
            var viewModel = BindingContext as MatchModeViewModel;
            if (viewModel != null && !viewModel.MatchStarted && viewModel.CreatedMatch != null)
            {
                await viewModel.DeleteCreatedMatch();
            }
        }

    }
}