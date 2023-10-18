using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{

    public class ControllerViewModel : BaseViewModel
    {
      

        public ICommand Action1Command { get; }
        public ICommand Action2Command { get; }

        public ICommand DisconnectCommand { get; }
        public Robot CurrentRobot { get; set; }
        public ControllerViewModel()
        {
            //CurrentRobot = robot;

            // S'abonner à l'événement DataReceived
            Action1Command = new Command(SendAction1);
            Action2Command = new Command(SendAction2);
            DisconnectCommand = new Command(Disconnect);


            bluetoothService.DataReceived += OnDataReceived;
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
            System.Threading.Thread.Sleep(1000);
            bluetoothService.Disconnect();
        }


        // N'oubliez pas de vous désabonner de l'événement lors de la destruction du ViewModel pour éviter les fuites de mémoire
        ~ControllerViewModel()
        {
            bluetoothService.DataReceived -= OnDataReceived;
        }
    }
}
