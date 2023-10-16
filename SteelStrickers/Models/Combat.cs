using System;
using System.Collections.Generic;
using System.Text;

namespace SteelStrickers.Models
{
    public class Combat
    {
        public int IdCombat { get; set; }
        public int? IdRobot1 { get; set; }
        public int? IdRobot2 { get; set; }
        public int Points_Robot1 { get; set; }
        public int Points_Robot2 { get; set; }
        public string FightingTime{ get; set; }
        public int? IdArbitre { get; set; }
        public int? IdVainqueur { get; set; }
        public string Topic { get; set; }
    }
}
