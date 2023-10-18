using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using Newtonsoft.Json;
using SteelStrickers.Models;
using Xamarin.Essentials;
using Xamarin.Forms;
using Match = SteelStrickers.Models.Match;

namespace SteelStrickers.Services
{
    public class DAO_Robots : IDAO_Robots
    {
        private readonly ApiService _apiService;
        private int userId;

        public DAO_Robots()
        {
            _apiService = new ApiService();
            userId = Preferences.Get("IdUser", -1);
        }


        public async Task<List<Robot>> GetAllRobotsByUserId()
        {
            return await _apiService.GetAsync<List<Robot>>($"robots/user/{userId}");
        }

        public async Task<Robot> GetRobotById(int id)
        {
            return await _apiService.GetAsync<Robot>($"robots/{id}");
        }

        public async Task<bool> EditRobot(Robot robot)
        {
            // Supposons que vous ayez une méthode PutAsync dans ApiService
            return await _apiService.PutAsync($"robots/{robot.IdRobot}", robot);
        }

        public async Task<bool> DeleteRobot(int id)
        {
            return await _apiService.DeleteAsync($"robots", id.ToString());
        }

        public async Task<bool> AddRobot(Robot robot)
        {
            // Supposons que vous ayez une méthode PostAsync dans ApiService
            return await _apiService.PostAsync("robots", robot);
        }
    }
}