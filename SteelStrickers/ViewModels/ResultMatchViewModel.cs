using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using SteelStrickers.Models;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class ResultMatchViewModel: BaseViewModel
    {
        public string MatchResultLocalPlayer { get; private set; }
        public string MatchPointLocalPlayer { get; private set; }
        public string MatchPointOpponent { get; private set; }
        public string EloTakkenSignLocalPlayer { get; private set; }
        public string EloTakkenLocalPlayer { get; private set; }

        public ICommand ReturnHomePageCommand { get; private set; }
        public ResultMatchViewModel(MatchResult matchResult)
        {
            Title = "Résultat du match";
            MatchResultLocalPlayer = matchResult.Result;
            MatchPointLocalPlayer = matchResult.LocalPlayerScore.ToString();
            MatchPointOpponent = matchResult.OpponentScore.ToString();
            EloTakkenSignLocalPlayer = matchResult.EloChange >= 0 ? "+" : "-";
            EloTakkenLocalPlayer = Math.Abs(matchResult.EloChange).ToString();

            ReturnHomePageCommand = new Command(ReturnHomePage); Title = "Résultat du match";
            MatchResultLocalPlayer = matchResult.Result;
            MatchPointLocalPlayer = matchResult.LocalPlayerScore.ToString();
            MatchPointOpponent = matchResult.OpponentScore.ToString();
            EloTakkenSignLocalPlayer = matchResult.EloChange >= 0 ? "+" : "-";
            EloTakkenLocalPlayer = Math.Abs(matchResult.EloChange).ToString();

            ReturnHomePageCommand = new Command(ReturnHomePage);

        }

        private async void ReturnHomePage()
        {
            // Retour à la page d'accueil
            await Application.Current.MainPage.Navigation.PopToRootAsync();
        }
    }
}
