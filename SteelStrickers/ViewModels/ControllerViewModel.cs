using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace SteelStrickers.ViewModels
{

    public class ControllerViewModel : BaseViewModel, INotifyPropertyChanged
    {

        private int _joystickXposition;
        public int JoystickXposition
        {
            get { return _joystickXposition; }
            set { _joystickXposition = value; NotifyPropertyChanged(nameof(JoystickXposition)); }
        }

        private int _joystickYposition;
        public int JoystickYposition
        {
            get { return _joystickYposition; }
            set { _joystickYposition = value; NotifyPropertyChanged(nameof(JoystickYposition)); }
        }

        private int _joystickDistance;
        public int JoystickDistance
        {
            get { return _joystickDistance; }
            set { _joystickDistance = value; NotifyPropertyChanged(nameof(JoystickDistance)); }
        }

        private int _joystickAngle;

        public int JoystickAngle
        {
            get { return _joystickAngle; }
            set { _joystickAngle = value; NotifyPropertyChanged(nameof(JoystickAngle)); }
        }



        public Robot CurrentRobot { get; set; }
        public ControllerViewModel()
        {
            //CurrentRobot = robot;

            // S'abonner à l'événement DataReceived
            bluetoothService.DataReceived += OnDataReceived;
        }

        public event PropertyChangedEventHandler PropertyChanged;

        void NotifyPropertyChanged(string name)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(name));
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
