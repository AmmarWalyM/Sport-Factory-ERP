   M S B A M L   `   `   `  ����J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:SportFactoryApp.MembersSportFactoryApp.Members  5      G(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  5      1    +SportFactoryApp.Memberships.MembershipsView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      7local%clr-namespace:SportFactoryApp.Members     5      ;local1(clr-namespace:SportFactoryApp.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5        � 	Resources  5      :   4SportFactoryApp.Converters.FirstLetterMultiConverter   FirstLetterMultiConverter  CustomToggleButtonStyle �� 
TargetType �� Property �� Value �� 
TargetType �� CornerRadius �� Padding �� Triggers P� Property	 P� Value��%�  &	        &	        5
   
   6+   �� 5   
   " d�60   .�5      ��  � �� 5      �� 5      " d�6&   .R�5      �� #��z��6!   $ 20��5   !   $ 10q�5   !   ._�5      �� $��Center=�6/   $��Center=�6L   5       5      P� 5       �@d�	IsChecked$
	 TrueY�6;   . �5   "   ��  � �� �#AEFE146?   �� 5   "    � ��$
 Bold"�6?   �� 5   "    � ��
 �   �6?   5      P� 5       �@d�	IsChecked$	 FalseY�6;   . �5   "   ��  � ��
 �   �6?   �� 5    "    � ��$
 Bold"�6?   �� 5"   "    � �� �#AEFE146?   5#      5%      5'      5(      5*      .��5+      �� $��20q�6   .+�5-   
   �� $ 10��6   $ 10q�6$   $��10q�61   ��5.      �� 5/      
 �� ImageSource$8
 2pack://application:,,,/Images/members_cards_bg.png��6    j� Stretch$ UniformToFill=�6^   ._�51      �� .+�52      � $
��auto��6   $��10q�6$    � ColumnDefinitions 53      �� 54      $��* �6+   �� 56      $
��Auto �6+   .+�5<      �� $��Liste des abonnements��6    $��20(�6=   $
��Bold"�6K   $��0,0,0,0q�6]   $��0��6n   
�������6~   �� 5?      $ 15��6   ���#AEFE14$	��170��5@      $��Right=�6   ._�5A      �� -   5        $��Right=�5A   !   $��1��5B   	   $	��170��5C   	   $��10,0,0,0q�5D   	   
������ ��5J      �� 5K   "   " ��62   .R�5L   &   �� #��z��6-   $ 15��5N      ._�5O   *   ��  �� Orientation$ 
Horizontal=�65   $��Center=�6N   $��Center=�6i   .+�5P   .   �� $5��/pack://application:,,,/Images/icons8-add-48.png��64   $��24��6m   $��24��6x   $��5q�6�   �� 5Q   .   $��Nouvelle Abonnement��68   $��12(�6S   
���   �$��Center=�6t   $��Segoe UI)�6�   $
��Bold"�6�   5R   +   5S   '   5T   #   5V      5W      5X      � 5\      $��Stretch=�6   $��0, 0, 0, 10q�65    5]      �� 5^      $��* �6+   �� 5_      $��* �6+   �� 5`      $��* �6+   �� 5a      $��* �6+   .+�5e      �� $��0��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}    J� Opacity$	 0.8Q�6�   ._�5f      �� .+�5g      �� $ 
Horizontal=�6)   .+�5h   "   �� $D��>pack://application:,,,/Images/icons8-pièces-de-monnaie-94.png��6(   $��40��6o   �� 5i   "   $��Recette��6,   $��16(�6;   $
��Bold"�6I   
���   �$��Center=�6n   $��Center=�6�   $��10q�6�   5j      �� 5k      $ 
Horizontal=�6)   .+�5l      �� -   5         ��Name$! CalculateMonthlyRevenueText��5l   (   $��40(�6M   $
��Bold"�6[   
���   �$��Center=�6�   �� 5m      $��ce mois��6(   $��20(�67   $
��Bold"�6E   
���   �$��Bottom=�6j   5n      5o      5p      �� 5s      $��1��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}   $	 0.8Q�6�   ._�5t      �� .+�5u      �� $ 
Horizontal=�6)   .+�5v   "   �� $5��/pack://application:,,,/Images/icons8-one-94.png��6(   $��40��6a   �� 5w   "   $��Abonnement seance unique��6,   $��16(�6L   $
��Bold"�6Z   
���   �$��Center=�6   $��Center=�6�   $��10q�6�   5x      �� 5y      $ 
Horizontal=�6)   .+�5z      �� -   5        $! Calculate12SessionUsageText��5z   (   $��40(�6M   $
��Bold"�6[   
���   �$��Center=�6�   �� 5{      $��ce mois��6(   $��20(�67   $
��Bold"�6E   
���   �$��Bottom=�6j   5|      5}      5~      �� 5�      $��2��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   
�������$��1q�6}   $	 0.8Q�6�   ._�5�      �� .+�5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $A��;pack://application:,,,/Images/icons8-carte-de-membre-94.png��6(   $��40��6m   �� 5�   "   $��Abonnement P12S��6,   $��16(�6C   $
��Bold"�6Q   
���   �$��Center=�6v   $��Center=�6�   $��10q�6�   5�      �� 5�      $ 
Horizontal=�6)   .+�5�   "   �� -   5        $&  CountNewMembershipsThisMonthText��5�   ,   $��40(�6V   $
��Bold"�6d   
���   �$��Center=�6�   �� 5�      $��ce mois��6(   $��20(�67   $
��Bold"�6E   
���   �$��Bottom=�6j   5�      5�      5�      �� 5�      $��3��6   
�������$ 10��6@   $��5q�6R   $ 20q�6]   $	 0.8Q�6j   ._�5�      �� $��Center=�6%   $��Center=�6@   .+�5�      �� $ 
Horizontal=�6)   .+�5�   "   �� $9��3pack://application:,,,/Images/icons8-sablier-50.png��6(   $��40��6e   �� 5�   "   $��Nbr de seances P12S��6,   $��14(�6G   $
��Bold"�6U   
���   �$��Center=�6{   $��10q�6�   5�      �� 5�      $ 
Horizontal=�6)   .+�5�   "   �� -   5        $  CountSessionsThisMonthText��5�   ,   $��40(�6P   $
��Bold"�6^   
���   �6p   �� 5�   "   $��ce mois��6,   $��20(�6;   $
��Bold"�6I   
���   �$��Bottom=�6n   5�      5�      5�      5�      5�      5�      �� 5�   
   $ 20��6   $ 0q�6$   $��10q�60   $��Right=�6<   
���   �._�5�      �� $ 
Horizontal=�6   .+�5�      d� -   5         d�Name$ ToggleActiveButton��5�      $��Active��6;   #��[ 5�      $	��100��5�      $��40��6#   $	��0,0q�6/   5�      d� 5�      -   5        $ ToggleAllButton��5�      $
��Tous��68   #��[ 5�      $	��100��5�      $��40��6#   $	��0,0q�6/   5�      5�      5�      &   System.Windows.Controls.DataGrid  5�   
   -   5          Name$ MembershipDataGrid��5�      $��Stretch=�5�         ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ * 5�         AutoGenerateColumns$ False��5�      $��0q�5�      $	��400��5�      $
��True��5�         CanUserAddRows$ False��5�         CanUserResizeRows$ False��5�      $
��Bold"�5�      $��DN Sans)�5�         RowBackground
 �����
���   �   GridLinesVisibility$
 None=�5�         HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   HeadersVisibility$ Column=�5�         ColumnHeaderHeight$ 40Q�5�         	RowHeight$ 45Q�5�      $��14(�5�      $   HorizontalScrollBarVisibility$ Disabled=�5�      $��5q�5�      
������    ColumnHeaderStyle 5�      �� 5�      =  7System.Windows.Controls.Primitives.DataGridColumnHeader"  6   .�5�      ��  � ��
 ���� 63   �� 5�       � ��
 �   �63   �� 5�       � ��$ 15(�61   �� 5�       � ��$
 Left=�6C   �� 5�       � ��$ 	10,0,10,0q�60   �� 5�       � ��$ 0,0,0,1q�68   �� 5�       � ��
 �����64   5�         	CellStyle 5�      �� 5�      *  $System.Windows.Controls.DataGridCell"  6   .�5�      ��  � ��$ 15(�61   �� 5�       � ��$
 Left=�6<   �� 5�       � ��$ Center=�6:   �� 5�       � ��
 �   �63   �� 5�       � ��$ 0,0,10,0q�6/   �� 5�       � ��$
 Bold"�63   �� 5�       � ��$ DN Sans)�63   5�          RowStyle  5�      �� 5�      )  #System.Windows.Controls.DataGridRow"  6   .�5�      ��  � �� 5�      �� 5�      "  6.   .R�5�   "   �� #��z��6)   
������ $ 10��5�   !   $��2q�5�   !   ! J� SnapsToDevicePixels$
! True��5�   !   ._�5�   &   ?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  5�   #   5�      5�      �� 5�       � ��$ 14(�61   5�      "   Columns" 5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�      ,	  &System.Windows.Controls.DataGridColumn# 	  Header$# Membre��6)   $ 	  Width$	$ 400 69   %   CellTemplate% 5�      �� 5�      .R�5�      �� $ 
Horizontal=�6)   $��Center=�6B   .+�5  "   � $��40��6'   $��40��62   $��Center=�6>   $��10,0,0,0q�6Y   .+�5  &   A� 
���   �
������ $��40��6P   $��40��6[   �� 5  &   $��16(�60   $
��Bold"�5  (   
�������$��Center=�5  (   $��Center=�5  (   �� 5  *   .�6.   �5	  .   `� 5
  
   & `� 	Converter#& [  6   .1�5     �� ' �� Path$' Member.FirstName�6   �� 5     $' Member.LastName�6   5     .�5     5  +   5  '   5  #   �� 5  "   $��10,0,0,0q�6M   $��Center=�6_   ��6,   �� *Member.FullName+6_   5     5     5     0
  *System.Windows.Controls.DataGridTextColumn
  5     $# Type d'abonnement��6%   1  +System.Windows.Controls.DataGridBoundColumn(   Binding( 6@   �� *Type+
  5     $
# Prix��6%   ( 63   �� *Price+
  5     $# Statut��6%   ( 65   �� *Status+
  5     $# Date de debut ��6%   ( 6=   �� *Date+  5     $#  ��6)   $
$ Auto 63   % 5     �� 5     .R�5     �� $ 
Horizontal=�6)   $��Center=�6B   .+�5   "   �� -	   5        $��40��5   )   $��40��64   $	��0,0q�5!     
������ 
������ ) � Cursor$
) Hand��5%     .��5&  &   �� $=��7pack://application:,,,/Images/icons8-redémarrer-30.png��6,   $��30��5'     $��30��6   $��Uniform=�5(     5)  #   �� 5-  "   -
   5        $��40��5-  )   $��40��64   $	��0,0q�5.     
������ 
������ $
) Hand��52     .��53  &   �� $I��Cpack://application:,,,/Images/icons8-supprimer-pour-toujours-30.png��6,   $��30��54     $��30��6   $��Uniform=�55     56  #   �� 58  "   -   5        $��40��58  )   $��40��64   $	��0,0q�59  	   
������ 
������ $
) Hand��5=  	   .��5>  &   �� $6��0pack://application:,,,/Images/icons8-info-30.png��6,   $��30��5?     $��30��6   $��Uniform=�5@     5A  #   5C     5D     5F     5H     5P     5Q     