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
        private GymContext _context;
        public ObservableCollection<Member> Members { get; set; }
        public ObservableCollection<Membership> Memberships { get; set; }

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

            var histogramValues = new ChartValues<decimal> { 0, 0, 0, 0, 0, 0, 0 };
            foreach (var membership in filteredMemberships)
            {
                var dayOfWeek = membership.Date.DayOfWeek;
                int index = ((int)dayOfWeek + 6) % 7;
                histogramValues[index] += membership.Price;
            }
            HistogramSeries = new SeriesCollection
{
    new ColumnSeries
    {
        Title = "Total Sales",
        Values = histogramValues,
        PointGeometry = DefaultGeometries.Circle,
        Stroke = new SolidColorBrush(Color.FromRgb(0, 122, 204)), // Blue color
        //Fill = new SolidColorBrush(Color.FromRgb(0, 122, 204)), // Same blue color for fill

        
        StrokeThickness = 0,
        MaxColumnWidth = 30,
        ColumnPadding = 5
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
            LineChartSeries = new SeriesCollection
    {
        new LineSeries
        {
            Title = "Sales Over Time",
            Values = lineChartValues,
            PointGeometry = DefaultGeometries.Circle,
            Stroke = new SolidColorBrush(Color.FromRgb(144, 238, 144)),
            Fill = Brushes.Transparent,
            PointGeometrySize = 5
        }
    };

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

           

    var types = filteredMemberships.GroupBy(m => m.Type)
                .Select(g => new { Type = g.Key, Count = g.Count() })
                .ToList();

            PieChart2.Series = new SeriesCollection();
            foreach (var type in types)
            {
                PieChart2.Series.Add(new PieSeries { Title = type.Type, Values = new ChartValues<int> { type.Count } });
            }
        }

        // Button Click Functions
        private void Last7Days_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = DateTime.Now.AddDays(-7).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
        }

        private void Last30Days_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = DateTime.Now.AddDays(-30).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();
        }

        private void UntilToday_Click(object sender, RoutedEventArgs e)
        {
            LowerBound = Memberships.Min(m => m.Date).ToOADate();
            UpperBound = DateTime.Now.ToOADate();
            UpdateDataGrid();
            UpdateTopMembersDataGrid();


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

            FilteredMembers = new ObservableCollection<Membership>(filteredMemberships);
        }
    }

}
