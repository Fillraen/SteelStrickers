using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SteelStrickers.Services
{
    public interface IDAO_Match
    {
        Task<GameTopic> GetTopicForMatch(int matchId);
        Task<GameTopic> GetAvailableTopic();
        Task<List<Match>> GetMatchByUserId(int userId);
        Task<bool> CreateMatch(Match match);
        Task<bool> EditMatch(Match match);
        Task<bool> DeleteMatch(int matchId);
    }
}
