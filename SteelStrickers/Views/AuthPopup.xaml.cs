﻿using Rg.Plugins.Popup.Extensions;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SteelStrickers.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class AuthPopup : Rg.Plugins.Popup.Pages.PopupPage
    {
		public AuthPopup ()
		{
			InitializeComponent ();
            this.BindingContext = new AuthViewModel();

            var viewModel = (AuthViewModel)this.BindingContext;
            viewModel.RequestClosePopup += async () => await Navigation.PopPopupAsync();
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            await Navigation.PopPopupAsync();
            await Shell.Current.GoToAsync("HomePage");
        }
    }
}