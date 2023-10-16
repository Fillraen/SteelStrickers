using System;
using System.Collections.Generic;
using System.Text;
using static SteelStrickers.ViewModels.HomeViewModel;

namespace SteelStrickers.Models
{
    public class DetailedUser
    {
        public int IdUser{ get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string SignInDate { get; set; }
        public int Elo { get; set; }
        public string Role { get; set; }
        public Statistique Statistiques { get; set; }
        public List<Robot> Robots { get; set; }
        public List<Combat> Combats { get; set; }
    }
}
