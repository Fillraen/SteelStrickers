using System;
using System.Collections.Generic;
using System.Text;
using SteelStrickers.Models;
using SteelStrickers.Views;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class ChooseModeViewModel : BaseViewModel
    {
        public Command GoToControllerPageCommand { get; }
        public Command SearchOpponentCommand { get; }
        public Command CreateMatchCommand { get; }
        public string MatchId { get; set; }  // J'assume que MatchId est une string, ajustez le type si nécessaire.

        public ChooseModeViewModel()
        {
            GoToControllerPageCommand = new Command(OnGoToControllerPageClicked);
            SearchOpponentCommand = new Command(SearchOpponent);
            CreateMatchCommand = new Command(CreateMatch);
        }

        private async void OnGoToControllerPageClicked()
        {
            await Shell.Current.GoToAsync($"{nameof(ControllerPage)}");
        }

        private async void SearchOpponent()
        {
            // Supposons que vous avez une méthode GetTopicForMatch dans un service de BDD
            var topic = await daoRobots.GetTopicForMatch(MatchId.ToString());
            daoMqtt.Subscribe(topic);
        }

        private async void CreateMatch()
        {
            // Supposons que vous avez une méthode GetAvailableTopic dans un service de BDD
            var availableTopic = await daoRobots.GetAvailableTopic();
            Combat combat = new Combat();
            combat.Topic = availableTopic;
            // Supposons que vous avez une méthode CreateMatchInDB qui crée le match et retourne l'ID.
            await daoRobots.CreateMatchInDB(combat);

            daoMqtt.Subscribe(availableTopic);
        }

        
    }

}
