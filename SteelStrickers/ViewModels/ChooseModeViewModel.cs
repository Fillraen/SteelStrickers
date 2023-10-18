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
            var topic = await daoMatch.GetTopicForMatch(int.Parse(MatchId));
            daoMqtt.Subscribe(topic.Topic);
        }

        private async void CreateMatch()
        {
            // Supposons que vous avez une méthode GetAvailableTopic dans un service de BDD
            GameTopic availableTopic = await daoMatch.GetAvailableTopic();
            Match combat = new Match();
            Random rnd = new Random();
            int code = rnd.Next(000000000, 999999999); // Génère un nombre aléatoire à 10 chiffres
            combat.IdFight = code;
            combat.Topic = availableTopic.Id;
            // Supposons que vous avez une méthode CreateMatchInDB qui crée le match et retourne l'ID.
            await daoMatch.CreateMatch(combat);

            daoMqtt.Subscribe(availableTopic.Topic);
        }

        
    }

}
