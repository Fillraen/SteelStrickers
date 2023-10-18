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
        private const string BaseUrl = "https://almeida.alwaysdata.net/";

        private readonly HttpClient _client = new HttpClient();

        public async Task<T> GetAsync<T>(string endpoint)
        {
            Uri uri = new Uri(BaseUrl + endpoint);
            var response = await _client.GetAsync(uri).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<T>(content);
            }
            // Gérer les erreurs comme vous le souhaitez
            return default;
        }

        public async Task<T> GetWithConditionAsync<T>(string endpoint, Dictionary<string, string> parameters)
        {
            var queryString = new FormUrlEncodedContent(parameters).ReadAsStringAsync().Result;
            Uri uri = new Uri($"{BaseUrl}{endpoint}?{queryString}");
            var response = await _client.GetAsync(uri).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<T>(content);
            }
            return default;
        }

        public async Task<T> GetWithHeadersAsync<T>(string endpoint, Dictionary<string, string> headers)
        {
            Uri uri = new Uri(BaseUrl + endpoint);
            var request = new HttpRequestMessage(HttpMethod.Get, uri);

            foreach (var header in headers)
            {
                request.Headers.Add(header.Key, header.Value);
            }

            var response = await _client.SendAsync(request).ConfigureAwait(false);
            if (response.IsSuccessStatusCode)
            {
                var content = await response.Content.ReadAsStringAsync();
                return JsonConvert.DeserializeObject<T>(content);
            }
            return default;
        }

        public async Task<bool> PostAsync<T>(string endpoint, T data)
        {
            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");
            var response = await _client.PostAsync(BaseUrl + endpoint, content).ConfigureAwait(false);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> PutAsync<T>(string endpoint, T data)
        {
            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");
            var response = await _client.PutAsync(BaseUrl + endpoint, content).ConfigureAwait(false);
            return response.IsSuccessStatusCode;
        }

        public async Task<bool> DeleteAsync(string endpoint, string id)
        {
            Uri uri = new Uri($"{BaseUrl}{endpoint}/{id}");
            var response = await _client.DeleteAsync(uri).ConfigureAwait(false);
            return response.IsSuccessStatusCode;
        }

    }
}
