﻿using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Text;

namespace SteelStrickers.Services
{
    public interface IBluetoothService
    {
        ObservableCollection<Robot> GetAvailableDevices(); // Liste des robots disponibles.
        bool Connect(Robot robot); // Connecter à un robot.
        void SendData(string data); // Envoyer des données à un robot.
        event EventHandler<string> DataReceived; // Événement pour les données reçues.

    }

    public interface IBluetoothDiscoveryService
    {
        void StartDiscovery();
        bool PairDevice(Robot robot);
    }
}
