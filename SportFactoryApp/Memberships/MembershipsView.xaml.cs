using SportFactoryApp;
using System;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using SportFactoryApp.Memberships;// Add this if AddMemberWindow is in the Members namespace
using Microsoft.EntityFrameworkCore;
using System.Windows.Input;
using System.Windows.Media;
using SportFactoryApp.Profile;
using static SportFactoryApp.MainWindow;
using System.Collections.Generic;

namespace SportFactoryApp.Memberships
{
    public partial class MembershipsView : UserControl
    {
        private GymContext _context;
        private MainWindow _mainWindow;
        public MembershipsView(MainWindow mainWindow)
        {
            InitializeComponent();
            _context = new GymContext();
            LoadMembers();
            LoadMemberships();
            _mainWindow = mainWindow;
        }

        private void LoadMemberships(string filterType = "All")
        {
            List<Membership> memberships;

            if (filterType == "Active")
            {
                memberships = _context.Membershipss
                                     .Include(m => m.Member)
                                     .Where(m => m.Status == "Active")
                                     .OrderByDescending(m => m.Date)// Assuming you have an IsActive property
                                     .ToList();
            }
            else
            {
                memberships = _context.Membershipss.Include(m => m.Member).OrderByDescending(m => m.Date).ToList();
            }

            MembershipDataGrid.ItemsSource = memberships;

            int newMembershipCount = CountNewMembershipsThisMonth(memberships);
            CountNewMembershipsThisMonthText.Text = newMembershipCount.ToString();

            decimal monthlyRevenue = CalculateMonthlyRevenue(memberships);
            CalculateMonthlyRevenueText.Text = monthlyRevenue.ToString() + "DT";

            var sessions = _context.Sessions.Include(s => s.Membership).ToList();
            int twelveSessionUsage = Calculate12SessionUsage(sessions, memberships);
            Calculate12SessionUsageText.Text = twelveSessionUsage.ToString();
        }


        // Load Members from the database and display them in the ListBox

        private void LoadMembers()
        {
            var members = _context.Members.ToList();
            MembershipDataGrid.ItemsSource = members;

            
            // Update TextBlocks with calculated values
            //TotalMembersText.Text = totalMembers.ToString();
            //ActiveMembersText.Text = activeMembersWith12Pack.ToString();
            //LoyaltyPercentageText.Text = $"{loyaltyPercentage:F2}%";
            // Fetch sessions data and calculate sessions this month
            var sessions = _context.Sessions.ToList();
            int sessionsThisMonth = CountSessionsThisMonth(sessions);

            
            CountSessionsThisMonthText.Text = sessionsThisMonth.ToString();



        }

        private void MembersDataGrid_PreviewMouseDown(object sender, MouseButtonEventArgs e)
        {
            // Get the clicked element
            var clickedElement = e.OriginalSource as FrameworkElement;

            // Check if the clicked element is a button within the DataGrid
            if (clickedElement is Button)
            {
                return; // Allow button clicks
            }

            // Get the row under the mouse click
            var row = FindParent<DataGridRow>(clickedElement);
            if (row != null)
            {
                // Prevent the row from being selected
                e.Handled = true;
            }
        }

        // Helper method to find the parent of a specified type
        private T FindParent<T>(DependencyObject child) where T : DependencyObject
        {
            while (child != null)
            {
                if (child is T parent)
                {
                    return parent;
                }
                child = VisualTreeHelper.GetParent(child);
            }
            return null;
        }


        // Add Membership Event Handler
        private void AddMembership_Click(object sender, RoutedEventArgs e)
        {
            var addMembershipWindow = new AddMembershipWindow();
            if (addMembershipWindow.ShowDialog() == true) // If user confirms addition
            {
                
                LoadMemberships(); // Refresh the list
            }
        }

        // Update Membership Event Handler
        private void UpdateMembership_Click(object sender, RoutedEventArgs e)
        {
            if (MembershipDataGrid.SelectedItem is Membership selectedMembership)
            {
                var updateMembershipWindow = new UpdateMembershipWindow(selectedMembership);
                if (updateMembershipWindow.ShowDialog() == true) // If user confirms update
                {
                    //_context.SaveChanges(); // Save changes made in the update window
                    LoadMemberships(); // Refresh the list
                }
            }
            else
            {
                MessageBox.Show("Please select a membership to update.");
            }
        }

        // Delete Membership Event Handler
        private void DeleteMembership_Click(object sender, RoutedEventArgs e)
        {
            if (MembershipDataGrid.SelectedItem is Membership selectedMembership)
            {
                _context.Membershipss.Remove(selectedMembership);
                _context.SaveChanges();
                LoadMemberships(); // Refresh the list
            }
            else
            {
                MessageBox.Show("Please select a membership to delete.");
            }
        }
       

        private void MembershipsDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e) // Update this line
        {
            if (MembershipDataGrid.SelectedItem is Membership selectedMembership) // Update this line
            {
                // Implement any logic you want when a membership is selected
            }
        }
      
        private void MembershipDataGrid_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            // You can implement any logic you want to execute when a member is selected
            // For example, you might want to display details of the selected member:
            if (MembershipDataGrid.SelectedItem is Member selectedMember)
            {
                // Display details or perform any actions with the selected member
                // For example, you might load the memberships associated with the selected member
                // LoadMembershipsForMember(selectedMember); // Optional method to implement
            }
        }

        private void ShowMemberProfile_Click(object sender, RoutedEventArgs e)
        {
            // Ensure the _mainWindow instance is available
            if (_mainWindow == null)
            {
                MessageBox.Show("Main window instance is not available.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return;
            }

            // Check if a member is selected in the DataGrid
            if (MembershipDataGrid.SelectedItem is Membership selectedMember)
            {
                // Fetch member details based on the selected member ID
                var member = GetMemberById(selectedMember.MemberId);

                if (member != null)
                {
                    try
                    {
                        // Create the MemberProfileView UserControl
                        var memberProfileView = new MemberProfileView(member);

                        // Set the UserControl to MainContentControl in MainWindow
                        _mainWindow.MainContentControl.Content = memberProfileView;
                    }
                    catch (Exception ex)
                    {
                        MessageBox.Show($"An error occurred while displaying member profile: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
                else
                {
                    MessageBox.Show("Member not found.", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
            else
            {
                MessageBox.Show("Please select a member.", "Error", MessageBoxButton.OK, MessageBoxImage.Warning);
            }
        }


        private Member GetMemberById(int memberId)
        {
            try
            {
                using (var context = new GymContext())
                {
                    // Fetch the member by ID from the database
                    return context.Members.FirstOrDefault(m => m.MemberId == memberId);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while retrieving member details: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return null;
            }
        }

        public int Calculate12SessionUsage(List<Session> sessions, List<Membership> memberships)
        {
            // Get the first date of the current month
            DateTime startOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);

            return memberships.Count(m => m.Type == "Seance Unique" && m.Date >= startOfMonth);
        }

        public decimal CalculateMonthlyRevenue(List<Membership> memberships)
        {
            DateTime startOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            return memberships.Where(m => m.Date >= startOfMonth)
                              .Sum(m => m.Price);
        }
        public int CountNewMembershipsThisMonth(List<Membership> memberships)
        {
            DateTime startOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            return memberships.Count(m => m.Type == "Pack 12 Seances" && m.Date >= startOfMonth);
        }
        public int CountSessionsThisMonth(List<Session> sessions)
        {
            DateTime startOfMonth = new DateTime(DateTime.Now.Year, DateTime.Now.Month, 1);
            return sessions.Count(s => s.SessionDate >= startOfMonth);

            
        }

        private void ToggleButton_Checked(object sender, RoutedEventArgs e)
        {
            
            if (sender == ToggleAllButton)
            {
                ToggleActiveButton.IsChecked = false;
                LoadMemberships("All");
            }
            else if (sender == ToggleActiveButton)
            {
                ToggleAllButton.IsChecked = false;
                LoadMemberships("Active");
            }
            
        }
        private void ToggleButton_Unchecked(object sender, RoutedEventArgs e)
        {
            if (sender == ToggleActiveButton)
            {
                ToggleAllButton.IsChecked = true;
                LoadMemberships("All"); // Load all memberships when "Active" is unchecked
            }
            else if (sender == ToggleAllButton)
            {
                ToggleActiveButton.IsChecked = true;
                LoadMemberships("Active"); // Load all memberships when "All" is unchecked
            }
        }




    }
}
