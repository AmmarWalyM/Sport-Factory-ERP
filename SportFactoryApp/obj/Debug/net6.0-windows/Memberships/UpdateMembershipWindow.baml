   M S B A M L   `   `   `  ����  SportFactoryApp8    2SportFactoryApp.Memberships.UpdateMembershipWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  Update Membership��5   	    � WindowState$ 	Maximized=�6#    � WindowStyle$
 None=�5   	    � AllowsTransparency$
 True��5   	   
������ $��Center=�5	   "   $��Center=�6?    � 	Resources 5       �� MergedDictionaries �� Source�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $j dpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DatePicker.xaml?�6%   %    5      .��5      � .+�5   
   �� 
���   � J� Opacity$	 0.4Q�6!   �� 5   
    �� CornerRadius$ 15��6   
�������
���   �$��0q�6J   	 �� Padding$	 10q�6^   $	��440��6k   $	��480��6x   
 J� Effect
 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ #aefe14��6#      
BlurRadius$	 150Q�63      ShadowDepth$ 5Q�6D      Opacity$	 0.5Q�6T   ._�5      �� $��Center=�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5       �� $=��7pack://application:,,,/Images/icons8-utilisateur-30.png��6   $��30��6]   $��0,0,10,0q�6i   $	��Top=�6{   �� 5!      $ Vertical=�6!   .+�5"      �� $
��Bold"�6$   $��20(�66   Mise à jour d'abonnement6^   �� 5#      $��Normal"�6$   
�������$��10(�6J   ?=Bienvenue à notre nouveau membre de la famille Sport Factory6�   5$      5%      �� 5'      $��Membre��6   $��10q�6*   $
��Left=�66   $��72)�6Q   $
��Bold"�6a   6u   �� 5(      $ 5��6   $	��420��6*   
�������
���   �$��1q�6]   ._�5)      �� -   5         ��Name$ MemberComboBox��5*       �� 
IsEditable$
 True��5+      $��	0,10,0,10q�5,       �� IsTextSearchEnabled$
 True��5-       �� IsDropDownOpen$ False��5.         MaterialDesignComboBox#��[  50      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Selectionner le membre��51         
IsFloating$
 True��52      $	��400��53      $��40��54      $	��Top=�55      56      �� 5;      $��Type d'abonnement��6   $��10q�65   $
��Left=�6A   $��72)�6\   $
��Bold"�6l   6�   �� 5<      $ 5��6   $	��420��6*   
�������
���   �$��1q�6]   ._�5>      �� -   5        $ MembershipType��5?      #��[  5@      $ Gendre��5A      $
 True��5C      $	��400��5D      $��40��5E      $	��Top=�5F      .@�5I      �� .��6'   Pack 12 Seances68   �� 5J      .��6'   Seance Unique66   5L      5M      �� 5O      $
��Prix��6   $��10q�6(   $
��Left=�64   $��72)�6O   $
��Bold"�6_   6s   �� 5Q      $ 5��6   $	��420��6*   
�������
���   �$��1q�6]   ._�5R      �� -   5        $��PriceTextBox��5R      $	��420��62   $��0q�6>   
������ $
��Left=�5S      $��Center=�6-   $��10q�6O   $
 Prix��5T      $
 True��5U      5V      �� 5X      $ 
Horizontal=�6   $��Center=�66   .+�5Y      �� -   5        $��AddMemberButton��5Y      $��Mise à Jour d'abonnement��64   $	��260��5Z      $��	0,20,20,0q�6%   $��Center=�68   ���#aefe14$
��Bold"�6j   $��40��6|   �� 5[      -   5        $��Annuler��5[      $��40��6J   $	��140��6V   $��0,20,0,0q�6b   $��Center=�6t   
�������$
��Bold"�6�   5\      5]      5^      5_      5`      