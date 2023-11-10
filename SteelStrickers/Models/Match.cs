using System;
using System.Collections.Generic;
using System.Text;

namespace SteelStrickers.Models
{
    public class Match
    {
        public int IdFight { get; set; }
        public string Name { get; set; }
        public int creator_id { get; set; }
        public int? IdRobot1 { get; set; }
        public int? opponent_id { get; set; }
        public int? IdRobot2 { get; set; }
        public int? Points_Robot1 { get; set; }
        public int? Points_Robot2 { get; set; }
        public TimeSpan? FightingTime { get; set; }
        public int Topic { get; set; }
        public string Status{ get; set; }
        public int? IdArbitre { get; set; }
        public int? IdVainqueur { get; set; }



        public string CreatorName {get; set; }
        
    }
    public class MatchResult
    {
        public int LocalPlayerScore { get; set; }
        public int OpponentScore { get; set; }
        public string Result { get; set; }
        public int EloChange { get; set; }
    }
}
