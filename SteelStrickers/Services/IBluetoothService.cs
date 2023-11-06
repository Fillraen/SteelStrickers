using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;
using System.Threading.Tasks;

namespace SteelStrickers.Services
{
    public interface IBluetoothService
    { 
        ObservableCollection<Robot> GetAvailableDevices(); // Liste des robots disponibles.
        Task<bool> Connect(Robot robot); // Connecter à un robot.
        Task SendData(string data); // Envoyer des données à un robot.
        Task Disconnect(); // Déconnecter du robot.
        event EventHandler<string> DataReceived; // Événement pour les données reçues.
        bool IsConnected();
    }

    public interface IBluetoothDiscoveryService
    {
        void StartDiscovery();
        bool PairDevice(Robot robot);
    }
}
