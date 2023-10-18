using System;
using System.Collections.Generic;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using SteelStrickers.Models;
using Match = SteelStrickers.Models.Match;

namespace SteelStrickers.Services
{
    public interface IDAO_Robots
    {
        List<Robot> GetAllRobots();


        Task<List<Robot>> GetAllRobotsByUserId();
        Task<Robot> GetRobotById(int id);
        Task<bool> EditRobot(Robot robot);
        Task<bool> DeleteRobot(int id);
        Task<bool> AddRobot(Robot robot);
    }
}
