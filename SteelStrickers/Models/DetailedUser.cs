using System;
using System.Collections.Generic;
using System.Text;
using static SteelStrickers.ViewModels.HomeViewModel;

namespace SteelStrickers.Models
{
    public class DetailedUser
    {
        public int ID_Utilisateur { get; set; }
        public string Nom_Utilisateur { get; set; }
        public string Email { get; set; }
        public string Date_Inscription { get; set; }
        public int MMR { get; set; }
        public string Role { get; set; }
        public Statistique Statistiques { get; set; }
        public List<Robot> Robots { get; set; }
        public List<Combat> Combats { get; set; }
    }
}
