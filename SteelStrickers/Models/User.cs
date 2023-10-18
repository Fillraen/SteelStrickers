using SteelStrickers.Services;
using System;
using System.Collections.Generic;
using System.Security.Cryptography;
using System.Text;

namespace SteelStrickers.Models
{
    public class User : AesEncryption
    {
        public int IdUser { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string EncryptedPassword { get; set; }
        public string EncryptionKey { get; set; }
        public string EncryptionIV { get; set; }
        public DateTime SignInDate { get; set; }
        public int Elo { get; set; }
        public int GamePlayed { get; set; }
        public int GameWin { get; set; }
        public int GameLoose { get; set; }
        public TimeSpan TotalTimePlayed { get; set; }
        public string Role { get; set; }

        public ICollection<Robot> Robots { get; set; }

        public User()
        {
            Robots = new List<Robot>();
        }

        public void SetEncryptionKey(string key = null)
        {
            if (key == null)
            {
                using (Aes aes = Aes.Create())
                {
                    EncryptionKey = Convert.ToBase64String(aes.Key);
                }
            }
            else
            {
                EncryptionKey = key;
            }
        }

        // Méthode pour définir le vecteur d'initialisation d'encryption
        public void SetEncryptionIV(string iv = null)
        {
            if (iv == null)
            {
                using (Aes aes = Aes.Create())
                {
                    EncryptionIV = Convert.ToBase64String(aes.IV);
                }
            }
            else
            {
                EncryptionIV = iv;
            }
        }

        // Méthode pour obtenir la clé d'encryption
        public string GetEncryptionKey()
        {
            return EncryptionKey;
        }

        // Méthode pour obtenir le vecteur d'initialisation d'encryption
        public string GetEncryptionIV()
        {
            return EncryptionIV;
        }

        // Méthode pour définir le mot de passe encrypté
        public void SetEncryptedPassword(string plainTextPassword)
        {
            EncryptedPassword = EncryptPassword(plainTextPassword, EncryptionKey, EncryptionIV);
        }

        // Méthode pour obtenir le mot de passe en clair à partir de l'encryption
        public string GetPlainTextPassword()
        {
            return DecryptPassword(EncryptedPassword, EncryptionKey, EncryptionIV);
        }
    }
}
