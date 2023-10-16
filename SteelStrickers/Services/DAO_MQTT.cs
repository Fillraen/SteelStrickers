using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using MQTTnet;
using MQTTnet.Client;
using MQTTnet.Packets;
using MQTTnet.Protocol;

namespace SteelStrickers.Services
{
    public class DAO_MQTT
    {

        private IMqttClient _client;

        // Mettez à jour les informations de connexion
        private const string BrokerAddress = "172.31.43.122";
        private const int BrokerPort = 1883;
        private const string Username = "serreconnect";
        private const string Password = "SC20232024";
        string CLientID = Guid.NewGuid().ToString();

        public event EventHandler<MqttApplicationMessageReceivedEventArgs> MessageReceived;

        public DAO_MQTT (){
            _client = new MqttFactory().CreateMqttClient();
            _client.ApplicationMessageReceivedAsync += OnMessageReceived;
        }

        private Task OnMessageReceived(MqttApplicationMessageReceivedEventArgs e)
        {
            MessageReceived?.Invoke(this, e);
            return Task.CompletedTask;
        }

        public async Task Connect()
        {
            try
            {
                if (!_client.IsConnected)
                {
                    var optionsBuilder = new MqttClientOptionsBuilder()
                        .WithClientId(CLientID)
                        .WithTcpServer(BrokerAddress, BrokerPort)
                        .WithCredentials(Username, Password)
                        .WithCleanSession()
                        .Build();

                    await _client.ConnectAsync(optionsBuilder);
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Erreur de connexion MQTT : {ex.Message}");
            }
        }

        public async void Disconnect()
        {
            if (_client.IsConnected)
            {
                await _client.DisconnectAsync();
            }
        }

        public async void Subscribe(params string[] topics)
        {
            if (_client.IsConnected)
            {
                var topicFilters = new List<MqttTopicFilter>();

                foreach (var topic in topics)
                {
                    var filter = new MqttTopicFilterBuilder().WithTopic(topic).Build();
                    topicFilters.Add(filter);
                }

                var subscribeOptions = new MqttClientSubscribeOptions
                {
                    TopicFilters = topicFilters
                };

                await _client.SubscribeAsync(subscribeOptions);
            }
            else
            {
                Console.WriteLine("MQTT client is not connected.");
            }
        }

        public async void Publish(string topic, string message)
        {
            if (_client.IsConnected)
            {
                var mqttMessage = new MqttApplicationMessageBuilder()
                    .WithTopic(topic)
                    .WithPayload(Encoding.UTF8.GetBytes(message))
                    .WithQualityOfServiceLevel(MqttQualityOfServiceLevel.ExactlyOnce)
                    .Build();

                await _client.PublishAsync(mqttMessage);
            }
        }

    }
}
