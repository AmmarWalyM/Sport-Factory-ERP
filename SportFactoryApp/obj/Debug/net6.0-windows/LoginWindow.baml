   M S B A M L   `   `   `  ����  SportFactoryApp!    SportFactoryApp.LoginWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   X TXceed.Wpf.Toolkit, Version=4.6.0.0, Culture=neutral, PublicKeyToken=3e4669d2f30244f44xctk)http://schemas.xceed.com/wpf/xaml/toolkit  5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   
   -   5          � Icon$.  (pack://application:,,,/Images/SFLogo.ico��5   	    � Title$ SPORT FACTORY ERP��5   	    � WindowStyle$
 None=�5   	    � 
ResizeMode$ NoResize=�5	   	    � WindowState$ 	Maximized=�6      MaterialDesignBody#���   5
       � 	Resources 5       �� MergedDictionaries �� Source  CustomLoginButtonStyle �� 
TargetType	 �� Property
 �� Value �� 
TargetType �� CornerRadius �� Triggers P� Property P� Value  FadeOutStoryboard �� TargetProperty W� From	 W� To g� Duration�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   %S  &	       &	 �    �� 5      " ��63   .�5      �� 	 � ��

 �   �6/   �� 5      	 � ��

 �����6/   �� 5      	 � ��

 ���� 60   �� 5      	 � ��$
 2q�64   �� 5      	 �@�Cursor$

 Hand��6+   �� 5      	 � ��
 5      �� 5      " ��6*   .R�5      �� #��z��6%   #��z��5    %   #��z��5!   %   $ 10��5"   %   ._�5#   "   �� $��Center=�63   $��Center=�6P   5$      5%      5'       5(      P� 5)       �@J�IsMouseOver$
 True��65   . �5*      �� 	 � ��

 �����67   �� 5+      	 � ��

 �   �67   �� 5,      	 � ��

 �   �68   5-      P� 5.       � ��$
 True��63   . �5/      �� 	 � ��

 �����67   50      52      �� 55      .��56      W� $ Opacity�6"    1.057   "    0.06-   $ 0:0:1D�66   58      59      .��5<      � -   5        $��	LoginGrid��5<       � ColumnDefinitions 5=   
   �� 5>      $��* �6   �� 5?      $��* �6   ��5C   
   �� 5D       �� ImageSource$/ )pack://application:,,,/Images/SFCover.png��6    j� Stretch$ UniformToFill=�6Q   .+�5H   
   � -   5        $��30��5H      $	��Top=�6   
���   �$��2��6e   .+�5I      ��  �� Orientation$ 
Horizontal=�6   $��Center=�62   .+�5J      �� $.��(pack://application:,,,/Images/SFLogo.png��6   $��25��6J   $��25��6V   $��10q�6a   �� 5K      $��SPORT FACTORY ERP��6   $��Center=�65   
�������$��16(�5L   /   $
��Bold"�6=   $��10,0,0,0q�6O   5M      �� 5N      $ 
Horizontal=�6   $��Right=�62   $��Center=�6N   $��30��6i   .+�5O      �� -   5         ��Name$ MinimizeRestoreButton��5O      $��_��68   
���   ����#C0C0C0
���   �$��40��6�   6�   �� 5P      -   5        $ MaximizeRestoreButton��5P      $	��❐��68   
���   ����#C0C0C0
���   �$��40��6�   6�   �� 5Q      -   5        $ CloseButton��5Q      $��X��6.   
���   ����#C0C0C0
���   �$��40��6v   6�   5R      5S      �� 5V   
   
�������$ 50��6$    �� Padding$ 20q�66   $	��400��6C   $	��550��6O   $��Center=�5W      $��Center=�6,   $��1��6I    J� Effect 5X      3  -System.Windows.Media.Effects.DropShadowEffect  5Y         
BlurRadius$ 30Q�6#      ShadowDepth$ 20Q�63      Opacity$ 1Q�6D   ._�5]      �� $��Center=�6   $��Center=�64   $	��500��6Q   $	��350��6^     MaterialDesignPaper#���  6j   .+�5^      �� $��50(�6   $��DN Sans)�6*   $
��Bold"�6?   $��10q�6Q   $��Center=�6]   
���   ��� 5_      $�BONJOUR��6   �� 6+   �� 67   $�YE BDAN!��6;   6M   5`      �� 5b      #���  6   $ 15��6L   $ 20q�6^   ._�5c      �� $��Center=�6!   $��Center=�6<   .+�5d      �� -   5         ��Name$ UsernameTextBox��5d   "   $��0 0 0 25q�6;   $	��300��6M   $��18(�6Y   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Username��5e   "   $��2q�5f   "     MaterialDesignDivider#���  5g   "    ! MaterialDesignOutlinedTextBox#��[ 5h   "   G� 5j      -   5        $��PasswordBox��5j   &   $	��300��69   $��50��6E   $��18(�6T   $ Mot de passe��5k   &   $��2q�5l   &   #���  5m   &    % !MaterialDesignOutlinedPasswordBox#��[ 5n   &   5o      5p      �� 5r      -	   5        $��LoginButton��5r      $��50��6F   $��30q�6R   $��5q�6^   $��DN Sans)�6j   $��30(�6   $
��Bold"�6�   #��[ 5s      $��Se Connecter��5t   B   5u      5v      5w      �� 5z   
   $ 
Horizontal=�6   $��Center=�6.   $��Bottom=�6K   $��0,0,0,20q�6f   $��2��6x   .+�5{      �� $��
Powered By��6   $��Roboto)�6*   $
��Bold"�6>   $��Center=�6P   $��20(�6k   
�������$��0,0,0,0q�6�   �� 5|      $+��%pack://application:,,,/Images/awm.png��6   $��50��6C   $��Center=�6O   5}      5~      5      