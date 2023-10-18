using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Essentials;

namespace SteelStrickers.Services
{
    public class Auth : AesEncryption
    {
        private DAO_User _daoUser;

        public Auth()
        {
            _daoUser = new DAO_User();
        }

        // Méthode d'authentification asynchrone
        public async Task<bool> AuthenticateAsync(string email, string plainTextPassword)
        {
            // Récupère l'utilisateur associé à l'adresse e-mail spécifiée
            var user = await _daoUser.GetUserByEmailAsync(email);

            if (user == null)
            {
                // L'utilisateur n'existe pas, retourne false
                return false;
            }

            // Vérifie si le mot de passe spécifié correspond au mot de passe stocké
            bool isAuthenticated = VerifyPassword(user.EncryptedPassword, plainTextPassword, user.GetEncryptionKey(), user.GetEncryptionIV());

            if (isAuthenticated)
            {
                // Stocke l'identifiant de l'utilisateur et la date d'expiration du token dans les préférences
                Preferences.Set("IdUser", user.IdUser);
                Preferences.Set("token_expiry", DateTime.UtcNow.AddHours(48).Ticks);

                return true;
            }
            else
            {

                return false;
            }
        }
    }
}
