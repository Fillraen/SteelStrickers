using System;
using System.Collections.Generic;
using System.Text;

namespace SteelStrickers.Models
{
    public class Robot
    {
        public int ID_Robot { get; set; }
        public string Nom_Robot { get; set; }
        public int ID_Utilisateur { get; set; }
        public string Adresse_MAC { get; set; }
        public int ID_Status { get; set; }
        public string Nom_Status { get; set; }
        public string Bluetooth_Name { get; set; }
    }
}
