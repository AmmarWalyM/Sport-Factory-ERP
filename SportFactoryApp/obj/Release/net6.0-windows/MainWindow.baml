   M S B A M L   `   `   `  ���� J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null1clr-namespace:SportFactoryAppSportFactoryApp  G(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters       SportFactoryApp.MainWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  )localclr-namespace:SportFactoryApp  5local1(clr-namespace:SportFactoryApp.Converters    � Icon$.  (pack://application:,,,/Images/SFLogo.ico�� � Title$ SPORT FACTORY ERP�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowState$ 	Maximized=�����  �� ImageSource$- 'pack://application:,,,/Images/MWBG1.png�� j� Stretch$ UniformToFill=� �� Opacity$ 1Q� � 	Resources :   4SportFactoryApp.Converters.FirstLetterMultiConverter   FirstLetterMultiConverter  SidebarButtonStyle	 �� 
TargetType
 �� Property �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value��%Q  &	        &	        �� "	 d�.��� 
 � ��$ Arial)��� 
 � ��$ 14(��� 
 � ��
 �   ��� 
 � ��$
 10,5q��� 
 � ��$ 10q��� 
 � ��$ 40���� 
 � �� �#CCCCCC�� 
 � ��$ 0q��� 
 � ��$ Stretch=��� 
 � ��$ Center=��� 
 �@�Cursor$
 Hand���� 
 � �� �� " d�.R��� $ 20��#��z��#��z��#��z��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ��� 
 � ��
 �   ��� 
 � �� �#FFFFFFP�  �@d�	IsChecked$
 TrueY�. ��� 
 � ��
 �   ��� 
 � �� �#FFFFFF.���  � RowDefinitions �� $��* ��� $��9* � � ColumnDefinitions �� $	��300 ��� $��* �.+�� -   $��30��$	��Top=�
���   �$��0��$��2��.+���  �� Orientation$ 
Horizontal=�$	��Top=�.+��� $.��(pack://application:,,,/Images/SFLogo.png��$��25��$��25��$��10q��� $��SPORT FACTORY ERP��$��Center=�
�������$��16(�$
��Bold"�$��10,0,0,0q��� $ 
Horizontal=�$��Right=�$��Center=�$��30��.+��� -    ��Name$ MinimizeRestoreButton��$��_��
���   ����#C0C0C0
���   �$��40���� -   $ MaximizeRestoreButton��$	��❐��
���   ����#C0C0C0
���   �$��40���� -   $ CloseButton��$��X��
���  �����#C0C0C0
���  ��$��40��� $��0��$��1��
������ $��50��$	��Top=�$��0,40,0,0q� �� $��* ��� $
��Auto ��� $
��Auto �.+��� $ 15�����#f0f2f5$��0��$��	20,0,50,5q� �� Padding$ 10q�$
��left=�$	��400��._��  �� $
��Auto � �� $
��Auto ��� $��* �.+��� $:��4pack://application:,,,/Images/icons8-chercher-30.png��$��20��$��20��$��Center=�$��0��$	��5,0q�(  "Xceed.Wpf.Toolkit.WatermarkTextBox  -     Name$ SearchTextBox��$��1��$��30��$��Center=�   	Watermark$ Rechercher...��$��0q�$	��5,5q����#f0f2f5� -    �Name$ SearchResultPopup�� � 	StaysOpen$ False�� � AllowsTransparency$
 True��$	��250��$
��Auto�� � PlacementTarget ��  �� ElementName$ SearchTextBox��.���� 
�������$��0q�$ 10��$ 10q�._��� -    ��Name$ SearchResultListBox��
������ $��0q�$
��Auto=����� .R��� $ 
Horizontal=�$��5q�.+��� $��16(�
���   �$��Center=����� *
FullName+�� $��40��$��40��$��0,0,0,0q�$
}�True��$��Right=�$ 20��
�������._��� $��40��$��40��
������ 
������ $��1��$��Center=�.���� $?��9pack://application:,,,/Images/icons8-notifications-30.png��$��25���� $ 
Horizontal=�$��Center=�$��2��$��	10,0,10,0q�.+�A� $��40��$��40��$��Right=�$��0,0,10,0q����� $9 3pack://application:,,,/Images/icons8-account-30.png���� -    ��Name$ LoggedInUserTextBlock��$��Center=�$��16(�$
��Bold"����#34495E$��0,0,10,0q��� $ 20��$��2��$��0��$��10,40,10,10q�$��Stretch=����� $, &pack://application:,,,/Images/SFBG.png��._��� -	    ��Name$ Sidebar��$��Center=�$��Stretch=�.+��� -
     ��Name$  	LogoImage��$.��(pack://application:,,,/Images/SFLogo.png��$	��100��$��10q�$	��Top=�$��Center=��� $��15q�$��Sequel Sans)�$
��Bold"�$��30(��� $�Bienvenue à���� �� $�Factory System!��d� -   ! d�Name$! OverviewToggleButton��#��[ $	��250��$��40��.���� $ 
Horizontal=�$��Center=�$
��Left=�$	��250��.+��� $9��3pack://application:,,,/Images/icons8-accueil-30.png��$��30��$��	15,0,10,0q��� $��Overview��$��Center=�$��DN Sans)�$��5q�d� -   #��[ $	��250��$��40��$��0q�.���� $ 
Horizontal=�$��Center=�$	��250��.+��� $=��7pack://application:,,,/Images/icons8-conférence-30.png��$��30��$��	15,0,10,0q��� $��Membres��$��Center=�$��5q�d� -   $! MembershipToggleButton��#��[ $	��250��$��40��.���� $ 
Horizontal=�$��Center=�$	��250��.+��� $A��;pack://application:,,,/Images/icons8-carte-de-membre-30.png��$��30��$��	15,0,10,0q��� $��Abonnements��$��Center=�$��5q��  �� $��50 ��� $��* �.+��� -   " ��Name$" 	ChatPanel��$ 30�����#f0f2f5
���   �$��0q�$��1��$��1��$��10q�._��  �� $
��auto ��� $��* ��� $
��auto �.+��� -   # ��Name$# ToggleVisibilityCheckBox��$��	Show Chat��$��10q�$y�	Collapsed=�$ d� 	IsChecked$ �� $ UserComboBox��% �� Path$% SelectedItem�& �� Mode$& OneWay=��� -   ' ��Name$' UserList��$
��Left=�$	��Top=�$��10q����� *Users+���� .R��� $ 
Horizontal=����� .R��� -   $ Vertical=�$��5q�.+�� $��50��$��50��$��Center=�.+�A� 
���   �
������ $��50��$��50���� $��16(�$
��Bold"�
�������$��Center=�$��Center=��� .��`� ( `� 	Converter#( [  .1��� $% 	FirstName��� $% LastName�.��� $
��Bold"�
���   �$��0,5,0,0q�$��Center=����� *
Username+�� -   $ ChatHistoryListBox��$��1��$��10q�$��0q����#f0f2f5$��Visible=�$��Disabled=�$	��180��$y�	Collapsed=����� .R��� $" LittleBackgroundTextBlock��$ 20��$ 10q�$��5q�._��� $ 
Horizontal=�.+��� $ LilTextBlock��$��16(�$
��Bold"�
������ ���� *	Content+�� $ MessageDateTimeTextBlock��$��5(�$
��Bold"�
������ �� -   $ ChatInputPanel��$ 
Horizontal=�$��2��$��10q�$y�	Collapsed=�.+��� $ 30��
�������._��� -   ) ��Name$) ChatInputTextBox��$	��200��$��40��$��Center=�$��10q�
������ 
������ �� $ 40��
���   �$��0,0,0,0q�$��0q�
������ ._��� -   $
��Send��$��40��$��40��$��Center=�
������ 
�������$��0q��� $ 30��$��1��$��1��$��20q�
������ ._�� -   * �Name$* MainContent��.+��� -   + ��Name$+ MainContentControl��