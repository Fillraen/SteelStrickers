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

            // Attempt to cast the BindingContext to MatchModeViewModel.
            var viewModel = BindingContext as MatchModeViewModel;

            // Ensure viewModel is not null before using it.
            if (viewModel != null)
            {
                // Now it is safe to access viewModel's properties and methods.
                if (!viewModel.MatchStarted && viewModel.CreatedMatch != null)
                {
                    await viewModel.DeleteCreatedMatch();
                }
            }
        }
    }
}