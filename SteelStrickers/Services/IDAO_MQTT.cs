using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SteelStrickers.Services
{
    public interface IDAO_MQTT 
    {
        Task Connect();
        void Disconnect();
        void Subscribe(params string[] topics);
        void UnSubscribe(List<string> topics);
        void Publish(string topic, string message);
    }
}
