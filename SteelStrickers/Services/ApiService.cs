using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace SteelStrickers.Services
{
    public class ApiService
    {
        private const string BaseUrl = "http://yourapiurl.com/api/";

        private readonly HttpClient _client = new HttpClient();

        public async Task<T> GetAsync<T>(string endpoint)
        {
            var response = await _client.GetAsync(BaseUrl + endpoint);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<T>(content);
            }
            // Handle errors as you see fit
            return default;
        }

        public async Task<T> GetWithConditionAsync<T>(string endpoint, Dictionary<string, string> parameters)
        {
            var queryString = new FormUrlEncodedContent(parameters).ReadAsStringAsync().Result; // Convert parameters to URL query string
            var response = await _client.GetAsync($"{BaseUrl}{endpoint}?{queryString}");
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<T>(content);
            }
            // Handle errors as you see fit
            return default;
        }

        public async Task<bool> PostAsync<T>(string endpoint, T data)
        {
            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");
            var response = await _client.PostAsync(BaseUrl + endpoint, content);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> PutAsync<T>(string endpoint, T data)
        {
            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");
            var response = await _client.PutAsync(BaseUrl + endpoint, content);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> DeleteAsync(string endpoint, int id)
        {
            var response = await _client.DeleteAsync($"{BaseUrl}{endpoint}/{id}");
            return response.IsSuccessStatusCode;
        }

    }
}
