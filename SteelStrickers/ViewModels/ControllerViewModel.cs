using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;
using System.Windows.Input;
using SteelStrickers.Controls;
using Xamarin.Forms;
using SteelStrickers.Services;
using SteelStrickers.Views;
using Xamarin.Essentials;

namespace SteelStrickers.ViewModels
{
    public class ControllerViewModel : BaseViewModel
    {
        #region properties
        private int _xposition;
        public int Xposition
        {
            get => _xposition;
            set
            {
                // Vérifiez si la nouvelle valeur est différente
                if (_xposition != value)
                {
                    _xposition = value;
                    OnPropertyChanged();
                    _shouldSendData = true;
                }
            }
        }

        private int _yposition;
        public int Yposition
        {
            get => _yposition;
            set
            {
                // Vérifiez si la nouvelle valeur est différente
                if (_yposition != value)
                {
                    _yposition = value;
                    OnPropertyChanged();
                    _shouldSendData = true;
                }
            }
        }

        private double _distance;
        public double Distance
        {
            get { return _distance; }
            set
            {
                _distance = value;
                OnPropertyChanged(nameof(Distance));
            }
        }

        private double _angle;
        public double Angle
        {
            get { return _angle; }
            set
            {
                _angle = value;
                OnPropertyChanged(nameof(Angle));
            }
        }

        private int _robotPoints = 99;
        public int RobotPoints
        {
            get { return _robotPoints; }
            set
            {
                _robotPoints = value;
                OnPropertyChanged(nameof(RobotPoints));
            }
        }

        private int _opponentPoints;
        public int OpponentPoints
        {
            get { return _opponentPoints; }
            set
            {
                _opponentPoints = value;
                OnPropertyChanged(nameof(OpponentPoints));
            }
        }

        private int _victoryPoints;
        public int VictoryPoints
        {
            get { return _victoryPoints; }
            set
            {
                _victoryPoints = value;
                OnPropertyChanged(nameof(VictoryPoints));
            }
        }

        private int _remainingTime; // Remaining time in seconds
        public int RemainingTime
        {
            get => _remainingTime;
            set
            {
                _remainingTime = value;
                OnPropertyChanged(nameof(RemainingTime));
            }
        }


        #endregion

        

        public ICommand DisconnectCommand { get; }
        public Robot CurrentRobot { get; set; }
        public ICommand AbilityCommand { get; }

        private const int TestModeVictoryPoints = 99;
        private const int CombatModeVictoryPoints = 10;
        private (int X, int Y) _lastSentPosition;
        private Timer _sendDataTimer;
        private bool _shouldSendData = false;
        private GameTopic selectedTopic;
        private bool _hitSentByLocalPlayer = false;
        private int userId;
        private Match selectedMatch;
        public ControllerViewModel()
        {
            DisconnectCommand = new Command(Disconnect);
            AbilityCommand = new Command<string>(ExecuteAbilityCommand);

            bluetoothService.DataReceived += OnDataReceived;

            _sendDataTimer = new Timer(1000); // Envoie des données toutes les 250ms
            _sendDataTimer.Elapsed += (sender, e) =>
            {
                if (_shouldSendData)
                {
                    SendPositionData();
                    _shouldSendData = false;
                }
            };
            _sendDataTimer.Start();

            // Mode Test initialisation
            VictoryPoints = TestModeVictoryPoints;
            RobotPoints = 99; // Points initiaux du robot en mode test
            OpponentPoints = 0; // Points initiaux de l'adversaire en mode test
            RemainingTime = 0; // No timer for test mode
        }

        public ControllerViewModel(Match createdMatch)
        {
            selectedMatch = new Match();
            selectedTopic = new GameTopic();
            _hitSentByLocalPlayer = false;
            selectedMatch = createdMatch;
            selectedTopic = Task.Run(async () => await daoMatch.GetTopicForMatch(createdMatch.IdFight)).Result;
            userId = Preferences.Get("IdUser", -1);
            DisconnectCommand = new Command(Disconnect);
            AbilityCommand = new Command<string>(ExecuteAbilityCommand);

            bluetoothService.DataReceived += OnDataReceived;

            // Match mode initialization
            VictoryPoints = CombatModeVictoryPoints; // Points for victory in match mode
            RemainingTime = 180; // 3 minutes for match mode
            RobotPoints = 0; // Points initiaux du robot en mode 
            OpponentPoints = 0; // Points initiaux de l'adversaire en mode 


            _sendDataTimer = new Timer(1000); // Envoie des données toutes les 250ms
            _sendDataTimer.Elapsed += (sender, e) =>
            {
                if (_shouldSendData)
                {
                    SendPositionData();
                    _shouldSendData = false;
                }
            };
            _sendDataTimer.Start();

            Device.StartTimer(TimeSpan.FromSeconds(1), () =>
            {
                if (RemainingTime > 0 && !MatchEnded())
                {
                    RemainingTime--; // Decrement the timer
                }
                else if (RemainingTime <= 0)
                {
                    if (OpponentPoints >= _victoryPoints || RobotPoints >= _victoryPoints)
                    {
                       
                    }
                    else
                    {
                        EndMatch(); // Handle the match end on the UI thread
                    }
                    
                }

                return RemainingTime > 0 && !MatchEnded(); // Continue timing if time remains and match not ended
            });

            MessagingCenter.Subscribe<DAO_MQTT, string>(this, "MQTTMessageReceived", (sender, mqttMessage) =>
            {
                // Appeler une méthode pour gérer le message reçu.
                HandleReceivedMessage(mqttMessage);
            });
        }
        #region communication mqtt
        private void HandleReceivedMessage(string message)
        {
            if (message.StartsWith("playerHit:"))
            {
                int senderId = int.Parse(message.Split(':')[1]);
                if (senderId != userId && !MatchEnded())
                {
                    OpponentPoints++; // Un autre joueur a touché
                    CheckVictoryCondition();
                }
            }
        }
        #endregion
        #region communication bluetooth

        // receive bluettoth data
        private void OnDataReceived(object sender, string data)
        {
            if (data.Contains("hit") && !MatchEnded())
            {
                HandleLocalPlayerHit();
            }
        }

        private void HandleLocalPlayerHit()
        {
            if (!MatchEnded())
            {
                _hitSentByLocalPlayer = true;
                RobotPoints++; // Supposons que le joueur local a touché l'adversaire
                CheckVictoryCondition();
                // Publier le coup avec l'ID du joueur local
                daoMqtt.Publish(selectedTopic.Topic, $"playerHit:{userId}");
                ResetLocalPlayerHitFlag();
            }
        }
        // Réinitialiser le drapeau après un délai pour permettre la réception du message MQTT
        private async void ResetLocalPlayerHitFlag()
        {
            await Task.Delay(500); // Un délai pour éviter les doubles comptages
            _hitSentByLocalPlayer = false;
        }


        private bool MatchEnded()
        {
            return OpponentPoints >= _victoryPoints || RobotPoints >= _victoryPoints || RemainingTime <= 0;
        }

        //send position data
        private void SendPositionData()
        {
            // Envoyez les données de position au robot
            if (_shouldSendData)
            {

                bluetoothService.SendData($"X{Xposition};Y{Yposition};.");
                _shouldSendData = false;
            }
        }

        private void ExecuteAbilityCommand(string abilityName)
        {
            switch (abilityName)
            {
                case "MainAbility":
                    // Handle main ability action
                    bluetoothService.SendData("A1;.");
                    break;
                case "Ability1":
                    // Handle ability 1 action
                    bluetoothService.SendData("A2;.");
                    break;
                case "Ability2":
                    // Handle ability 2 action
                    bluetoothService.SendData("A3;.");
                    break;
                case "Ability3":
                    // Handle ability 3 action
                    bluetoothService.SendData("A4;.");
                    break;
            }
        }
        #endregion
        private void CheckVictoryCondition()
        {
            if (MatchEnded())
            {
                EndMatch();
            }
        }

        private void EndMatch()
        {
            _sendDataTimer.Stop();
            _sendDataTimer.Dispose();

            UpdateMatchResult();
        }
        private async void UpdateMatchResult()
        {
            selectedMatch.Points_Robot1 = RobotPoints;
            selectedMatch.Points_Robot2 = OpponentPoints;
            selectedMatch.IdVainqueur = RobotPoints > OpponentPoints ? userId : selectedMatch.opponent_id;
            selectedMatch.Status = "Terminé";
            selectedMatch.FightingTime = TimeSpan.FromSeconds(180 - RemainingTime);

            if (selectedMatch.IdVainqueur == userId)
            {
                await daoMatch.EditMatch(selectedMatch);
                await UpdateEloOfPlayers(RobotPoints, OpponentPoints);
            }

            NavigateToResultPage();
        }

        private async Task UpdateEloOfPlayers(int localPlayerScore, int opponentScore)
        {
            int eloChange = CalculateEloChange(localPlayerScore, opponentScore);
            // Mise à jour de l'ELO des deux joueurs
            var localUser = await daoUser.GetUserByIdAsync(userId);
            var opponentUser = await daoUser.GetUserByIdAsync(selectedMatch.opponent_id.GetValueOrDefault());

            localUser.Elo += eloChange;
            opponentUser.Elo -= eloChange;

            await daoUser.UpdateUserAsync(localUser);
            await daoUser.UpdateUserAsync(opponentUser);
        }

        private void NavigateToResultPage()
        {
            var result = new MatchResult
            {
                LocalPlayerScore = RobotPoints,
                OpponentScore = OpponentPoints,
                Result = RobotPoints > OpponentPoints ? "Victoire" : "Défaite",
                EloChange = CalculateEloChange(RobotPoints, OpponentPoints)
            };

            Device.BeginInvokeOnMainThread(async () =>
            {
                await Application.Current.MainPage.Navigation.PushAsync(new ResultMatchPage(result));
            });
        }

        private int CalculateEloChange(int localPlayerScore, int opponentScore)
        {
            // Implémentez la logique de calcul d'ELO ici
            return Math.Abs(localPlayerScore - opponentScore);
        }

        private void Disconnect()
        {
            bluetoothService.SendData("Logout;");
            System.Threading.Thread.Sleep(500); // Considérez d'utiliser await Task.Delay(500); pour une application asynchrone
            bluetoothService.Disconnect();
        }

        // N'oubliez pas de vous désabonner de l'événement lors de la destruction du ViewModel pour éviter les fuites de mémoire
        ~ControllerViewModel()
        {
            MessagingCenter.Unsubscribe<DAO_MQTT, string>(this, "MQTTMessageReceived");
            bluetoothService.DataReceived -= OnDataReceived;
            _sendDataTimer?.Dispose();
        }
    }
}
