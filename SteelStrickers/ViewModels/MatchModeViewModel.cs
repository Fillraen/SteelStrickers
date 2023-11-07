using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using SteelStrickers.Models;
using SteelStrickers.Services;
using Syncfusion.DataSource.Extensions;
using Xamarin.Essentials;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class MatchModeViewModel : BaseViewModel
    {
        private string searchText;
        public string SearchText
        {
            get => searchText;
            set => SetProperty(ref searchText, value, onChanged: () => FilterMatches());
        }

        private ObservableCollection<Match> allMatches;
        
        private ObservableCollection<Match> filteredMatches;
        public ObservableCollection<Match> FilteredMatches
        {
            get => filteredMatches;
            set => SetProperty(ref filteredMatches, value);
        }

        private Match createdMatch;
        public Match CreatedMatch
        {
            get => createdMatch;
            set => SetProperty(ref createdMatch, value);
        }

        public ICommand JoinMatchCommand { get; private set; }
        public ICommand StartMatchCommand { get; private set; }
        public ICommand CreateMatchCommand { get; private set; }
        public bool MatchStarted { get; set; }
        public bool IsOpponentFound { get; set; }
        public bool IsOpponentSearching { get; set; }
        public bool IsMatchNotCreated { get; set; }
        private int userId;
        private Robot selectedRobot;
        private GameTopic selectedTopic;
        public MatchModeViewModel(Robot selectedRobot)
        {
            allMatches = new ObservableCollection<Match>();
            FilteredMatches = new ObservableCollection<Match>();
            createdMatch = new Match();
            CreatedMatch = new Match();
            selectedTopic = new GameTopic();
            this.selectedRobot = selectedRobot;
            InitializeData();
            

            JoinMatchCommand = new Command(async () => await JoinMatch());
            StartMatchCommand = new Command(async () => await StartMatch());
            CreateMatchCommand = new Command(async () => await CreateMatch());
        }

        private async Task CreateMatch()
        {
            Task.Run(async () => await daoMatch.EditMatch(CreatedMatch));
            IsMatchNotCreated = false;
            IsOpponentFound = true;
            IsOpponentSearching = false;
        }



        private async Task StartMatch()
        {
            //Start a match
            MatchStarted = true;
            CreatedMatch.Status = "onGoing";
        }

        private async Task JoinMatch()
        {

        }
        
        private void InitializeData()
        {
            //Load your data here
            userId = Preferences.Get("IdUser", -1);
            MatchStarted = false;
            IsMatchNotCreated = true;
            IsOpponentFound = false;
            IsOpponentSearching = false;
            
            daoMqtt.Connect();

            Task.Run(async () => await LoadMatch());
            Task.Run(async () => await LoadCreatedMatch());

            MessagingCenter.Subscribe<DAO_MQTT, string>(this, "MQTTMessageReceived", (sender, mqttMessage) =>
            {
                // Appeler une méthode pour gérer le message reçu.
                HandleReceivedMessage(mqttMessage);
            });
        }
        private void HandleReceivedMessage(string message)
        {
            // Implémentez la logique pour traiter le message reçu ici

        }
        private async Task LoadCreatedMatch()
        {
            Random random = new Random();
            CreatedMatch.IdFight = random.Next();
            CreatedMatch.Name = "";
            CreatedMatch.creator_id = userId;
            CreatedMatch.IdRobot1 = selectedRobot.IdRobot; 

            CreatedMatch.Status = "onHold";

            selectedTopic = await daoMatch.GetAvailableTopic(); 
            CreatedMatch.Topic = selectedTopic.Id;


            daoMqtt.Subscribe(selectedTopic.Topic);

            Task.Run(async () => await daoMatch.CreateMatch(CreatedMatch));

        }

        private async Task LoadMatch()
        {
            // Load your user here
            var m = await daoMatch.GetMatchByUserId(2);

            foreach (Match match in m)
            {
                // Supposons que vous avez une méthode GetUserByIdAsync qui renvoie un User.
                User creator = await daoUser.GetUserByIdAsync(match.creator_id);
                match.CreatorName = creator?.Username;
                allMatches.Add(match);
            }

            FilteredMatches = allMatches;
        }

        private void FilterMatches()
        {
            if (string.IsNullOrWhiteSpace(SearchText))
                FilteredMatches = allMatches;
            else
                FilteredMatches = allMatches.Where(m => m.Name.ToLower().Contains(SearchText.ToLower()) && m.Name.Count() > 0).ToObservableCollection();
        }

        public async Task DeleteCreatedMatch()
        {
            // Implémentez la logique pour supprimer le match via votre API.
            if (CreatedMatch != null && !MatchStarted)
            {
                // Supposons que daoMatch a une méthode DeleteMatch qui prend l'ID du match et le supprime.
                daoMqtt.Disconnect();
                await daoMatch.DeleteMatch(CreatedMatch.IdFight);
            }
        }
    }
}

