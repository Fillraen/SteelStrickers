using System;
using System.Collections.Generic;
using System.Text;

namespace SteelStrickers.Models
{
    public class Robot
    {
        public int IdRobot { get; set; }
        public string Name { get; set; }
        public int IdUser { get; set; }
        public string BluetoothName { get; set; }
        public string MacAddress { get; set; }
        public string Status { get; set; }
        public string Character { get; set; }
    }
}
