   M S B A M L   `   `   `  ����   SportFactoryApp!    SportFactoryApp.LoginWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Icon$.  (pack://application:,,,/Images/SFLogo.ico�� � Title$ SPORT FACTORY ERP�� � WindowStyle$
 None=� � 
ResizeMode$ NoResize=� � WindowState$ 	Maximized=�   MaterialDesignBody#���    � 	Resources  �� MergedDictionaries �� Source  CustomLoginButtonStyle �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  FadeOutStoryboard �� TargetProperty W� From	 W� To g� Duration��  �� $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?��� $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�%�  &	       &	 �    �� " ��.��� 	 � ��

 �   ��� 	 � ��

 ������� 	 � ��

 ���� �� 	 � ��$
 2q��� 	 �@�Cursor$

 Hand���� 	 � ��
 �� " ��.R��� #��z��#��z��#��z��$ 10��._��� $��Center=�$��Center=� P�  �@J�IsMouseOver$
 True��. ��� 	 � ��

 ������� 	 � ��

 �   ��� 	 � ��

 �   �P�  � ��$
 True��. ��� 	 � ��

 ������� .��W� $ Opacity� 1.0 0.0$ 0:0:1D�.��� -   $��	LoginGrid�� � ColumnDefinitions �� $��* ��� $��* �����  �� ImageSource$/ )pack://application:,,,/Images/SFCover.png�� j� Stretch$ UniformToFill=�.+�� -   $��30��$	��Top=�
���   �$��2��.+���  �� Orientation$ 
Horizontal=�$��Center=�.+��� $.��(pack://application:,,,/Images/SFLogo.png��$��25��$��25��$��10q��� $��SPORT FACTORY ERP��$��Center=�
�������$��16(�$
��Bold"�$��10,0,0,0q��� $ 
Horizontal=�$��Right=�$��Center=�$��30��.+��� -    ��Name$ MinimizeRestoreButton��$��_��
���   ����#C0C0C0
���   �$��40���� -   $ MaximizeRestoreButton��$	��❐��
���   ����#C0C0C0
���   �$��40���� -   $ CloseButton��$��X��
���   ����#C0C0C0
���   �$��40���� 
�������$ 50�� �� Padding$ 20q�$	��400��$	��550��$��Center=�$��Center=�$��1�� J� Effect 3  -System.Windows.Media.Effects.DropShadowEffect     
BlurRadius$ 30Q�   ShadowDepth$ 20Q�   Opacity$ 1Q�._��� $��Center=�$��Center=�$	��500��$	��350��  MaterialDesignPaper#���  .+��� $��50(�$��DN Sans)�$
��Bold"�$��10q�$��Center=�
���   ��� $�BONJOUR���� �� $�YE BDAN!���� #���  $ 15��$ 20q�._��� $��Center=�$��Center=�.+��� -    ��Name$ UsernameTextBox��$��0 0 0 25q�$	��300��$��18(�)  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Enter Your Username��$��2q�  MaterialDesignDivider#���   ! MaterialDesignOutlinedTextBox#��[ G� -   $��PasswordBox��$	��300��$��50��$��18(�$ Enter Your Password��$��2q�#���   % !MaterialDesignOutlinedPasswordBox#��[ �� -   $��LoginButton��$��50��$��30q�$��5q�$��DN Sans)�$��30(�$
��Bold"�#��[ $��Se Connecter���� $ 
Horizontal=�$��Center=�$��Bottom=�$��0,0,0,20q�$��2��.+��� $��
Powered By��$��Roboto)�$
��Bold"�$��Center=�$��20(�
�������$��0,0,0,0q��� $+��%pack://application:,,,/Images/awm.png��$��50��$��Center=�