﻿using System.Linq;
using System;
using System.Windows;
using System.Windows.Input;
using SportFactoryApp.Members;
using SportFactoryApp.Memberships;
using SportFactoryApp.Profile;
using System.Collections.Generic;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using SportFactory.Models;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;
using System.Windows.Media;
using SportFactoryApp.Dashboard;
using System.Collections.ObjectModel;
using System.Windows.Shapes;

namespace SportFactoryApp
{
    public partial class MainWindow : Window
    {
        private readonly GymContext _context;
        private ToggleButton _lastCheckedButton;
        private int _selectedRecipientId;
        public ObservableCollection<User> Users { get; set; } = new ObservableCollection<User>();
        private ObservableCollection<User> _displayedUsers = new ObservableCollection<User>();
        private List<User> _allUsers = new List<User>();
        private int _currentIndex = 0;
        private Grid _selectedGrid; // Field to store the reference to the currently selected Grid


        public MainWindow()
        {
            InitializeComponent();
            LoadUserProfile(); // Load user profile on startup
            ShowMembersView(); // Default view
            LoadUsers(); // Load users into the ComboBox
            var StartView = new Dashboardview(); // Assuming ChargesView is a UserControl
            MainContentControl.Content = StartView;

        }

        private void TitleBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }

        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void MaximizeRestoreButton_Click(object sender, RoutedEventArgs e)
        {
            if (this.WindowState == WindowState.Normal)
            {
                this.WindowState = WindowState.Maximized;
            }
            else
            {
                this.WindowState = WindowState.Normal;
            }
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void LoadUserProfile()
        {
            // Fetch user details based on CurrentUserId
            var user = GetUserById(LogSession.CurrentUserId); // Fetch user details
            if (user != null)
            {
                string fullName = $"{user.FirstName} {user.LastName}";
                LoggedInUserTextBlock.Text = fullName; // Display full name in TextBlock
            }
        }

        private User GetUserById(int userId)
        {
            // Implement the data access logic to get the user from the database
            try
            {
                using (var context = new GymContext())
                {
                    return context.Users.FirstOrDefault(u => u.Id == userId);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while retrieving user details: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return null;
            }
        }

        /* private void MembersButton_Click(object sender, RoutedEventArgs e)
         {
             ShowMembersView();
         }*/

        private void MembersButton_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton clickedButton = sender as ToggleButton;

            // If there's a previously checked button and it's different from the clicked button, uncheck it
            if (_lastCheckedButton != null && _lastCheckedButton != clickedButton)
            {
                _lastCheckedButton.IsChecked = false;
            }

            // Set the clicked button as the new last checked button
            _lastCheckedButton = clickedButton;

            var MembersView = new MembersView(this); // Assuming ChargesView is a UserControl
            MainContentControl.Content = MembersView;
        }

        private void MembershipsButton_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton clickedButton = sender as ToggleButton;

            // If there's a previously checked button and it's different from the clicked button, uncheck it
            if (_lastCheckedButton != null && _lastCheckedButton != clickedButton)
            {
                _lastCheckedButton.IsChecked = false;
            }

            // Set the clicked button as the new last checked button
            _lastCheckedButton = clickedButton;

            var MembershipView = new MembershipsView(this); // Assuming ChargesView is a UserControl
            MainContentControl.Content = MembershipView;
        }

        private void ShowMembersView()
        {
            // MainContent.Content = new MembersView(); // Replace with your Members view user control
        }

        private void ShowSessionsView()
        {
            // MainContent.Content = new SessionsView(); // Replace with your Sessions view user control
        }
        private void SearchTextBox_TextChanged(object sender, TextChangedEventArgs e)
        {
            var searchText = SearchTextBox.Text;

            if (string.IsNullOrWhiteSpace(searchText))
            {
                SearchResultListBox.ItemsSource = null;
                SearchResultPopup.IsOpen = false;
                return;
            }

            // Fetch member names and IDs from the database based on the search term
            var filteredResults = GetMemberNames(searchText);

            // Update ListBox with filtered results
            SearchResultListBox.ItemsSource = filteredResults;

            // Show or hide the Popup based on whether there are results
            SearchResultPopup.IsOpen = filteredResults.Any();
        }

        private List<MemberSearchResult> GetMemberNames(string searchTerm)
        {
            using (var context = new GymContext())
            {
                var members = context.Members.ToList(); // Load all members into memory

                return members
                    .Where(m => string.IsNullOrWhiteSpace(searchTerm) ||
                                 m.FirstName.ToLower().Contains(searchTerm.ToLower()) ||
                                 m.LastName.ToLower().Contains(searchTerm.ToLower()))
                    .Select(m => new MemberSearchResult
                    {
                        Id = m.MemberId, // Assuming Id is the primary key
                        FullName = $"{m.FirstName} {m.LastName}"
                    })
                    .ToList();
            }
        }

        private void SearchResultListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (SearchResultListBox.SelectedItem is MemberSearchResult selectedMember)
            {
                // Fetch member details based on the selected member ID
                var member = GetMemberById(selectedMember.Id); // Fetch using the member ID
                SearchTextBox.Clear();
                if (member != null)
                {
                    // Create the MemberProfileView UserControl
                    var memberProfileView = new MemberProfileView(member); // Pass the member to the UserControl

                    // Set the UserControl to MainContentControl
                    MainContentControl.Content = memberProfileView;

                    // Close the search results
                    SearchResultPopup.IsOpen = false;
                }
            }
        }

        private Member GetMemberById(int memberId)
        {
            try
            {
                using (var context = new GymContext())
                {
                    return context.Members.FirstOrDefault(m => m.MemberId == memberId);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"An error occurred while retrieving member details: {ex.Message}", "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                return null;
            }
        }

        // Helper class to hold member search results
        public class MemberSearchResult
        {
            public int Id { get; set; }
            public string FullName { get; set; }

            public override string ToString() => FullName; // Override ToString to display FullName in ListBox
        }



        private void ShowMemberProfile(Member selectedMember)
        {
            // Pass the selected member to the MemberProfileView constructor
            var memberProfileView = new MemberProfileView(selectedMember);
            memberProfileView.DataContext = selectedMember;  // Optionally, bind the selected member to the DataContext
            MainContentControl.Content = memberProfileView;  // Display the profile in the main content area
        }
        private void ToggleButton_Click(object sender, RoutedEventArgs e)
        {
            ToggleButton clickedButton = sender as ToggleButton;

            // If there's a previously checked button and it's different from the clicked button, uncheck it
            if (_lastCheckedButton != null && _lastCheckedButton != clickedButton)
            {
                _lastCheckedButton.IsChecked = false;
            }

            // Set the clicked button as the new last checked button
            _lastCheckedButton = clickedButton;
            var MembersView = new Dashboardview(); // Assuming ChargesView is a UserControl
            MainContentControl.Content = MembersView;
        }

        // Load users into ComboBox for selection
        private void LoadUsers()
        {
            try
            {
                using (var context = new GymContext())
                {
                    _allUsers = context.Users.Where(u => u.Id != LogSession.CurrentUserId).ToList();
                    //_allUsers.Insert(0, new User { Id = 0, FirstName = " " });

                    // Initialize with the first three users
                    UpdateDisplayedUsers();

                    // Set ItemsSource directly here
                    UserList.ItemsSource = _displayedUsers;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading users: {ex.Message}");
            }
        }

        private void UserItem_Click(object sender, MouseButtonEventArgs e)
        {
            if (sender is FrameworkElement element && element.DataContext is User selectedUser)
            {
                // Check if the same user is selected again
                if (selectedUser.Id == _selectedRecipientId)
                {
                    // Reset the previously selected Grid to default state
                    if (_selectedGrid != null)
                    {
                        _selectedGrid.Margin = new Thickness(0); // Reset margin to default
                        _selectedGrid.Height = 50; // Reset height to default
                    }

                    // Toggle visibility for chat components if the same user is selected
                    bool isVisible = ChatHistoryListBox.Visibility == Visibility.Visible;

                    ChatHistoryListBox.Visibility = isVisible ? Visibility.Collapsed : Visibility.Visible;
                    ChatInputPanel.Visibility = isVisible ? Visibility.Collapsed : Visibility.Visible;
                    _selectedRecipientId = -2;

                }
                else
                {
                    // Reset previously selected Grid to default state
                    if (_selectedGrid != null)
                    {
                        _selectedGrid.Margin = new Thickness(0); // Reset margin to default
                        _selectedGrid.Height = 50; // Reset height to default
                    }

                    // Set the new selected user ID and show chat components
                    _selectedRecipientId = selectedUser.Id;
                    ChatHistoryListBox.Visibility = Visibility.Visible;
                    ChatInputPanel.Visibility = Visibility.Visible;
                    LoadChatHistory();


                    // Find the specific Grid associated with this clicked item
                    var grid = FindVisualChild<Grid>(element);
                    if (grid != null)
                    {
                        // Change properties of the newly selected Grid
                        grid.Margin = new Thickness(10); // Set margin as needed
                        grid.Height = 60; // Change height as needed
                        _selectedGrid = grid; // Store the reference to the newly selected Grid
                    }



                }
            }
        }

        private void CenterSelectedUser(User selectedUser)
        {
            // Find the index of the selected user
            int selectedIndex = _allUsers.IndexOf(selectedUser);
            _currentIndex = Math.Max(0, Math.Min(selectedIndex - 1, _allUsers.Count - 3));


        }

        private T FindVisualChild<T>(DependencyObject parent) where T : DependencyObject
        {
            for (int i = 0; i < VisualTreeHelper.GetChildrenCount(parent); i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);
                if (child is T typedChild)
                {
                    return typedChild;
                }
                var childOfChild = FindVisualChild<T>(child);
                if (childOfChild != null)
                {
                    return childOfChild;
                }
            }
            return null;
        }
        // Update the displayed users without relying on INotifyPropertyChanged
        private void UpdateDisplayedUsers()
        {
            _displayedUsers.Clear();
            for (int i = 0; i < 3; i++)
            {
                int index = (_currentIndex + i) % _allUsers.Count;
                _displayedUsers.Add(_allUsers[index]);


            }
        }

        private void ScrollRight_Click(object sender, RoutedEventArgs e)
        {
            _currentIndex = (_currentIndex + 1) % _allUsers.Count;
            UpdateDisplayedUsers();
        }

        private void ScrollLeft_Click(object sender, RoutedEventArgs e)
        {
            _currentIndex = (_currentIndex - 1 + _allUsers.Count) % _allUsers.Count;
            UpdateDisplayedUsers();
        }
        // Event handlers for CheckBox to show/hide chat components
        private void ToggleVisibilityCheckBox_Checked(object sender, RoutedEventArgs e)
        {
            ChatHistoryListBox.Visibility = Visibility.Visible;
            ChatInputPanel.Visibility = Visibility.Visible;
        }

        private void ToggleVisibilityCheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            ChatHistoryListBox.Visibility = Visibility.Collapsed;
            ChatInputPanel.Visibility = Visibility.Collapsed;
        }
        //private void UserComboBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        //{
        //    foreach (var user in Users)
        //    {
        //        user.IsSelected = user.Id == (int)UserComboBox.SelectedValue;
        //    }
        //}



        // Load chat history between the logged-in user and the selected recipient

        private async Task LoadChatHistory()
        {
            try
            {
                using (var context = new GymContext())
                {
                    var messages = await context.Messages
                        .Where(m => (m.SenderID == LogSession.CurrentUserId && m.ReceiverID == _selectedRecipientId) ||
                                    (m.SenderID == _selectedRecipientId && m.ReceiverID == LogSession.CurrentUserId))
                        .OrderBy(m => m.MessageDateTime)
                        .ToListAsync();

                    ChatHistoryListBox.Items.Clear();

                    foreach (var message in messages)
                    {
                        // Create a new ListBoxItem for each message
                        ListBoxItem messageItem = new ListBoxItem();

                        // Create a StackPanel to hold the message content and the date
                        StackPanel messagePanel = new StackPanel();
                        messagePanel.Orientation = Orientation.Horizontal;
                        messagePanel.Background = new SolidColorBrush(Colors.Transparent);

                        // TextBlock for message content
                        TextBlock messageContent = new TextBlock();
                        messageContent.Text = message.Content;
                        messageContent.FontWeight = FontWeights.Bold;
                        messageContent.FontSize = 12;
                        messageContent.Padding = new Thickness(10);

                        // TextBlock for message date
                        TextBlock messageDate = new TextBlock();
                        messageDate.Text = message.MessageDateTime.ToString("dd MMM");
                        messageDate.VerticalAlignment = VerticalAlignment.Bottom;
                        messageContent.Margin = new Thickness(5);
                        messageDate.FontSize = 10;
                        messageDate.Foreground = new SolidColorBrush(Colors.Gray);
                        messageDate.HorizontalAlignment = HorizontalAlignment.Right;

                        // Add the message content and date to the StackPanel
                        messagePanel.Children.Add(messageContent);
                        messagePanel.Children.Add(messageDate);

                        // Determine if the message is from the sender (current user) or receiver
                        if (message.SenderID == LogSession.CurrentUserId)
                        {

                            // From the sender (current user)
                            messageContent.Background = new SolidColorBrush(Colors.Black);
                            messageContent.Foreground = new SolidColorBrush(Colors.White);
                            messageItem.HorizontalAlignment = HorizontalAlignment.Right;
                            messageItem.Content = messagePanel;
                        }
                        else
                        {
                            // From the receiver (other user)
                            messageItem.Background = new SolidColorBrush(Colors.White);
                            messageItem.Foreground = new SolidColorBrush(Colors.Black);
                            messageItem.HorizontalAlignment = HorizontalAlignment.Left;
                            messageItem.Content = messagePanel;
                        }

                        // Add the styled ListBoxItem to the ChatHistoryListBox
                        ChatHistoryListBox.Items.Add(messageItem);
                    }

                    // Scroll to the latest message
                    if (ChatHistoryListBox.Items.Count > 0)
                    {
                        ChatHistoryListBox.ScrollIntoView(ChatHistoryListBox.Items[ChatHistoryListBox.Items.Count - 1]);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error loading chat history: {ex.Message}");
            }
        }



        // Event triggered when the Send button is clicked
        private void SendMessageButton_Click(object sender, RoutedEventArgs e)
        {
            if (!string.IsNullOrWhiteSpace(ChatInputTextBox.Text) && _selectedRecipientId != 0)
            {
                try
                {
                    using (var context = new GymContext())
                    {
                        var message = new Message
                        {
                            Content = ChatInputTextBox.Text,
                            MessageDateTime = DateTime.Now,
                            SenderID = LogSession.CurrentUserId,
                            ReceiverID = _selectedRecipientId
                        };
                        try
                        {
                            context.Messages.Add(message);
                            context.SaveChanges();
                        }
                        catch (DbUpdateException ex)
                        {
                            MessageBox.Show($"Error sending message: {ex.InnerException?.Message ?? ex.Message}");
                        }
                    }

                    ChatInputTextBox.Clear(); // Clear input field
                    LoadChatHistory(); // Refresh chat history after sending the message
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error sending message: {ex.Message}");
                }
            }
            else
            {
                MessageBox.Show("Please select a recipient and enter a message.");
            }
        }





        private T FindVisualChild<T>(DependencyObject parent, string childName) where T : DependencyObject
        {
            // Confirm parent is valid.
            if (parent == null) return null;

            T foundChild = null;

            int childrenCount = VisualTreeHelper.GetChildrenCount(parent);
            for (int i = 0; i < childrenCount; i++)
            {
                var child = VisualTreeHelper.GetChild(parent, i);
                T childType = child as T;

                // If the child is not of the target type, recursively drill down the tree.
                if (childType != null)
                {
                    if (!string.IsNullOrEmpty(childName))
                    {
                        // If the child's name matches the specified name, return the child.
                        var frameworkElement = child as FrameworkElement;
                        if (frameworkElement != null && frameworkElement.Name == childName)
                        {
                            foundChild = (T)child;
                            break;
                        }
                    }
                    else
                    {
                        // If the name is not specified, return the first child of the target type.
                        foundChild = childType;
                        break;
                    }
                }
                else
                {
                    // Recursively drill down the tree.
                    foundChild = FindVisualChild<T>(child, childName);
                    if (foundChild != null) break;
                }
            }

            return foundChild;
        }
        private void DeactivateExpiredMemberships()
        {
            DateTime today = DateTime.Now;

            // Get all memberships with Status "Active" that need to be deactivated
            var membershipsToDeactivate = _context.Membershipss
                .Where(m => m.Status == "Active" && today > m.Date.AddDays(45))
                .ToList();

            // Update the status of each membership
            foreach (var membership in membershipsToDeactivate)
            {
                membership.Status = "Desactive";
            }

            // Save changes to the database
            _context.SaveChanges();
        }
        private void UserControlPanel_MouseDown(object sender, MouseButtonEventArgs e)
        {
            // Show the logout popup when the user clicks on the image or text
            LogoutPopup.IsOpen = true;
        }

        private void LogoutButton_Click(object sender, RoutedEventArgs e)
        {
            // Implement your logout logic here
            // For example, clear the session and navigate back to the login window
            LogSession.CurrentUserId = -1; //  your session management is
            var loginWindow = new LoginWindow();// Assuming you have a LoginWindow class
            LogoutPopup.IsOpen = false;
            this.Close();
            loginWindow.Show();
            // Close the current window if applicable
        }

        private void CancelButton_Click(object sender, RoutedEventArgs e)
        {
            // Close the popup if the user cancels the logout action
            LogoutPopup.IsOpen = false;
        }








    }
}




    
