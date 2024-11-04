using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Data;

namespace SportFactoryApp.Converters
{
    using System;
    using System.Globalization;
    using System.Windows.Data;

    public class SalesComparisonConverter : IMultiValueConverter
    {
        public object Convert(object[] values, Type targetType, object parameter, CultureInfo culture)
        {
            if (values.Length == 2)
            {
                // Check for previous and current counts
                if (values[0] is int previousCount && values[1] is int currentCount)
                {
                    return $" Current Week:{currentCount} Compared To ({previousCount} in Previous Range)";
                }
                // Check for total sales comparison
                if (values[0] is double previousSales && values[1] is double currentSales)
                {
                    return $" Current Week:{currentSales:F0}DT Compared To ({previousSales:F0}DT in Previous Range) ";
                }
            }
            return string.Empty; // Return an empty string if values are not valid
        }

        public object[] ConvertBack(object value, Type[] targetTypes, object parameter, CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
