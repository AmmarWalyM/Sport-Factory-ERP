   M S B A M L   `   `   `  ����J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullE'clr-namespace:SportFactoryApp.DashboardSportFactoryApp.Dashboard  5      G(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  5      U QLiveCharts.Wpf, Version=0.9.7.0, Culture=neutral, PublicKeyToken=0bc1f845d1ebb8dfG4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5	      G4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.WpfLiveCharts.Wpf 5
      E'clr-namespace:SportFactoryApp.DashboardSportFactoryApp.Dashboard  5      -    'SportFactoryApp.Dashboard.Dashboardview   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      9local'clr-namespace:SportFactoryApp.Dashboard     5      ;local1(clr-namespace:SportFactoryApp.Converters     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5      Ccharting4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  5	      >lvc4clr-namespace:LiveCharts.Wpf;assembly=LiveCharts.Wpf  5
      b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      0uc'clr-namespace:SportFactoryApp.Dashboard  5        � 	Resources  5       �� MergedDictionaries �� Source:   4SportFactoryApp.Converters.OADateToDateTimeConverter   OADateToDateTimeConverter9   3SportFactoryApp.Converters.SalesComparisonConverter  SalesComparisonConverter:   4SportFactoryApp.Converters.FirstLetterMultiConverter  FirstLetterMultiConverter  
BlackColor �� Color  	GreyColor  	titleText �� 
TargetType �� Property �� Value  whiteBorder  secondaryText  CustomToggleButtonStyle �� 
TargetType �� CornerRadius	 �� Padding
 �� Triggers P� Property P� Value�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   %	  &	        &	      &	 &     &	 9     &	 Z     &	 {     7  &	 	    &	 �    7  &	 E      5      6/     5      6.     5      6/   �� 5      $ #083353��61   �� 5      $ #B7B7B7��60   �� 5      " ��6&   .�5      ��  � ��8   6/   �� 5       � ��$ 15(�6-   �� 5       � ��$
 Bold"�6/   5       �� 5"      " ��6(   .�5#      ��  � �� �#ffffff6/   �� 5$       �@��CornerRadius$ 15��61   �� 5%       �@��Padding$ 20q�6,   5&      �� 5)      " ��6*   .�5*      ��  � ��8   6/   �� 5+       � ��$ 12(�6-   �� 5,       � ��$ 0 5 0 5q�6+   5-      �� 5.      " d�64   .�5/      ��  � �� 50      �� 51      " d�6*   .R�52      �� #��z��6%   $ 20��54      $	 10q�55      ._�57   "   �� $��Center=�63   $��Center=�6P   58      
 59      P� 5:   "    �@d�	IsChecked$
 TrueY�6?   . �5;   &   ��  � �� �#AEFE146C   �� 5<   &    � ��$
 Bold"�6C   �� 5>   &    � ��
 �   �6C   5?   #   P� 5@   "    �@d�	IsChecked$ FalseY�6?   . �5A   &   ��  � ��
 �   �6C   �� 5B   &    � ��$
 Bold"�6C   �� 5D   &    � �� �#AEFE146C   5E   #   5G      5I      5J      5K      .��5N      �  � RowDefinitions 5O   
   �� 5P      $��0.08* �6   �� 5Q      $
��0.9* �6   .+�5S   
   � $��0��6    � ColumnDefinitions 5T      �� 5U      $��* �6#   �� 5V      $��* �6#   .+�5X      �� 
�������$ 10��6)   
�������$��1q�6S   $��35��6g   $
��Left=�6s   $��Stretch=�6�   ._�5Y      �� $��0��6   $��Center=�6.    �� Orientation$ 
Horizontal=�6I   .+�5Z      �� $<��6pack://application:,,,/Images/icons8-calendrier-94.png��6   $��30��6\   $��5q�6g   #  Xceed.Wpf.Toolkit.RangeSlider  5[      -   5          Name$ DateRangeSlider��5]      $��Center=�5\         TickFrequency$ 1Q�5^         IsSnapToTickEnabled$
 True��5_      $	��200��5`      $��5q�5a         Minimum 5b      �� *MinimumDateInOADate+   Maximum 5c      �� *MaximumDateInOADate+   
LowerValue 5d      �� *
LowerBound+ �� Mode$ TwoWay=�   HigherValue 5e      �� *
UpperBound+$ TwoWay=�5g      (  "System.Windows.Controls.DatePicker  5j      -   5          Name$ LowerBoundDatePicker��5j   !      SelectedDate 5k      �� *
LowerBound+$ TwoWay=� �� 	Converter# [   �� UpdateSourceTrigger$ PropertyChanged=�   DisplayDateStart 5l      �� *MinimumDateInOADate+# [     DisplayDateEnd 5m      �� *
UpperBound+# [    5o      -   5        $ UpperBoundDatePicker��5o   !    5p      �� *
UpperBound+$ TwoWay=�# [  $ PropertyChanged=� 5q      �� *
LowerBound+# [   5r      �� *MaximumDateInOADate+# [  5t      5u      5v      �� 5w   
   $��1��6   $��Right=�6%   $ 
Horizontal=�6A   .+�5x      �� -   5        $��Cette semaine��5x      $
��auto��6.   $
��auto��6<   $��5q�6I   $��10(�6l   $��Center=�6z   $��SemiBold"�6�   ���#aefe146�   �� 5y      -   5        $��Ce mois��5y      $
��auto��6'   $
��auto��65   $��5q�6B   $��10(�6f   $��Center=�6t   $��SemiBold"�6�   ���#aefe146�   �� 5z      -   5        $��Jusqu'à Aujourd'hui��5z      $
��auto��64   $
��auto��6B   $��5q�6O   $��10(�6s   $��Center=�6�   $��SemiBold"�6�   ���#aefe146�   5{      � 5~   
   $��1��6    5      �� 5�      $
��0.7* �6#   �� 5�      $
��0.2* �6#   .+�5�      � $��0��6    5�      �� 5�      �� 5�      $��4* �6$   .+�5�      � $��0��6   $��5,0,5,0q�6$    5�      �� 5�      $��* �6+   �� 5�      $��* �6+   �� 5�      $��* �6+   .+�5�      �� $��5,0,5,0q�6   $��0��6.   
�������$ 15��6Q   $	 20q�6c   
�������$��1q�6�   ._�5�      �  5�      �� 5�   "   $
��Auto �60   �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      �� $��0��6)   $ 
Horizontal=�66   .+�5�   "   �� $7��1pack://application:,,,/Images/icons8-crowd-94.png��6(   $��30��6c   $��0,0,5,0q�6n   $	��Top=�6   �� 5�   "   $��Nombre des members��6,   $��14(�6F   $��SemiBold"�6T   
�������$��Center=�6|   5�      �� 5�      $��1��6)   $
��Left=�66   .+�5�   "   �� $��35(�6R   $
��Bold"�6`   
���   ���6,   �� *DistinctMembersCount+6r   5�      �� 5�      $ 
Horizontal=�6)   $��2��6B   $��Bottom=�6O   .+�5�   "   �� $
��↑ ��6,   $��14(�66   
��� � �6D   �� 5�   "   $��14(�6-   
��� � ���5�   &   `� 5�   *    `� 	Converter# [ 67   .1�5�   .   ��  �� Path$' !PreviousRangeDistinctMembersCount�66   �� 5�   .   $% CurrentWeekDistinctMembersCount�66   5�   +   5�   #   �� 5�   "   $�� du semaine derniere.��6,   $��SemiBold"�6I   $��Center=�6_   5�      5�      5�      �� 5�      $��5,0,5,0q�6   $��1��6.   
�������$ 15��6Q   $	 20q�6c   
�������$��1q�6�   ._�5�      �  5�      �� 5�   "   $��* �60   �� 5�   "   $��2* �60   �� 5�   "   $��* �60   .+�5�      �� $��0��6)   $ 
Horizontal=�66   .+�5�   "   �� $D��>pack://application:,,,/Images/icons8-pièces-de-monnaie-94.png��6(   $��30��6o   $��0,0,5,0q�6z   �� 5�   "   $��Revenue Totale��6,   $��14(�6B   $��SemiBold"�6P   
�������$��0��6x   $��Center=�6�   5�      �� 5�      $��1��6)   $
��Left=�66   .+�5�   "   �� $��35(�6a   $
��Bold"�6o   
���   ���6,   �� *
TotalSales+  �� StringFormat$  {0} DT��6�   5�      �� 5�      $ 
Horizontal=�6)   $��2��6B   $��Bottom=�6O   .+�5�   "   �� $
��↑ ��6,   $��14(�66   
��� � �6D   �� 5�   "   $��14(�6,   
��� � ���5�   &   `� 5�   *   # [ 67   .1�5�   .   �� $ PreviousRangeTotalSales�66   �� 5�   .   $ CurrentWeekTotalSales�66   5�   +   5�   #   �� 5�   "   $�� du semaine derniere.��6,   $��SemiBold"�6I   $��Center=�6_   5�      5�      5�      �� 5�      $��5,0,5,0q�6   $��2��6.   
�������$ 15��6Q   $	 20q�6c   
�������$��1q�6�   ._�5�      �  5�      �� 5�   "   $
��Auto �60   �� 5�   "   $��* �60   �� 5�   "   $
��Auto �60   .+�5�      �� $��0��6)   $ 
Horizontal=�66   .+�5�   "   �� $A��;pack://application:,,,/Images/icons8-carte-de-membre-94.png��6(   $��30��6m   $��0,0,5,0q�6x   �� 5�   "   $��Nombre des abonnements��6,   $��14(�6J   $��SemiBold"�6X   
�������$��0��6�   $��Center=�6�   5�      �� 5�      $��1��6)   $
��Left=�66   .+�5�   "   �� $��35(�6V   $
��Bold"�6d   
���   ���6,   �� *DistinctMembershipsCount+6v   5�      �� 5�      $ 
Horizontal=�6)   $��2��6B   $��Bottom=�6O   .+�5�   "   �� $
��↑ ��6,   $��14(�66   
��� � �6D   �� 5�   "   $��14(�6,   
��� � ���5�   &   `� 5�   *   # [ 67   .1�5�   .   �� $+ %PreviousRangeDistinctMembershipsCount�66   �� 5�   .   $) #CurrentWeekDistinctMembershipsCount�66   5�   +   5�   #   �� 5�   "   $�� du semaine derniere.��6,   $��SemiBold"�6I   $��Center=�6_   5�      5�      5�      5�      � 5�      $��1��6    5�      �� 5�      $��8* �6+   �� 5      $��5* �6+   .+�5     �  5     �� 5     $
��162* �6/   �� 5     $
��221* �6/    5     �� 5	     $
��Auto �6,   �� 5     $��* �6,   .+�5     �� $��0��6!   $ 20��6.   $	 0q�6@   $��	0,10,0,10q�6L   $
��Left=�6_   
���   �$��2��6�   ._�5     �� $ 
Horizontal=�6)   .+�5  "   d� -   5        ! d�Name$! ToggleButtonSessions��5  /   $��Show Sessions��6M   #��[ 5     $	��120��5     $��40��6'   $	��0,0q�63   5     d� 5  "   -   5        $! ToggleButtonMembers��5  /   $��Show Members��6L   #��[ 5     $	��120��5     $��40��6'   $��5,0,0,0q�63   5     5     5     � 5"     $��1��6   $��2��6,   .+�5$     &   System.Windows.Controls.DataGrid  -	   5        "  Name$" SessionsDataGrid��5$  '   #   AutoGenerateColumns$# False��5&     $   CanUserAddRows$$ False��5'     %   GridLinesVisibility$% 
Horizontal=�5(     &   HorizontalGridLinesBrush& �	#FFD7D7D7'   EnableRowVirtualization$' False��5*     (   
IsReadOnly$
( True��5+     
���   �)   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$) * 5-      	 MaterialDesignDataGrid#��[	 5.      
 MaterialDesignPaper*   RowBackground#* � 
 5/     +   AlternatingRowBackground#+ � 
 50     $y�Visible=�51     ��5%     �� *FilteredSessions+,   Columns, 52  "   0  *System.Windows.Controls.DataGridTextColumn  53  &   ,	  &System.Windows.Controls.DataGridColumn- 	  Header$- Date de seance��69   1
  +System.Windows.Controls.DataGridBoundColumn. 
  Binding. 6Q   �� *SessionDate+$  
MM/dd/yyyy��  54  &   $- Membre��69   . 6I   �� *Member.FullName+  55  &   $- Type d'abonnement��69   . 6T   �� *Membership.Type+57       59     -
   5        $" MembersDataGrid��59  '   $# False��5;     $$ False��5<     $% 
Horizontal=�5=     & �	#FFD7D7D7$' False��5?     $
( True��5@     
���   �#��[	 5B     #* � 
 5C     #+ � 
 5D     $y�	Collapsed=�5E     ��5:     �� *FilteredMembers+, 5F  "     5G  &   $- Membre��69   . 6I   �� *Member.FullName+  5H  &   $
- Type��69   . 6G   �� *Type+  5I  &   $
- Prix��69   . 6G   �� *Price+  5J  &   $- Statut��69   . 6I   �� *Status+  5K  &   $- Date de debut��69   . 6P   �� *Date+$  
MM/dd/yyyy��5M     5O     5Q     � 5T     $��1��6    5U     �� 5V     $��* �6,   �� 5W     $��* �6,   .+�5Y     � $��0��6   $��10q�6,   .+�5Z     �� 
�������$ 15��68   
�������$��1q�6c   $��Stretch=�6w   $��Stretch=�6�   ._�5[  "   � $��10q�6'    5\  &   �� 5]  *   $
��Auto �68   �� 5_  *   $��* �68   �� 5a  *   $
��Auto �68   .+�5f  &   �� $��Distrubition des senaces��60   $��18(�6P   $
��Bold"�6^   $��Center=�6p   $��	0,10,0,10q�6�   $��0��6�     LiveCharts.Wpf.PieChart  5i  &   -   5        /  Name$/ 	PieChart2��5i  8   $��40��6K   $	��100��6Z   $��	0,10,0,10q�6j   0   InnerRadius$0 60Q�5j     $��Stretch=�5k     $��Stretch=�5l     $��1��5m     5o  '   �� 5q  &   $��1��60   $��24(�5r     $
��Bold"�5s     $��Center=�5t     $��Center=�5u     
���������5q  =   �� *
TotalSales+5v     �� 5w  &   $ 
Horizontal=�61   $��Center=�6J   $��2��6g   $��	0,10,0,10q�6t   .+�5x  *   �� $ 
Horizontal=�65   $
��10,0q�6N   .+�5y  .   A� $��10��66   $��10��6A   ���#aefe14$	��5,0q�6]   �� 5z  .   $��Seance Unique��68   $��14(�6M   $��Center=�6[   $	��5,0q�6v   5{  +   �� 5|  *   $ 
Horizontal=�65   $
��10,0q�6N   .+�5}  .   A� $��10��66   $��10��6A   
���   �$	��5,0q�6[   �� 5~  .   $��	12 Seance��68   $��14(�6I   $��Center=�6W   $	��5,0q�6r   5  +   5�  '   5�  #   5�     5�     � 5�     $��1��6   $��10q�6,   .+�5�     �� 
�������$ 15��68   $	 20q�6J   
�������$��1q�6o   $��Stretch=�5�     $��Stretch=�6+   ._�5�  "   #  LiveCharts.Wpf.CartesianChart  $��	5,15,0,15q�65   &   LiveCharts.Wpf.Charts.Base.Chart1   LegendLocation$1 Bottom=�6H   2   Series2 6`   �� *LineChartSeries+3   DataTooltip3 5�  &   #  LiveCharts.Wpf.DefaultTooltip  5�  *   
���   ����#AEFE144 J� Opacity$	4 0.7Q�6e   5   
BulletSize$5 10Q�6s   6   AxisX6 5�  *     LiveCharts.Wpf.Axis  7   Title$
7 Date��63   8   
Foreground8 �#90A3B29   
ShowLabels$
9 True��6s   :   Labels: 6@   �� *
DateLabels+;   	Separator; 5�  .     LiveCharts.Wpf.Separator  5�  2   <   StrokeThickness$< 0Q�6@   =   Step$= 2Q�6T   5�  +   >   AxisY> 5�  *     $7 Revenue��63   ?   MinValue$? 0Q�6C   @   MaxValue$	@ 500Q�6P   8 �#90A3B2$
9 True��6t   ; 5�  .     5�  2   $< 0Q�6@   5�  +   5�  #   5�     5�     5�     5�     5�     � 5�     $��1��6    5�     �� 5�     $��* �6$   �� 5�     $��* �6$   .+�5�     � $��0��6   $��5,0,5,5q�6$   .+�5�     �� 
�������$ 15��60   
�������$��1q�6[   $��Stretch=�6p   $��Stretch=�6�   ._�5�     �� -   5        A ��Name$A MyTopMembersContainer��5�  %   $ Vertical=�6D   $��10q�6[   .+�5�     �� $��Les TOP Membres��6(   #��[ 6?   
���   �6b   �� 5�     $e��_Les 3 meilleurs membres en fonction de la participation aux séances et des revenus générés.��6(   $
��Wrap=�6�   $��0 5 0 10q�6�   #��[ 6�   $��9(�6�   �� 5�     -   5        $A DynamicMemberContainer��5�  )   $ Vertical=�6I   5�     5�     5�     � 5�     $��1��6   $��5q�6$   .+�5�     �� 
�������$ 15��61   $	 10q�6C   
�������$��1q�6h   ._�5�     �  5�     �� 5�  "   $��* �60   �� 5�  "   $
��auto �60   .+�5�     �� $��Revenue par jour��6(   #��[ 6@   
���   �6c     5�     -   5        $��HistogramChart��5�  1   $��	0 40 0 30q�6j   2 6G   �� *HistogramSeries+6 5�  &     : 60   �� *DaysOfWeekLabels+; 5�  *     5�  .   $= 1Q�6<   5�  '   > 5�  &     $7 Revenue��6/   B   LabelFormatterB 6?   �� *
YFormatter+5�     �� 5�     $ 
Horizontal=�6)   $��Center=�6B   $��2��6_   $��	0,10,0,10q�6l   .+�5�  "   �� $ 
Horizontal=�6-   $
��10,0q�6F   .+�5�  &   A� $��10��6.   $��10��69   ���#adde34$	��5,0q�6U   �� 5�  &   $��Seance Unique��60   $��14(�6E   $��Center=�6S   $	��5,0q�6n   5�  #   �� 5�  "   $ 
Horizontal=�6-   $
��10,0q�6F   .+�5�  &   A� $��10��6.   $��10��69   ���#1b493c$	��5,0q�6U   �� 5�  &   $��	12 Seance��60   $��14(�6A   $��Center=�6O   $	��5,0q�6j   5�  #   5�     5�     5�     5�     5�     5�     5�     5�     