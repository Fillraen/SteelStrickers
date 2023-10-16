using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using SteelStrickers.Models;

namespace SteelStrickers.Services
{
    public interface IDAO_Robots
    {
        Task<string> GetTopicForMatch(string matchId);
        Task<string> GetAvailableTopic();
        Task<bool> CreateMatchInDB(Combat match);
    }
}
