   M S B A M L   `   `   `  ���� U  QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf   SportFactoryApp"   SportFactoryApp.OverviewView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     Dlvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf     X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  :d2http://schemas.microsoft.com/expression/blend/2008  Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  .��� $��	4,6,-4,-6q�  � RowDefinitions  �� $
��Auto ��� $
��Auto ��� $��* ��� $
��Auto �.+��� $��0�� �� Orientation$ 
Horizontal=�$��
2,10,18,10q�.+�(  "Xceed.Wpf.Toolkit.WatermarkTextBox  -     Name$ SearchTextBox��$	��200��$��0,0,10,0q�   	Watermark$ Search by member name���� -   $��Search��� $��1�� � Orientation$ 
Horizontal=�$
��Left=�$��10q�.+��� 
�������$��1q� �� CornerRadius$ 5��
�������$��5q� �� Padding$ 10q�$	��150��$	��100��._��� .+��� $��Total Sessions Today��$
��Bold"�$��0,0,0,5q��� -    ��Name$! TotalSessionsTodayTextBlock��$��24(�
���   �0�� 
�������$��1q�$ 5��
�������$��5q�$ 10q�$	��150��$	��100��._��� .+��� $��Total Members��$
��Bold"�$��0,0,0,5q��� -   $ TotalMembersTextBlock��$��24(�
���   �0�� 
�������$��1q�$ 5��
�������$��5q�$ 10q�$	��150��$	��100��._��� .+��� $��Active Members��$
��Bold"�$��0,0,0,5q��� -   $ ActiveMembersTextBlock��$��24(�
���   �0#   LiveCharts.Wpf.CartesianChart  -     Name$ PeakUsageChart��$��2��$	��150��$��10q�&    LiveCharts.Wpf.Charts.Base.Chart	   Series	    LiveCharts.Wpf.LineSeries     LiveCharts.Wpf.Series
   Title$
 
Peak Usage��   PointGeometrySize$ 5Q�   Values �� *PeakUsageValues+   AxisX    LiveCharts.Wpf.Axis     Title$
 Time��   LabelFormatter �� *TimeFormatter+   AxisY   $ Sessions��  -   $ TimelineChart��$��3��$	��150��$��10q�	   $
 Sessions Over Time��$ 5Q� �� *TimelineValues+   $
 Date�� �� *DateFormatter+   $ Number of Sessions���� -    ��Name$ SessionsListView��$��4��$��10q� �� View �� .P��� $��Member Name�� �� Width$	 150�� �� DisplayMemberBinding �� *
MemberName+�� $��Session Date��$	 150�� �� *SessionDate+�� $��Session Number��$	 100�� �� *SessionNumber+