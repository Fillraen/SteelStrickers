using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Net;
using System.Runtime.CompilerServices;
using System.Text;
using SteelStrickers.Services;
using Xamarin.Forms;

namespace SteelStrickers.ViewModels
{
    public class BaseViewModel : INotifyPropertyChanged
    {
        
        public IDAO_User daoUser => DependencyService.Get<IDAO_User>();
        public IDAO_Robots daoRobots => DependencyService.Get<IDAO_Robots>();
        public IDAO_Match daoMatch => DependencyService.Get<IDAO_Match>();
        public IBluetoothService bluetoothService => DependencyService.Get<IBluetoothService>();
        public IBluetoothDiscoveryService bluetoothDiscoveryService => DependencyService.Get<IBluetoothDiscoveryService>();
        public IDAO_MQTT daoMqtt => DependencyService.Get<IDAO_MQTT>();


        bool isBusy = false;
        public bool IsBusy
        {
            get { return isBusy; }
            set { SetProperty(ref isBusy, value); }
        }

        string title = string.Empty;
        public string Title
        {
            get { return title; }
            set { SetProperty(ref title, value); }
        }

        protected bool SetProperty<T>(ref T backingStore, T value,
            [CallerMemberName] string propertyName = "",
            Action onChanged = null)
        {
            if (EqualityComparer<T>.Default.Equals(backingStore, value))
                return false;

            backingStore = value;
            onChanged?.Invoke();
            OnPropertyChanged(propertyName);
            return true;
        }

        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var changed = PropertyChanged;
            if (changed == null)
                return;

            changed.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion
    }
}
