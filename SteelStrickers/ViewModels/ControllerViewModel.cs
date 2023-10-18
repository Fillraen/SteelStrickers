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

        public event PropertyChangedEventHandler PropertyChanged;

        public ICommand Action1Command { get; }
        public ICommand Action2Command { get; }

        public ICommand DisconnectCommand { get; }
        public Robot CurrentRobot { get; set; }

        private JoystickControl Joystick;



        private Timer _sendDataTimer;
        private bool _shouldSendData = false;

        public ControllerViewModel()
        {
            Joystick = new JoystickControl();
            
            //CurrentRobot = robot;

            // S'abonner à l'événement DataReceived
            Action1Command = new Command(SendAction1);
            Action2Command = new Command(SendAction2);
            DisconnectCommand = new Command(Disconnect);


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
        }

        private void SendAction1()
        {
            // Envoyez le message prédéterminé pour l'action 1
            bluetoothService.SendData("A1;");
        }

        private void SendAction2()
        {
            // Envoyez le message prédéterminé pour l'action 2
            bluetoothService.SendData("A2;");
        }

        private void OnDataReceived(object sender, string data)
        {
            // Traitez les données reçues ici. Par exemple, mettez à jour l'interface utilisateur
            // ou loggez les données pour un débogage ultérieur.
        }

        private void Disconnect()
        {
            bluetoothService.SendData("Logout;");
            System.Threading.Thread.Sleep(500);
            bluetoothService.Disconnect();
        }
        
        private void SendPositionData(){
            // Envoyez les données de position au robot
            string formattedDistance = Distance.ToString("F2");
            string formattedAngle = Angle.ToString("F2");

            // Envoyez les données de position au robot
            bluetoothService.SendData($"X{Xposition};Y{Yposition};Distance:{formattedDistance};Angle:{formattedAngle}");
        }

        protected virtual void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
            if (propertyName == nameof(Xposition) || propertyName == nameof(Yposition)
                                                  || propertyName == nameof(Distance) || propertyName == nameof(Angle))
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
