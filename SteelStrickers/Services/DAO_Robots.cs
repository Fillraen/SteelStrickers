using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Newtonsoft.Json;
using SteelStrickers.Models;
using Xamarin.Forms;

namespace SteelStrickers.Services
{
    public class DAO_Robots : IDAO_Robots
    {
        private readonly ApiService _apiService;

        public DAO_Robots()
        {
            _apiService = new ApiService();
        }

        public async Task<string> GetTopicForMatch(string matchId)
        {
            var parameters = new Dictionary<string, string>
            {
                {"MatchId", matchId}
            };

            return await _apiService.GetWithConditionAsync<string>("GetTopicForMatch", parameters);
        }

        public async Task<string> GetAvailableTopic()
        {
            return await _apiService.GetAsync<string>("GetAvailableTopic");
        }

        public async Task<bool> CreateMatchInDB(Combat match)
        {
            return await _apiService.PostAsync("CreateMatchInDB", match);
        }
    }
}