using SteelStrickers.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace SteelStrickers.Services
{
    public interface IDAO_User
    {
        Task<DetailedUser> GetUser();
        Task UpdateApiPropertyAsync(DetailedUser DetailedUser);
    }
}
