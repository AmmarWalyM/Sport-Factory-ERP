﻿#pragma checksum "..\..\..\..\Dashboard\Dashboardview.xaml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "484195F353F7E83DF9E862242D49F4CD8C7C2B84"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using LiveCharts.Wpf;
using MaterialDesignThemes.Wpf;
using MaterialDesignThemes.Wpf.Converters;
using MaterialDesignThemes.Wpf.Transitions;
using SportFactoryApp.Converters;
using SportFactoryApp.Dashboard;
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
using Xceed.Wpf.Toolkit;
using Xceed.Wpf.Toolkit.Chromes;
using Xceed.Wpf.Toolkit.Converters;
using Xceed.Wpf.Toolkit.Core;
using Xceed.Wpf.Toolkit.Core.Converters;
using Xceed.Wpf.Toolkit.Core.Input;
using Xceed.Wpf.Toolkit.Core.Media;
using Xceed.Wpf.Toolkit.Core.Utilities;
using Xceed.Wpf.Toolkit.Mag.Converters;
using Xceed.Wpf.Toolkit.Panels;
using Xceed.Wpf.Toolkit.Primitives;
using Xceed.Wpf.Toolkit.PropertyGrid;
using Xceed.Wpf.Toolkit.PropertyGrid.Attributes;
using Xceed.Wpf.Toolkit.PropertyGrid.Commands;
using Xceed.Wpf.Toolkit.PropertyGrid.Converters;
using Xceed.Wpf.Toolkit.PropertyGrid.Editors;
using Xceed.Wpf.Toolkit.Zoombox;


namespace SportFactoryApp.Dashboard {
    
    
    /// <summary>
    /// Dashboardview
    /// </summary>
    public partial class Dashboardview : System.Windows.Controls.UserControl, System.Windows.Markup.IComponentConnector {
        
        
        #line 92 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal Xceed.Wpf.Toolkit.RangeSlider DateRangeSlider;
        
        #line default
        #line hidden
        
        
        #line 105 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker LowerBoundDatePicker;
        
        #line default
        #line hidden
        
        
        #line 110 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker UpperBoundDatePicker;
        
        #line default
        #line hidden
        
        
        #line 263 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton ToggleButtonSessions;
        
        #line default
        #line hidden
        
        
        #line 270 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.Primitives.ToggleButton ToggleButtonMembers;
        
        #line default
        #line hidden
        
        
        #line 281 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid SessionsDataGrid;
        
        #line default
        #line hidden
        
        
        #line 302 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid MembersDataGrid;
        
        #line default
        #line hidden
        
        
        #line 350 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal LiveCharts.Wpf.PieChart PieChart2;
        
        #line default
        #line hidden
        
        
        #line 419 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel MyTopMembersContainer;
        
        #line default
        #line hidden
        
        
        #line 422 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.StackPanel DynamicMemberContainer;
        
        #line default
        #line hidden
        
        
        #line 435 "..\..\..\..\Dashboard\Dashboardview.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal LiveCharts.Wpf.CartesianChart HistogramChart;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.6.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/SportFactoryApp;component/dashboard/dashboardview.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\..\..\Dashboard\Dashboardview.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "8.0.6.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            this.DateRangeSlider = ((Xceed.Wpf.Toolkit.RangeSlider)(target));
            return;
            case 2:
            this.LowerBoundDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 3:
            this.UpperBoundDatePicker = ((System.Windows.Controls.DatePicker)(target));
            return;
            case 4:
            
            #line 119 "..\..\..\..\Dashboard\Dashboardview.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Last7Days_Click);
            
            #line default
            #line hidden
            return;
            case 5:
            
            #line 120 "..\..\..\..\Dashboard\Dashboardview.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.Last30Days_Click);
            
            #line default
            #line hidden
            return;
            case 6:
            
            #line 121 "..\..\..\..\Dashboard\Dashboardview.xaml"
            ((System.Windows.Controls.Button)(target)).Click += new System.Windows.RoutedEventHandler(this.UntilToday_Click);
            
            #line default
            #line hidden
            return;
            case 7:
            this.ToggleButtonSessions = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 268 "..\..\..\..\Dashboard\Dashboardview.xaml"
            this.ToggleButtonSessions.Checked += new System.Windows.RoutedEventHandler(this.ToggleButton_Checked);
            
            #line default
            #line hidden
            
            #line 269 "..\..\..\..\Dashboard\Dashboardview.xaml"
            this.ToggleButtonSessions.Unchecked += new System.Windows.RoutedEventHandler(this.ToggleButton_Unchecked);
            
            #line default
            #line hidden
            return;
            case 8:
            this.ToggleButtonMembers = ((System.Windows.Controls.Primitives.ToggleButton)(target));
            
            #line 273 "..\..\..\..\Dashboard\Dashboardview.xaml"
            this.ToggleButtonMembers.Checked += new System.Windows.RoutedEventHandler(this.ToggleButton_Checked);
            
            #line default
            #line hidden
            
            #line 274 "..\..\..\..\Dashboard\Dashboardview.xaml"
            this.ToggleButtonMembers.Unchecked += new System.Windows.RoutedEventHandler(this.ToggleButton_Unchecked);
            
            #line default
            #line hidden
            return;
            case 9:
            this.SessionsDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 10:
            this.MembersDataGrid = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 11:
            this.PieChart2 = ((LiveCharts.Wpf.PieChart)(target));
            return;
            case 12:
            this.MyTopMembersContainer = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 13:
            this.DynamicMemberContainer = ((System.Windows.Controls.StackPanel)(target));
            return;
            case 14:
            this.HistogramChart = ((LiveCharts.Wpf.CartesianChart)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

