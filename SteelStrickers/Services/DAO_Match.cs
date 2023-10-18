using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using SteelStrickers.Models;
using Xamarin.Essentials;

namespace SteelStrickers.Services
{
    public class DAO_Match : IDAO_Match
    {
        private readonly ApiService _apiService;
        private int userId;

        public DAO_Match()
        {
            _apiService = ApiService.Instance;
            userId = Preferences.Get("IdUser", -1);
        }

        public async Task<GameTopic> GetTopicForMatch(int matchId)
        {
            return await _apiService.GetAsync<GameTopic>($"match/{matchId}/topic");
        }

        public async Task<GameTopic> GetAvailableTopic()
        {
            return await _apiService.GetAsync<GameTopic>("matchs/topic/available");
        }

        public async Task<List<Match>> GetMatchByUserId(int userId)
        {
            return await _apiService.GetAsync<List<Match>>($"matchs/user/{userId}");
        }

        public async Task<bool> CreateMatch(Match match)
        {
            return await _apiService.PostAsync("match", match);
        }

        public async Task<bool> EditMatch(Match match)
        {
            return await _apiService.PutAsync($"match/{match.IdFight}", match);
        }


    }
}
