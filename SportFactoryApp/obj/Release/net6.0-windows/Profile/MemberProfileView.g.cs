﻿#pragma checksum "..\..\..\..\Profile\MemberProfileView.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "103E6638D6A5DB7DD985F75D1798A35EDE21FBEA"
//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré par un outil.
//     Version du runtime :4.0.30319.42000
//
//     Les modifications apportées à ce fichier peuvent provoquer un comportement incorrect et seront perdues si
//     le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

using SportFactoryApp.Converters;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Controls.Ribbon;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace SportFactoryApp.Profile {
    
    
    /// <summary>
    /// MemberProfileView
    /// </summary>
    public partial class MemberProfileView : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 57 "..\..\..\..\Profile\MemberProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock MembershipCountTextBlock;
        
        #line default
        #line hidden
        
        
        #line 65 "..\..\..\..\Profile\MemberProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBlock TotalRevenueTextBlock;
        
        #line default
        #line hidden
        
        
        #line 86 "..\..\..\..\Profile\MemberProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView MembershipListView;
        
        #line default
        #line hidden
        
        
        #line 107 "..\..\..\..\Profile\MemberProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListView SessionsListView;
        
        #line default
        #line hidden
        
        
        #line 118 "..\..\..\..\Profile\MemberProfileView.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Button DeleteSessionButton;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.11.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SportFactoryApp;component/profile/memberprofileview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Profile\MemberProfileView.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "7.0.11.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.MembershipCountTextBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 2:
            this.TotalRevenueTextBlock = ((System.Windows.Controls.TextBlock)(target));
            return;
            case 3:
            this.MembershipListView = ((System.Windows.Controls.ListView)(target));
            
            #line 86 "..\..\..\..\Profile\MemberProfileView.xaml"
            this.MembershipListView.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.MembershipListView_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.SessionsListView = ((System.Windows.Controls.ListView)(target));
            return;
            case 5:
            
            #line 117 "..\..\..\..\Profile\MemberProfileView.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.AddSessionButton_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            this.DeleteSessionButton = ((System.Windows.Controls.Button)(target));
            
            #line 118 "..\..\..\..\Profile\MemberProfileView.xaml"
            this.DeleteSessionButton.Click += new System.Windows.RoutedEventHandler(this.DeleteSessionButton_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
    }
}

