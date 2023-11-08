using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SteelStrickers.Models;
using SteelStrickers.ViewModels;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ControllerPage : ContentPage
    {
        public ControllerPage()
        {
            InitializeComponent();
            this.BindingContext = new ControllerViewModel();
        }
        public ControllerPage(Match createdMatch)
        {
            InitializeComponent();
            this.BindingContext = new ControllerViewModel(createdMatch);
        }
    }
}