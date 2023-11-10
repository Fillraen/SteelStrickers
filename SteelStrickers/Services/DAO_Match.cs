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
            return await _apiService.GetAsync<GameTopic>($"match/topic/{matchId}");
        }
        public async Task<GameTopic> GetAvailableTopic()
        {
            return await _apiService.GetAsync<GameTopic>("match/available-gametopics");
        }

        public async Task<Match> GetMatchById(int matchId)
        {
            return await _apiService.GetAsync<Match>($"match/{matchId}");
        }
        public async Task<List<Match>> GetMatchByUserId(int userId)
        {
            var m = await _apiService.GetAsync<List<Match>>($"match/user/{userId}");
            return m;
        }
        public async Task<List<Match>> GetMatchNeededOpponent()
        {
            var m = await _apiService.GetAsync<List<Match>>($"match/getMatchLookingForOpponent");
            return m;
        }
        public async Task<bool> CreateMatch(Match match)
        {
            return await _apiService.PostAsync("match", match);
        }
        public async Task<bool> EditMatch(Match match)
        {
            return await _apiService.PutAsync($"match/{match.IdFight}", match);
        }
        public async Task<bool> DeleteMatch(int matchId)
        {
            return await _apiService.DeleteAsync("match", matchId.ToString());
        }


    }
}

