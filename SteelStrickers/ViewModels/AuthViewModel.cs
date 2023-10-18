﻿using SteelStrickers.Services;
using System;
using System.Collections.Generic;
using System.Text;
using SteelStrickers.Views;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class AuthViewModel : BaseViewModel
    {
        // Propriétés pour le nom d'utilisateur et le mot de passe
        public string Email { get; set; }
        public string Password { get; set; }

        // Commande pour le bouton de connexion
        public Command LoginCommand { get; }

        // Objet Auth pour gérer l'authentification
        Auth auth;

        // Événement pour demander la fermeture de la popup
        public event Action RequestClosePopup;

        public AuthViewModel()
        {
            Title = "Auth"; // Titre de la vue

            auth = new Auth(); // Initialisation de l'objet Auth pour gérer l'authentification

            // Commande associée au bouton de connexion
            LoginCommand = new Command(OnLoginClicked);
        }

        // Méthode exécutée lorsque le bouton de connexion est cliqué
        private async void OnLoginClicked(object obj)
        {
            // Appel à la méthode d'authentification de l'objet Auth
            bool isAuthenticated = await auth.AuthenticateAsync(Email, Password);

            if (isAuthenticated)
            {
                // Demander à fermer le popup en invoquant l'événement
                RequestClosePopup?.Invoke();

                // Push the VaultPage onto the navigation stack while preserving the tab bar
                await Shell.Current.Navigation.PushAsync(new HomePage());
            }
            else
            {
                // Afficher une alerte en cas d'échec de l'authentification
                await App.Current.MainPage.DisplayAlert("Erreur", "Email ou mot de passe incorrect", "OK");
            }
        }

    }
}