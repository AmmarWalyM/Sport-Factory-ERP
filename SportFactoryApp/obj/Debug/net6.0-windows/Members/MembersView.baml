   M S B A M L   `   `   `  ����J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:SportFactoryApp.MembersSportFactoryApp.Members  5      G(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  5      )    #SportFactoryApp.Members.MembersView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7local%clr-namespace:SportFactoryApp.Members     5      ;local1(clr-namespace:SportFactoryApp.Converters     5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        � 	Resources  5      :   4SportFactoryApp.Converters.FirstLetterMultiConverter   FirstLetterMultiConverter��%   &	          5	   
   6+   5      .��5      �� $��20q�6   .+�5   
   ��  �� CornerRadius$ 10��6    �� Padding$ 10q�6$   $��10q�61   ��5      �� 5       �� ImageSource$8 2pack://application:,,,/Images/members_cards_bg.png��6    j� Stretch$ UniformToFill=�6^   ._�5      �� .+�5      � $
��auto��6   $��10q�6$    � ColumnDefinitions 5      �� 5      $��* �6+   �� 5      $
��Auto �6+   .+�5      �� $��Liste des members��6    $��20(�69   $
��Bold"�6G   $��0,0,0,0q�6Y   $��0��6j   
�������6z   �� 5!      $ 15��6   ���#5C7CFA���#4CAF50$	��150��5"      $��Right=�6#   ._�5#      �� -   5        $��Right=�5#   !   $��1��5$   	   $	��150��5%   	   $��10,0,0,0q�5&   	   
������ ���#4CAF50$��1q�5)   	   ��5-      �� 5.   "    �� 
TargetType" ��62   .R�5/   &   �� #��z��6-   #��z��50      #��z��51      $ 15��52      ._�53   *   ��  �� Orientation$ 
Horizontal=�65   $��Center=�6N   $��Center=�6i   .+�54   .   �� $5��/pack://application:,,,/Images/icons8-add-48.png��64   $��24��6m   $��24��6x   $��5q�6�   �� 55   .   $��Nouveau Membre��68   $��12(�6N   
�������$��Center=�6o   $��Segoe UI)�6�   $
��Bold"�6�   56   +   57   '   58   #   5:      5;      5<      � 5@      $��Stretch=�6   $��0, 0, 0, 10q�65    5A      �� 5B      $��* �6+   �� 5C      $��* �6+   �� 5D      $��* �6+   �� 5E      $��* �6+   .+�5I      �� $��0��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}    J� Opacity$	 0.8Q�6�   ._�5J      �� .+�5K      �� $ 
Horizontal=�6)   .+�5L   "   �� $;��5pack://application:,,,/Images/icons8-male-user-94.png��6(   $��40��6g   �� 5M   "   $��Totale des members��6,   $��16(�6F   $
��Bold"�6T   
���   �$��Center=�6y   $��Center=�6�   $��10q�6�   5N      �� 5O      -   5        	 ��Name$	 TotalMembersText��5O   (   $��40(�6B   $
��Bold"�6P   
���   �$��Center=�6u   5P      5Q      �� 5T      $��1��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}   $	 0.8Q�6�   ._�5U      �� .+�5V      �� $ 
Horizontal=�6)   .+�5W   "   �� $<��6pack://application:,,,/Images/icons8-check-mark-94.png��6(   $��40��6h   �� 5X   "   $��Members actifs��6,   $��16(�6B   $
��Bold"�6P   
���   �$��Center=�6u   $��Center=�6�   $��10q�6�   5Y      �� 5Z      -   5        $	 ActiveMembersText��5Z   (   $��40(�6C   $
��Bold"�6Q   
���   �$��Center=�6v   5[      5\      �� 5_      $��2��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}   $	 0.8Q�6�   ._�5`      �� .+�5a      �� $ 
Horizontal=�6)   .+�5b   "   �� $>��8pack://application:,,,/Images/icons8-love-circled-94.png��6(   $��40��6j   �� 5d   "   $��Taux de fidélité��6,   $��16(�6D   $
��Bold"�6R   
���   �$��Center=�6w   $��Center=�6�   $��10q�6�   5e      �� 5f      -   5        $	 LoyaltyPercentageText��5f   (   $��40(�6G   $
��Bold"�6U   
���   �$��Center=�6z   5g      5h      �� 5i      $��3��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   $	 0.8Q�6j   ._�5j      �� $��Center=�6%   $��Center=�6@   .+�5k      �� $ 
Horizontal=�6)   .+�5l   "   �� $7��1pack://application:,,,/Images/icons8-crowd-94.png��6(   $��40��6c   �� 5m   "   $��Taux d'attendance��6,   $��14(�6E   $
��Bold"�6S   
���   �$��Center=�6y   $��10q�6�   5n      �� 5o      -   5        $	 AttendanceRateText��5o   (   $��40(�6D   $
��Bold"�6R   
���   �6d   5q      5r      5s      5t      5u      &   System.Windows.Controls.DataGrid  5v   
   -   5        
  Name$
 MembersDataGrid��5v      $��Stretch=�5w         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5x         AutoGenerateColumns$ False��5z      $��0q�5|      $	��500��5}      $
��True��5~         CanUserAddRows$ False��5         CanUserResizeRows$ False��5�      $
��Bold"�5�      $��DN Sans)�5�         RowBackground
 ���� 
���   �   GridLinesVisibility$
 None=�5�         HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   HeadersVisibility$ Column=�5�         ColumnHeaderHeight$ 40Q�5�         	RowHeight$ 45Q�5�      $��14(�5�      $   HorizontalScrollBarVisibility$ Disabled=�5�      $��5q�5�      
������  � Language$ fr-FR�5�         ColumnHeaderStyle 5�      �� 5�       �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5�      ��  �� Property � �� �� Value
 ���� 63   �� 5�       � ��
 �   �63   �� 5�       � ��$ 15(�61   �� 5�       � ��$
 Left=�6C   �� 5�       � ��$ 	10,0,10,0q�60   �� 5�       � ��$ 0,0,0,1q�68   �� 5�       � ��
 �����64   5�         	CellStyle 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      ��  � ��$ 15(�61   �� 5�       � ��$
 Left=�6<   �� 5�       � ��$ Center=�6:   �� 5�       � ��
 �   �63   �� 5�       � ��$ 0,0,10,0q�6/   �� 5�       � ��$
 Bold"�63   �� 5�       � ��$ DN Sans)�63   5�         RowStyle 5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   .�5�      ��  � �� 5�      �� 5�      "  6.   .R�5�   "   �� #��z��6)   
������ $ 10��5�   !   $��2q�5�   !    J� SnapsToDevicePixels$
 True��5�   !   ._�5�   &   ?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  5�   #   5�      5�      �� 5�       � ��$ 14(�61   5�         Columns 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,	  &System.Windows.Controls.DataGridColumn  	  Header$  Nom de Membre��6)   ! 	  Width$	! 400 6@   "   CellTemplate" 5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5�   "   � $��40��6'   $��40��62   $��Center=�6>   $��10,0,0,0q�6Y   .+�5�   &   A� 
���   �
������ $��40��6P   $��40��6[   �� 5�   &   $��16(�60   $
��Bold"�5�   (   
�������$��Center=�5�   (   $��Center=�5�   (   �� 5�   *   .�6.   �5�   .   `� 5�   
   # `� 	Converter## [  6   .1�5�      �� $ �� Path$$ 	FirstName�6   �� 5�      $$ LastName�6   5�      .�5�      5�   +   5�   '   5�   #   �� 5�   "   $��10,0,0,0q�6F   $��Center=�6X   ��6,   �� *
FullName+6X   5�      5�      5�      0
  *System.Windows.Controls.DataGridTextColumn
  5�      $  	Telephone��6%   1  +System.Windows.Controls.DataGridBoundColumn%   Binding% 68   �� *PhoneNumber+
  5�      $  Gendre��6%   % 65   �� *Gender+
  5�      $  Date de naissance ��6%   % 6A   �� *	BirthDate+& �� StringFormat$& {0: dd MMMM yyyy}��
  5�      $  Date d'adherence ��6%   % 6@   �� *	StartDate+  5�      $   ��6)   $
! Auto 63   " 5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5�   "   �� -   5        $��40��5�   )   $��40��64   $	��0,0q�5�      
������ 
������ ' � Cursor$
' Hand��5�      .��5�   &   �� $=��7pack://application:,,,/Images/icons8-redémarrer-30.png��6,   $��30��5�      $��30��6   $��Uniform=�5�      5�   #   �� 5�   "   -   5        $��40��5�   )   $��40��64   $	��0,0q�5�      
������ 
������ $
' Hand��5�      .��5�   &   �� $I��Cpack://application:,,,/Images/icons8-supprimer-pour-toujours-30.png��6,   $��30��5�      $��30��6   $��Uniform=�5�      5�   #   �� 5   "   -	   5        $��40��5   )   $��40��64   $	��0,0q�5  	   
������ 
������ $
' Hand��5  	   .��5  &   �� $6��0pack://application:,,,/Images/icons8-info-30.png��6,   $��30��5     $��30��6   $��Uniform=�5     5	  #   5     5     5     5     5     5     