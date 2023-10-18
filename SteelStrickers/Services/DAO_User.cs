using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using SteelStrickers.Models;
using SteelStrickers.ViewModels;
using Xamarin.Essentials;



namespace SteelStrickers.Services
{
    public class DAO_User : IDAO_User
    {
        private readonly ApiService _apiService;
        private int userId;
        public DAO_User()
        {
            _apiService = new ApiService();
            userId = Preferences.Get("IdUser", -1);
        }

        // Les méthodes de DAO_Users

        public async Task<ObservableCollection<User>> GetAllUsersAsync()
        {
            return await _apiService.GetAsync<ObservableCollection<User>>("users");
        }

        public async Task<User> GetUserByIdAsync(int id)
        {
            return await _apiService.GetAsync<User>($"users/{id}");
        }

        public async Task<User> GetUserByEmailAsync(string email)
        {
            var headers = new Dictionary<string, string> { { "Email", email } };
            var user = await _apiService.GetWithHeadersAsync<User>("/users/by-email", headers);
            if (user != null)
            {
                return (user);
            }
            else
            {
                return null;
            }
        }

        public async Task<string> AddUserAsync(User user)
        {
            bool isSuccess = await _apiService.PostAsync("users", user);
            return isSuccess ? null : "Erreur lors de l'ajout de l'utilisateur";
        }

        public async Task<string> UpdateUserAsync(User user)
        {
            bool isSuccess = await _apiService.PutAsync($"users/{user.IdUser}", user);
            return isSuccess ? null : "Erreur lors de la mise à jour de l'utilisateur";
        }

        public async Task<string> DeleteUserAsync(int id)
        {
            bool isSuccess = await _apiService.DeleteAsync("users", id.ToString());
            return isSuccess ? null : "Erreur lors de la suppression de l'utilisateur";
        }

    }
}
