using SteelStrickers.Services;
using SteelStrickers.Views;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        // Propriétés pour le nom d'utilisateur et le mot de passe
        public string Email { get; set; }
        public string Password { get; set; }
        
        // Objet Auth pour gérer l'authentification
        Auth auth;
        public Command LoginCommand { get; }

        public LoginViewModel()
        {
            Title = "Login Page"; // Titre de la vue
            auth = new Auth(); // Initialisation de l'objet Auth pour gérer l'authentification
            LoginCommand = new Command(OnLoginClicked);
        }

        private async void OnLoginClicked(object obj)
        {
            // Appel à la méthode d'authentification de l'objet Auth
            bool isAuthenticated = await auth.AuthenticateAsync(Email, Password);

            if (isAuthenticated)
            {
                // Push the VaultPage onto the navigation stack while preserving the tab bar
                await Shell.Current.Navigation.PushAsync(new ChooseModePage());
            }
            else
            {
                // Afficher une alerte en cas d'échec de l'authentification
                await App.Current.MainPage.DisplayAlert("Erreur", "Email ou mot de passe incorrect", "OK");
            }
        }
    }
}
