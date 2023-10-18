using SteelStrickers.ViewModels;
using SteelStrickers.Views;
using System;
using System.Collections.Generic;
using Xamarin.Forms;

namespace SteelStrickers
{
    public partial class AppShell : Xamarin.Forms.Shell
    {
        public AppShell()
        {
            InitializeComponent();
            Routing.RegisterRoute(nameof(ChooseModePage), typeof(ChooseModePage));
            Routing.RegisterRoute(nameof(ControllerPage), typeof(ControllerPage));
            Routing.RegisterRoute(nameof(LoginPage), typeof(LoginPage));
        }

        private async void OnMenuItemClicked(object sender, EventArgs e)
        {
            await Shell.Current.GoToAsync("//LoginPage");
        }
    }
}
