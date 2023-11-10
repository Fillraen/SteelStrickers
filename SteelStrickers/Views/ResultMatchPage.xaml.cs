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
    public partial class ResultMatchPage : ContentPage
    {
        public ResultMatchPage(MatchResult finisehMatch)
        {
            InitializeComponent();
            this.BindingContext = new ResultMatchViewModel(finisehMatch);
        }
    }
}