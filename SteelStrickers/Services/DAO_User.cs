using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net.Http;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using SteelStrickers.Models;
using SteelStrickers.ViewModels;
using Action = SteelStrickers.Models.Action;



namespace SteelStrickers.Services
{
    public class DAO_User : IDAO_User
    {

        public DAO_User()
        {

        }

        public async Task<DetailedUser> GetUser()
        {
            DetailedUser detailedUser = new DetailedUser
            {
                ID_Utilisateur = 1,
                Nom_Utilisateur = "User1",
                Email = "user1@example.com",
                Date_Inscription = "2023-01-01",
                MMR = 1000,
                Role = "Utilisateur",
                Statistiques = new Statistique
                {
                    Jeux_Joues = 10,
                    Jeux_Gagnes = 5,
                    Jeux_Perdus = 5,
                    Temps_Total_Joue = "03:00:00"
                },
                Robots = new List<Robot>
            {
                new Robot
                {
                    ID_Robot = 1,
                    Nom_Robot = "Robot1",
                    ID_Utilisateur = 1,
                    Adresse_MAC = "00:11:22:33:44:55",
                    ID_Status = 1,
                    Nom_Status = "Connecté",
                },
                new Robot
                {
                    ID_Robot = 2,
                    Nom_Robot = "Robot2",
                    ID_Utilisateur = 1,
                    Adresse_MAC = "11:22:33:44:55:66",
                    ID_Status = 1,
                    Nom_Status = "Connecté",
                },
                // Ajouter d'autres instances de robots ici
            },
                Combats = new List<Combat>
            {
                new Combat
                {
                    ID_Combat = 1,
                    ID_Robot1 = 1,
                    ID_Robot2 = 2,
                    Points_Robot1 = 10,
                    Points_Robot2 = 20,
                    Temps_Combat = "00:10:00",
                    ID_Type_Combat = 1,
                    ID_Arbitre = 4,
                    ID_Vainqueur = 2,
                    Nom_Type = "Combat à mort"
                },
                new Combat
                {
                    ID_Combat = 2,
                    ID_Robot1 = 2,
                    ID_Robot2 = 1,
                    Points_Robot1 = 15,
                    Points_Robot2 = 25,
                    Temps_Combat = "00:15:00",
                    ID_Type_Combat = 2,
                    ID_Arbitre = 4,
                    ID_Vainqueur = 1,
                    Nom_Type = "Combat par points"
                },
                // Ajouter d'autres instances de combats ici
            }
            };
            return detailedUser;
        }

        public async Task UpdateApiPropertyAsync(DetailedUser DetailedUser)
        {
            try
            {
                var httpClient = new HttpClient();
                var json = JsonConvert.SerializeObject(DetailedUser);
                var content = new StringContent(json, Encoding.UTF8, "application/json");
                var response = await httpClient.PutAsync("https://votre-api.com/utilisateurs/1", content);

                if (response.IsSuccessStatusCode)
                {
                    // Mise à jour réussie
                    // Effectuez les actions nécessaires, telles que la mise à jour de l'interface utilisateur 
                }
                else
                {
                    // La mise à jour a échoué
                    // Gérez l'erreur en conséquence, affichez un message d'erreur, etc.
                }
            }
            catch (Exception ex)
            {
                // Gestion des exceptions
                // Gérez les erreurs de connexion, les erreurs d'API, etc.
            }
        }

    }
}
