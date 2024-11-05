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
                    double percentageChange = (previousCount != 0)
                        ? ((currentCount / previousCount) - 1) * 100
                        : 0; // Avoid division by zero
                    return $"{percentageChange:F2}%";
                }

                // Check for total sales comparison with percentage change
                if (values[0] is double previousSales && values[1] is double currentSales)
                {
                    double percentageChange = (previousSales != 0)
                        ? ((currentSales / previousSales) - 1) * 100
                        : 0; // Avoid division by zero

                    return $"{percentageChange:F2}%";
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
