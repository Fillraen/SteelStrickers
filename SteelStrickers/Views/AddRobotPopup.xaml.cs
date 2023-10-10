using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Rg.Plugins.Popup.Pages;
using Rg.Plugins.Popup.Services;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace SteelStrickers.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class AddRobotPopup : PopupPage
    {
        public AddRobotPopup()
        {
            InitializeComponent();
        }

        private void OnCloseButtonClicked(object sender, EventArgs e)
        {
            // Close the popup
            PopupNavigation.Instance.PopAsync(true);
        }
    }
}