   M S B A M L   `   `   `  ���� J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullA%clr-namespace:SportFactoryApp.MembersSportFactoryApp.Members  G(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  )    #SportFactoryApp.Members.MembersView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     7local%clr-namespace:SportFactoryApp.Members     ;local1(clr-namespace:SportFactoryApp.Converters     X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit    � 	Resources  :   4SportFactoryApp.Converters.FirstLetterMultiConverter   FirstLetterMultiConverter��%   &	          .���� $��20q�.+���  �� CornerRadius$ 10�� �� Padding$ 10q�$��10q�����  �� ImageSource$8 2pack://application:,,,/Images/members_cards_bg.png�� j� Stretch$ UniformToFill=�._��� .+�� $
��auto��$��10q� � ColumnDefinitions �� $��* ��� $
��Auto �.+��� $��Liste des members��$��20(�$
��Bold"�$��0,0,0,0q�$��0��
��������� $ 15�����#5C7CFA���#4CAF50$	��150��$��Right=�._��� -   $��Right=�$��1��$	��150��$��10,0,0,0q�
������ ���#4CAF50$��1q�����  �� 
TargetType" ��.R��� #��z��#��z��#��z��$ 15��._���  �� Orientation$ 
Horizontal=�$��Center=�$��Center=�.+��� $5��/pack://application:,,,/Images/icons8-add-48.png��$��24��$��24��$��5q��� $��Nouveau Membre��$��12(�
�������$��Center=�$��Segoe UI)�$
��Bold"�� $��Stretch=�$��0, 0, 0, 10q� �� $��* ��� $��* ��� $��* ��� $��* �.+��� $��0��
�������$ 10��$��5q�$ 20q�
�������$��1q� J� Opacity$	 0.8Q�._��� .+��� $ 
Horizontal=�.+��� $;��5pack://application:,,,/Images/icons8-male-user-94.png��$��40���� $��Totale des members��$��16(�$
��Bold"�
���   �$��Center=�$��Center=�$��10q��� -   	 ��Name$	 TotalMembersText��$��40(�$
��Bold"�
���   �$��Center=��� $��1��
�������$ 10��$��5q�$ 20q�
�������$��1q�$	 0.8Q�._��� .+��� $ 
Horizontal=�.+��� $<��6pack://application:,,,/Images/icons8-check-mark-94.png��$��40���� $��Members actifs��$��16(�$
��Bold"�
���   �$��Center=�$��Center=�$��10q��� -   $	 ActiveMembersText��$��40(�$
��Bold"�
���   �$��Center=��� $��2��
�������$ 10��$��5q�$ 20q�
�������$��1q�$	 0.8Q�._��� .+��� $ 
Horizontal=�.+��� $>��8pack://application:,,,/Images/icons8-love-circled-94.png��$��40���� $��Taux de fidélité��$��16(�$
��Bold"�
���   �$��Center=�$��Center=�$��10q��� -   $	 LoyaltyPercentageText��$��40(�$
��Bold"�
���   �$��Center=��� $��3��
�������$ 10��$��5q�$ 20q�$	 0.8Q�._��� $��Center=�$��Center=�.+��� $ 
Horizontal=�.+��� $7��1pack://application:,,,/Images/icons8-crowd-94.png��$��40���� $��Taux d'attendance��$��14(�$
��Bold"�
���   �$��Center=�$��10q��� -   $	 AttendanceRateText��$��40(�$
��Bold"�
���   �&   System.Windows.Controls.DataGrid  -   
  Name$
 MembersDataGrid��$��Stretch=�   ColumnWidth5  /System.Windows.Controls.DataGridLengthConverter$ *    AutoGenerateColumns$ False��$��0q�$	��500��$
��True��   CanUserAddRows$ False��   CanUserResizeRows$ False��$
��Bold"�$��DN Sans)�   RowBackground
 ���� 
���   �   GridLinesVisibility$
 None=�   HorizontalGridLinesBrush
 �����   VerticalGridLinesBrush
 �����   HeadersVisibility$ Column=�   ColumnHeaderHeight$ 40Q�   	RowHeight$ 45Q�$��14(�$   HorizontalScrollBarVisibility$ Disabled=�$��5q�
������    ColumnHeaderStyle ��  �� 
TargetType=  7System.Windows.Controls.Primitives.DataGridColumnHeader"  .���  �� Property � �� �� Value
 ���� ��  � ��
 �   ���  � ��$ 15(���  � ��$
 Left=���  � ��$ 	10,0,10,0q���  � ��$ 0,0,0,1q���  � ��
 �����   	CellStyle �� *  $System.Windows.Controls.DataGridCell"  .���  � ��$ 15(���  � ��$
 Left=���  � ��$ Center=���  � ��
 �   ���  � ��$ 0,0,10,0q���  � ��$
 Bold"���  � ��$ DN Sans)�   RowStyle �� )  #System.Windows.Controls.DataGridRow"  .���  � �� �� "  .R��� #��z��
������ $ 10��$��2q� J� SnapsToDevicePixels$
 True��._�?  9System.Windows.Controls.Primitives.DataGridCellsPresenter  ��  � ��$ 14(�   Columns 4  .System.Windows.Controls.DataGridTemplateColumn  ,	  &System.Windows.Controls.DataGridColumn 	  Header$ Nom de Membre��  	  Width$	  400 !   CellTemplate! �� .R��� $ 
Horizontal=�$��Center=�.+�� $��40��$��40��$��Center=�$��10,0,0,0q�.+�A� ���	#FF007ACC
������ $��40��$��40���� $��16(�$
��Bold"�
�������$��Center=�$��Center=��� .��`� " `� 	Converter#" [  .1��� # �� Path$# 	FirstName��� $# LastName�.��� $��10,0,0,0q�$��Center=����� *
FullName+0
  *System.Windows.Controls.DataGridTextColumn
  $ 	Telephone��1  +System.Windows.Controls.DataGridBoundColumn$   Binding$ �� *PhoneNumber+
  $ Gendre��$ �� *Gender+
  $ Date de naissance ��$ �� *	BirthDate+% �� StringFormat$% {0: dd MMMM yyyy}��
  $ Date d'adherence ��$ �� *	StartDate+  $  ��$
  Auto ! �� .R��� $ 
Horizontal=�$��Center=�.+��� -   $��40��$��40��$	��0,0q�
������ 
������ & � Cursor$
& Hand��.���� $=��7pack://application:,,,/Images/icons8-redémarrer-30.png��$��30��$��30��$��Uniform=��� -   $��40��$��40��$	��0,0q�
������ 
������ $
& Hand��.���� $I��Cpack://application:,,,/Images/icons8-supprimer-pour-toujours-30.png��$��30��$��30��$��Uniform=��� -	   $��40��$��40��$	��0,0q�
������ 
������ $
& Hand��.���� $6��0pack://application:,,,/Images/icons8-info-30.png��$��30��$��30��$��Uniform=�