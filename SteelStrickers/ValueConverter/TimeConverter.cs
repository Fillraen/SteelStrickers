using System;
using System.Collections.Generic;
using System.Globalization;
using System.Text;
using Xamarin.Forms;

namespace SteelStrickers.ValueConverter
{
    public class TimeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            if (value is int totalSeconds)
            {
                int minutes = totalSeconds / 60;
                int seconds = totalSeconds % 60;
                return $"{minutes:00}:{seconds:00}";
            }
            return "00:00"; // Default fallback time format
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            // As of now, we do not need to convert back, but implement if necessary.
            return Binding.DoNothing;
        }
    }

}
