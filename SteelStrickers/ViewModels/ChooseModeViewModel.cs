using System;
using System.Collections.Generic;
using System.Text;
using SteelStrickers.Views;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class ChooseModeViewModel : BaseViewModel
    {
        public Command GoToControllerPageCommand { get; }
        public Command SearchOpponentCommand { get; }

        public ChooseModeViewModel()
        {
            GoToControllerPageCommand = new Command(OnGoToControllerPageClicked);
            SearchOpponentCommand = new Command(SearchOpponent);

        }

        private async void OnGoToControllerPageClicked(object obj)
        {
            // Naviguez vers ControllerPage
            await Shell.Current.GoToAsync($"{nameof(ControllerPage)}");
        }
        private void SearchOpponent(object obj)
        {

        }

    }
}
