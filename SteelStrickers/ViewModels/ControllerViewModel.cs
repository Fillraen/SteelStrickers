using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{

    public class ControllerViewModel : BaseViewModel, INotifyPropertyChanged
    {

        private int _joystickXposition;
        public int JoystickXposition
        {
            get { return _joystickXposition; }
            set
            {
                if (SetProperty(ref _joystickXposition, value))
                {
                    SendPositionData();
                }
            }
        }

        private int _joystickYposition;
        public int JoystickYposition
        {
            get { return _joystickYposition; }
            set
            {
                if (SetProperty(ref _joystickYposition, value))
                {
                    SendPositionData();
                }
            }
        }

        private int _joystickDistance;
        public int JoystickDistance
        {
            get { return _joystickDistance; }
            set
            {
                if (SetProperty(ref _joystickDistance, value))
                {
                    SendPositionData();
                }
            }
        }

        private int _joystickAngle;
        public int JoystickAngle
        {
            get { return _joystickAngle; }
            set
            {
                if (SetProperty(ref _joystickAngle, value))
                {
                    SendPositionData();
                }
            }
        }

        

        public ICommand Action1Command { get; }
        public ICommand Action2Command { get; }


        public Robot CurrentRobot { get; set; }
        public ControllerViewModel()
        {
            //CurrentRobot = robot;

            // S'abonner à l'événement DataReceived
            Action1Command = new Command(SendAction1);
            Action2Command = new Command(SendAction2);



            bluetoothService.DataReceived += OnDataReceived;
        }
        private void SendPositionData()
        {
            // Créez une chaîne de données avec les valeurs X, Y, angle et distance
            string data = $"X={JoystickXposition}, Y={JoystickYposition}, Angle={JoystickAngle}, Distance={JoystickDistance}";
            bluetoothService.SendData(data);
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

        public void SendCommand(string command)
        {
            bluetoothService.SendData(command);
        }

        // N'oubliez pas de vous désabonner de l'événement lors de la destruction du ViewModel pour éviter les fuites de mémoire
        ~ControllerViewModel()
        {
            bluetoothService.DataReceived -= OnDataReceived;
        }


    }
}
