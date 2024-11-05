using LiveCharts;
using LiveCharts.Definitions.Charts;
using LiveCharts.Wpf;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.ComponentModel;
using System.Diagnostics;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media;

namespace SportFactoryApp.Dashboard
{
    public partial class Dashboardview : UserControl, INotifyPropertyChanged
    {
        private List<string> _dateLabels;
        public List<string> DateLabels
        {
            get => _dateLabels;
            set
            {
                _dateLabels = value;
                OnPropertyChanged(nameof(DateLabels));
            }
        }
        public ObservableCollection<Session> FilteredSessions { get; set; }
        private GymContext _context;
        public ObservableCollection<Member> Members { get; set; }
        public ObservableCollection<Membership> Memberships { get; set; }
        public ObservableCollection<Session> Sessions { get; set; }

        // Properties for Lower and Upper Bound
        private double _lowerBound;
        private double _upperBound;

        public double LowerBound
        {
            get => _lowerBound;
            set
            {
                if (_lowerBound != value)
                {
                    _lowerBound = value;
                    OnPropertyChanged(nameof(LowerBound));
                    UpdateSelectedDatesFromBounds();
                    PopulatePieCharts();
                }
            }
        }

        public double UpperBound
        {
            get => _upperBound;
            set
            {
                if (_upperBound != value)
                {
                    _upperBound = value;
                    OnPropertyChanged(nameof(UpperBound));
                    UpdateSelectedDatesFromBounds();
                    PopulatePieCharts();

                }
            }
        }
    
        private int _distinctMembersCount;
        public int DistinctMembersCount
        {
            get => _distinctMembersCount;
            set
            {
                _distinctMembersCount = value;
                OnPropertyChanged(nameof(DistinctMembersCount));
            }
        }

        private int _distinctMembershipsCount;
        public int DistinctMembershipsCount
        {
            get => _distinctMembershipsCount;
            set
            {
                _distinctMembershipsCount = value;
                OnPropertyChanged(nameof(DistinctMembershipsCount));
            }
        }

        // Properties for Lower and Upper Bound DateTime
        public DateTime LowerBoundDateTime => DateTime.FromOADate(LowerBound);
        public DateTime UpperBoundDateTime => DateTime.FromOADate(UpperBound);

        private SeriesCollection _lineChartSeries;
        public SeriesCollection LineChartSeries
        {
            get => _lineChartSeries;
            set
            {
                _lineChartSeries = value;
                OnPropertyChanged(nameof(LineChartSeries));
            }
        }
        // Other properties
        private SeriesCollection _histogramSeries1;
        public SeriesCollection HistogramSeries1
        {
            get => _histogramSeries1;
            set
            {
                _histogramSeries1 = value;
                OnPropertyChanged(nameof(HistogramSeries1));
            }
        }
        private SeriesCollection _histogramSeries;
        public SeriesCollection HistogramSeries
        {
            get => _histogramSeries;
            set
            {
                _histogramSeries = value;
                OnPropertyChanged(nameof(HistogramSeries));
            }
        }

        private List<string> _daysOfWeekLabels;
        public List<string> DaysOfWeekLabels
        {
            get => _daysOfWeekLabels;
            set
            {
                _daysOfWeekLabels = value;
                OnPropertyChanged(nameof(DaysOfWeekLabels));
            }
        }

        private double _totalSales;
        public double TotalSales
        {
            get => _totalSales;
            set
            {
                _totalSales = value;
                OnPropertyChanged(nameof(TotalSales));
            }
        }

        // New properties for RangeSlider
        private double _minimumDateInOADate;
        public double MinimumDateInOADate
        {
            get => _minimumDateInOADate;
            set
            {
                if (_minimumDateInOADate != value)
                {
                    _minimumDateInOADate = value;
                    OnPropertyChanged(nameof(MinimumDateInOADate));
                }
            }
        }

        public double PreviousRangeTotalSales { get; set; }

        public int PreviousRangeDistinctMembersCount { get; set; }

        public int PreviousRangeDistinctMembershipsCount { get; set; }
        public double CurrentWeekTotalSales { get; set; }
       
        public int CurrentWeekDistinctMembersCount { get; set; }

        public int CurrentWeekDistinctMembershipsCount { get; set; }

        private double _maximumDateInOADate;
        public double MaximumDateInOADate
        {
            get => _maximumDateInOADate;
            set
            {
                if (_maximumDateInOADate != value)
                {
                    _maximumDateInOADate = value;
                    OnPropertyChanged(nameof(MaximumDateInOADate));
                }
            }
        }
        private ObservableCollection<Membership> _filteredMembers;
        public ObservableCollection<Membership> FilteredMembers
        {
            get => _filteredMembers;
            set
            {
                _filteredMembers = value;
                OnPropertyChanged(nameof(FilteredMembers));
            }
        }


        public Dashboardview()
        {
            InitializeComponent();
            _context = new GymContext();
            LoadData();
            this.DataContext = this;
            UpdateTopMembersDataGrid();
            UpdateDataGrid();
            DaysOfWeekLabels = new List<string> { "Lun", "Mar", "Mer", "Jeu", "Vend", "Sam", "Dim" };
            InitializeDateRange();
        }

        private void LoadData()
        {
            Memberships = new ObservableCollection<Membership>(_context.Membershipss.ToList());
            Sessions = new ObservableCollection<Session>(_context.Sessions.ToList());
            Members = new ObservableCollection<Member>(_context.Members.ToList());
            Memberships = new ObservableCollection<Membership>(
       _context.Membershipss.Include(m => m.Member).ToList()
   );

            // Load Members data separately if needed
            Members = new ObservableCollection<Member>(_context.Members.ToList());


            Debug.WriteLine($"Loaded {Memberships.Count} memberships.");
            Debug.WriteLine($"Loaded {Members.Count} members.");

            CalculateKPI();
            PopulatePieCharts();
        }

        private void InitializeDateRange()
        {
            if (Memberships.Any())
            {
                LowerBound = Memberships.Min(m => m.Date).ToOADate();
                UpperBound = DateTime.Now.ToOADate();
            }
            else
            {
                LowerBound = DateTime.Now.AddDays(-30).ToOADate();
                UpperBound = DateTime.Now.ToOADate();
            }

            MinimumDateInOADate = Memberships.Min(m => m.Date).ToOADate();
            MaximumDateInOADate = Memberships.Max(m => m.Date).ToOADate();
        }

        private void UpdateSelectedDatesFromBounds()
        {
            OnPropertyChanged(nameof(LowerBoundDateTime));
            OnPropertyChanged(nameof(UpperBoundDateTime));
            CalculateKPI();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
            PopulatePieCharts();
        }

        private void CalculateKPI()
        {
            var filteredMemberships = Memberships
                .Where(m => m.Date >= DateTime.FromOADate(LowerBound) && m.Date <= DateTime.FromOADate(UpperBound))
                .ToList();

            Debug.WriteLine($"Filtered memberships count: {filteredMemberships.Count}");

            // Initialize two counts for each day of the week for "Seance Unique" and "Not Seance Unique"
            var uniqueCounts = new ChartValues<decimal> { 0, 0, 0, 0, 0, 0, 0 }; // Prices for "Seance Unique"
            var nonUniqueCounts = new ChartValues<decimal> { 0, 0, 0, 0, 0, 0, 0 }; // Prices for not "Seance Unique"

            foreach (var membership in filteredMemberships)
            {
                var membershipDay = membership.Date.DayOfWeek;
                int memberIndex = ((int)membershipDay + 6) % 7; // Adjust index to start from Monday

                // Check the type of membership and categorize accordingly
                if (membership.Type == "Seance Unique")
                {
                    uniqueCounts[memberIndex] += membership.Price; // Accumulate price for "Seance Unique"
                }
                else
                {
                    nonUniqueCounts[memberIndex] += membership.Price; // Accumulate price for not "Seance Unique"
                }

              
            }

            // Update the SeriesCollection to include the new price series
            HistogramSeries = new SeriesCollection
{
    new ColumnSeries
    {
        Title = "Seance Unique",
        Values = uniqueCounts,
        MaxColumnWidth = 10,
        ColumnPadding = 5,
        Fill = new LinearGradientBrush
        {
            GradientStops = new GradientStopCollection
            {
             
                new GradientStop(Color.FromRgb(173, 222, 52), 0),
                new GradientStop(Color.FromRgb(255, 255, 255), 1)
            }
        }
    },
    new ColumnSeries
    {
        Title = "12-Seances",
        Values = nonUniqueCounts,
        MaxColumnWidth = 10,
        ColumnPadding = 5,
        Fill = new LinearGradientBrush
        {
            GradientStops = new GradientStopCollection
            {
                  new GradientStop(Color.FromRgb(27, 73, 60), 0),
                new GradientStop(Color.FromRgb(255, 255, 255), 1)
            }
        }
    }
   
};


            // Create the line chart values (grouping by date and summing up the sales for each date)
            var lineChartValues = new ChartValues<double>();
            var dates = filteredMemberships
                .GroupBy(m => m.Date.Date)
                .OrderBy(g => g.Key)
                .Select(g => new { Date = g.Key, TotalSales = g.Sum(m => (double)m.Price) })
                .ToList();

            // Store the date labels and sales values for the line chart
            DateLabels = dates.Select(d => d.Date.ToString("MM/dd/yyyy")).ToList();
            foreach (var dateGroup in dates)
            {
                lineChartValues.Add(dateGroup.TotalSales);
            }

            // Create a series for the line chart
var lineSeries1 = new LineSeries
{
    Title = "Revenue en Dinars",
    Values = lineChartValues,
    Fill = Brushes.Transparent,
    StrokeThickness = 3,
    PointGeometrySize = 0,
    Stroke = new LinearGradientBrush
    {
        GradientStops = new GradientStopCollection
        {
            new GradientStop(Colors.White, 0.06),
            new GradientStop(Color.FromRgb(248, 163, 63), 0.5),
            new GradientStop(Colors.White, 0.93)
        }
    }
};


// Adding both series to the chart's Series collection
LineChartSeries = new SeriesCollection { lineSeries1};

            TotalSales = (double)filteredMemberships.Sum(m => m.Price);
            DistinctMembersCount = filteredMemberships.Select(m => m.MemberId).Distinct().Count();
            DistinctMembershipsCount = filteredMemberships.Select(m => m.Type).Count();
        }

        private void PopulatePieCharts()
        {
            var filteredMemberships = Memberships
                .Where(m => m.Date >= DateTime.FromOADate(LowerBound) && m.Date <= DateTime.FromOADate(UpperBound))
                .ToList();

            var activeCount = filteredMemberships.Count(m => m.Status == "Active");
            var inactiveCount = filteredMemberships.Count(m => m.Status != "Active");
            DateTime upperBoundDate = DateTime.FromOADate(UpperBound);
            DateTime LowerBoundDate = DateTime.FromOADate(LowerBound);
            DateTime previousWeekEnd = upperBoundDate.AddDays(-7);
            DateTime previousWeekStart = upperBoundDate.AddDays(-14);

            DateTime CurrentWeekEnd = upperBoundDate.AddDays(-7);

            // Filter memberships for the previous week's range
            var previousWeekMemberships = Memberships
                .Where(m => m.Date >= previousWeekStart && m.Date <= previousWeekEnd)
                .ToList();

            var currentWeekMemberships = Memberships
                  .Where(m => m.Date >= CurrentWeekEnd && m.Date <= upperBoundDate)
                  .ToList();
            
            CurrentWeekTotalSales = (double)currentWeekMemberships.Sum(m => m.Price);
            CurrentWeekDistinctMembersCount = currentWeekMemberships.Select(m => m.MemberId).Distinct().Count();
            CurrentWeekDistinctMembershipsCount = currentWeekMemberships.Select(m => m.Type).Distinct().Count();

            PreviousRangeTotalSales = (double)previousWeekMemberships.Sum(m => m.Price);
            PreviousRangeDistinctMembersCount = previousWeekMemberships.Select(m => m.MemberId).Distinct().Count();
            PreviousRangeDistinctMembershipsCount = previousWeekMemberships.Select(m => m.Type).Distinct().Count();

            // Debug output
            Console.WriteLine($"PreviousRangeTotalSales: {PreviousRangeTotalSales}");
            Console.WriteLine($"PreviousRangeDistinctMembersCount: {PreviousRangeDistinctMembersCount}");
            Console.WriteLine($"PreviousRangeDistinctMembershipsCount: {PreviousRangeDistinctMembershipsCount}");

            // Notify the UI about updated properties
            OnPropertyChanged(nameof(PreviousRangeTotalSales));
            OnPropertyChanged(nameof(PreviousRangeDistinctMembersCount));
            OnPropertyChanged(nameof(PreviousRangeDistinctMembershipsCount));
            OnPropertyChanged(nameof(CurrentWeekTotalSales));
            OnPropertyChanged(nameof(CurrentWeekDistinctMembersCount));
            OnPropertyChanged(nameof(CurrentWeekDistinctMembershipsCount));



            var types = filteredMemberships.GroupBy(m => m.Type)
                .Select(g => new { Type = g.Key, Count = g.Count() })
                .ToList();
            var colors = new List<SolidColorBrush>
{
    new SolidColorBrush(Color.FromRgb(174, 254, 20)), // First color
    new SolidColorBrush(Color.FromRgb(0, 0, 0))  // Second color
};

            // Clear any existing series to avoid duplicates
            PieChart2.Series = new SeriesCollection();

            int colorIndex = 0;
            foreach (var type in types)
            {
                // Create a new PieSeries with the specific color from the colors list
                PieChart2.Series.Add(new PieSeries
                {
                    Title = type.Type,
                    Values = new ChartValues<int> { type.Count },
                    DataLabels = true,
                    Fill = colors[colorIndex % colors.Count]  // Apply color based on the index
                });
                colorIndex++;
            }
        }

        // Button Click Functions
        private void Last7Days_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = DateTime.Now.AddDays(-7).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
            UpdateSelectedDatesFromBounds();
        }

        private void Last30Days_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = DateTime.Now.AddDays(-30).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
            UpdateSelectedDatesFromBounds();
        }

        private void UntilToday_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = Memberships.Min(m => m.Date).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
            UpdateSelectedDatesFromBounds();


        }
        private void UpdateTopMembersDataGrid()
        {
            // Get session counts for each member within the selected date range
            var topMembers = _context.Sessions
                .Where(s => s.SessionDate >= LowerBoundDateTime && s.SessionDate <= UpperBoundDateTime) // Filter by date range
                .GroupBy(s => s.MemberId)
                .Select(g => new
                {
                    MemberId = g.Key,
                    SessionCount = g.Count()
                })
                .OrderByDescending(g => g.SessionCount) // Order by session count descending
                .Take(3) // Take top 3 members
                .ToList();

            // Get member details and total sales for the top members
            var topMemberIds = topMembers.Select(tm => tm.MemberId).ToList();
            var filteredMembers = _context.Members
                .Where(m => topMemberIds.Contains(m.MemberId))
                .ToList();
     

            var dataForTopMemberCards = topMembers
                .Join(filteredMembers,
                    tm => tm.MemberId,
                    m => m.MemberId,
                    (tm, m) => new
                    {
                        FullName = m.FullName,
                        Gender = m.Gender,
                        TotalSales = m.Memberships.Sum(mem => mem.Price),
                        SessionCount = tm.SessionCount
                    }).ToList();

            // Bind the data to the UserControl
            DynamicMemberContainer.Children.Clear(); // Clear previous entries
            foreach (var member in dataForTopMemberCards)
            {
                var memberCard = new TopMemberCard
                {
                    DataContext = member
                };
                // Add to the UI, e.g., add to a StackPanel or Grid
                DynamicMemberContainer.Children.Add(memberCard);
            }
        }
        private void DatePicker_SelectedDateChanged(object sender, SelectionChangedEventArgs e)
        {
            if (sender is DatePicker datePicker && datePicker.SelectedDate.HasValue)
            {
                DateTime selectedDate = datePicker.SelectedDate.Value;

                if (datePicker == LowerBoundDatePicker)
                {
                    LowerBound = selectedDate.ToOADate();
                }
                else if (datePicker == UpperBoundDatePicker)
                {
                    UpperBound = selectedDate.ToOADate();
                }

                UpdateSelectedDatesFromBounds(); // Updates any other properties dependent on these bounds
            }
        }
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged(string propertyName)
        {
            PropertyChanged?.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        private void UpdateDataGrid()
        {
            var filteredMemberships = Memberships
                .Where(m => m.Date >= DateTime.FromOADate(LowerBound) &&
                            m.Date <= DateTime.FromOADate(UpperBound))
                .ToList();

            var sessions = _context.Sessions
             .Include(s => s.Member)
             .Include(s => s.Membership)
             .ToList();

            var FilteredSessionss = sessions
               .Where(m => m.SessionDate >= DateTime.FromOADate(LowerBound) &&
                           m.SessionDate <= DateTime.FromOADate(UpperBound))
               .ToList();
            // Assign the sessions to the FilteredSessions collection
            FilteredSessions = new ObservableCollection<Session>(FilteredSessionss);

            FilteredMembers = new ObservableCollection<Membership>(filteredMemberships);
        }
        private void ToggleButton_Checked(object sender, RoutedEventArgs e)
        {
            if (sender == ToggleButtonSessions)
            {
                ToggleButtonMembers.IsChecked = false; // Uncheck the Members button
                SessionsDataGrid.Visibility = Visibility.Visible; // Show Sessions DataGrid
                MembersDataGrid.Visibility = Visibility.Collapsed; // Hide Members DataGrid
            }
            else if (sender == ToggleButtonMembers)
            {
                ToggleButtonSessions.IsChecked = false; // Uncheck the Sessions button
                MembersDataGrid.Visibility = Visibility.Visible; // Show Members DataGrid
                SessionsDataGrid.Visibility = Visibility.Collapsed; // Hide Sessions DataGrid
            }
        }

        private void ToggleButton_Unchecked(object sender, RoutedEventArgs e)
        {
            if (sender == ToggleButtonSessions)
            {
                ToggleButtonMembers.IsChecked = true; // Recheck the Members button
                MembersDataGrid.Visibility = Visibility.Visible; // Show Members DataGrid
                SessionsDataGrid.Visibility = Visibility.Collapsed; // Hide Sessions DataGrid
            }
            else if (sender == ToggleButtonMembers)
            {
                ToggleButtonSessions.IsChecked = true; // Recheck the Sessions button
                SessionsDataGrid.Visibility = Visibility.Visible; // Show Sessions DataGrid
                MembersDataGrid.Visibility = Visibility.Collapsed; // Hide Members DataGrid
            }
        }



    }

}
