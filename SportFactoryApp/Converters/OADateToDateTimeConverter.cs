using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SportFactoryApp.Converters
{
    public class OADateToDateTimeConverter : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value is double oaDate)
            {
                return DateTime.FromOADate(oaDate);
            }
            return DateTime.Now;
        }

        public object ConvertBack(object value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            if (value is DateTime dateTime)
            {
                return dateTime.ToOADate();
            }
            return 0d;
        }
    }
}