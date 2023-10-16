using System;
using System.Collections.Generic;
using System.Text;

namespace SteelStrickers.Models
{
    public class Combat
    {
        public int ID_Combat { get; set; }
        public int ID_Robot1 { get; set; }
        public int ID_Robot2 { get; set; }
        public int Points_Robot1 { get; set; }
        public int Points_Robot2 { get; set; }
        public string Temps_Combat { get; set; }
        public int ID_Type_Combat { get; set; }
        public int ID_Arbitre { get; set; }
        public int? ID_Vainqueur { get; set; }
        public string Nom_Type { get; set; }
        public string Topic { get; set; }
    }
}
