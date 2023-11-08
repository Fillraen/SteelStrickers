using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Timers;
using System.Windows.Input;
using SteelStrickers.Controls;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class ControllerViewModel : BaseViewModel
    {
        private int _xposition;
        public int Xposition
        {
            get { return _xposition; }
            set
            {
                _xposition = value;
                OnPropertyChanged(nameof(Xposition));
            }
        }

        private int _yposition;
        public int Yposition
        {
            get { return _yposition; }
            set
            {
                _yposition = value;
                OnPropertyChanged(nameof(Yposition));
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

        private const int TestModeVictoryPoints = 99;
        private const int CombatModeVictoryPoints = 10;
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

        public event PropertyChangedEventHandler PropertyChanged;
        public ICommand DisconnectCommand { get; }
        public Robot CurrentRobot { get; set; }
        public ICommand AbilityCommand { get; }
        private JoystickControl Joystick;
        private Timer _sendDataTimer;
        private bool _shouldSendData = false;

        public ControllerViewModel()
        {
            Joystick = new JoystickControl();
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

        private bool _isCombatMode = false;
        private Timer _matchTimer;

        public ControllerViewModel(Match createdMatch)
        {
            Joystick = new JoystickControl();
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

            // Match mode initialization
            VictoryPoints = CombatModeVictoryPoints; // Points for victory in match mode
            RemainingTime = 180; // 3 minutes for match mode
            RobotPoints = 0; // Points initiaux du robot en mode test
            OpponentPoints = 0; // Points initiaux de l'adversaire en mode test
            // Start the match timer
            Device.StartTimer(TimeSpan.FromSeconds(1), () =>
            {
                if (RemainingTime > 0)
                {
                    RemainingTime--;
                    return true; // Return true to keep the timer reoccurring
                }
                else
                {
                    // Handle match end
                    return false; // Return false to stop the timer
                }
            });
        }


        private void ExecuteAbilityCommand(string abilityName)
        {
            switch (abilityName)
            {
                case "MainAbility":
                    // Handle main ability action
                    bluetoothService.SendData("A1;");
                    break;
                case "Ability1":
                    // Handle ability 1 action
                    bluetoothService.SendData("A2;");
                    break;
                case "Ability2":
                    // Handle ability 2 action
                    bluetoothService.SendData("A3;");
                    break;
                case "Ability3":
                    // Handle ability 3 action
                    bluetoothService.SendData("A4;");
                    break;
            }
        }


        private void OnDataReceived(object sender, string data)
        {
            if (data == "hit")
            {
                OpponentPoints++; // Incrémente les points de l'adversaire
                CheckVictoryCondition();
            }
        }
        private void CheckVictoryCondition()
        {
            if (OpponentPoints >= _victoryPoints)
            {
                // Gérer la condition de victoire (par exemple, fin de partie)
            }
        }

        private void Disconnect()
        {
            bluetoothService.SendData("Logout;");
            System.Threading.Thread.Sleep(500);
            bluetoothService.Disconnect();
        }
        
        private void SendPositionData(){
            // Envoyez les données de position au robot
            bluetoothService.SendData($"X{Xposition};Y{Yposition};.");
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            if (propertyName == nameof(Xposition) || propertyName == nameof(Yposition) || propertyName == nameof(Distance) || propertyName == nameof(Angle))
            {
                _shouldSendData = true;
            }
        }

        // N'oubliez pas de vous désabonner de l'événement lors de la destruction du ViewModel pour éviter les fuites de mémoire
        ~ControllerViewModel()
        {
            bluetoothService.DataReceived -= OnDataReceived;
        }
    }
}
