   M S B A M L   `   `   `  ����J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  5      O Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem 5      /    )SportFactoryApp.Profile.MemberProfileView   5      W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      :local(clr-namespace:SportFactoryApp.Converters     5      b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5      3system&clr-namespace:System;assembly=mscorlib  5        � 	Resources  5       �� MergedDictionaries �� Source7   1SportFactoryApp.Converters.GenderToImageConverter   GenderToImageConverter5   /SportFactoryApp.Converters.SpecialDateConverter  SpecialDateConverter�� 5   
    5      �� 5      $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?�6%   �� 5      $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?�6%   �� 5      $t npack://application:,,,/MaterialDesignColors;component/Themes/Recommended/Primary/MaterialDesignColor.Blue.xaml?�6%   %:   &	        &	        5      6+     5      6)   5      ��5"      �� 5#   
    �� ImageSource$2 ,pack://application:,,,/Images/ProfileBG2.png��6    j� Stretch$ UniformToFill=�5$       �� Opacity$ 1Q�5%      .��5'      � $��10q�6    � ColumnDefinitions 5(   
   �� 5)      $��2* �6   �� 5*      $��3* �6    � RowDefinitions 5,   
   �� 5-      $��* �6   �� 5.      $��* �6   �� 5/      $��* �6   .+�53   
   �� $��0��6   $��0��6!   $	��350��6.    �� CornerRadius$ 30��6>   
�������$��0q�6c   	 �� Padding$	 10q�6w   
������ $��	10,20,0,0q�6�   $	��Top=�6�   ._�54      �� 
 �� Orientation$
 
Horizontal=�6   .+�57      �� $	��150��6   $	��150��6%   $��0,0,0,10q�62   $
}�True��6D   $��Center=�6X   ._�58      A� ���#AEFE14$��5��6/   ��59      �� 5:      $ UniformToFill=�6{    6)   �� *Gender+ �� 	Converter# [  6{   5<      5=      �� 5>      $
 Vertical=�6   $��	10,30,0,0q�64   .+�5@      �� $
��Bold"�6:   $��40(�6L   $��0,0,0,20q�6Z   
���������6    �� *
FullName+6l   �� 5C      $
 
Horizontal=�6!   .+�5E      �� $ 15��6!   ���#EEEEEE$	 10q�6H   ._�5F      �� $
 
Horizontal=�6)   .+�5G      �� $��20��6$   $��20��6/   ��5H   "   �� 5I   &    �� 
TargetType" ��6,   .�5J   *   ��  �� Property � �� �� Value$A ;pack://application:,,,/Images/icons8-symbole-de-mars-94.png��6C    �� Triggers 5M   *   �� 5O   .    �� Binding 6:   �� *Gender+ �� Value	 Homme6U   .a�5P   2   ��  � ��$A ;pack://application:,,,/Images/icons8-symbole-de-mars-94.png��6K   5Q   /   �� 5T   .    6:   �� *Gender+	 Femme6U   .a�5U   2   ��  � ��$C =pack://application:,,,/Images/icons8-symbole-de-vénus-94.png��6K   5V   /   5X   '   5Z      �� 5]      $
��Bold"�6@   $��10,0,0,0q�6R   $��Center=�6d   ��6(   �� *Gender+6d   5^      5_      �� 5`      $��20��6$   61   �� 5a      $ 15��6!   ���#EEEEEE$	 10q�6H   ._�5b      �� $
 
Horizontal=�6)   .+�5c   "   �� $8��2pack://application:,,,/Images/icons8-cadeau-94.png��6(   $��20��6d   6q   �� 5d   "   $
��Bold"�6j   $��10,0,0,0q�6|   $��Center=�6�    � Language$ fr-FR�6�   ��6,   �� *	BirthDate+ �� StringFormat$ {0:dd MMMM yyyy}��6�   5e      5f      5g      5h      5i      5k      �� 5l   
   $��1��6   $��0��6!   $	 10q�6.   ._�5n      �� $
 Vertical=�6   .+�5o      �� $
 
Horizontal=�6   $��10q�63   $	��120��6?   $	��Top=�6L   $��Right=�6d   .+�5q      �� $ 30��6   
�������$��0q�6>   
���   �$	 20q�6e   $��5q�6r   $
��Auto��6}    J� Opacity$	 0.8Q�6�   ._�5r      �� $��Center=�6!   .+�5s      �� $
 
Horizontal=�6%   .+�5t   "   �� $A��;pack://application:,,,/Images/icons8-carte-de-membre-94.png��6(   $��30��6m   �� 5u      $��Nbr d'abonnement��6(   $��12(�6@   $
��Bold"�6N   ���#aefe14$��Center=�6u   $��Center=�6�   $��5q�6�   5v      �� 5w      -   5         ��Name$ MembershipCountTextBlock��5w   $   $��35(�6F   $
��Bold"�6T   ���#aefe14$��Center=�6{   5x      5y      �� 5|      $ 30��6   
�������$��0q�6>   
���   �$	 20q�6e   $��5q�6r   $
��Auto��6}   $	 0.8Q�6�   ._�5}      �� $��Center=�6!   .+�5~      �� $
 
Horizontal=�6%   .+�5      �� $D��>pack://application:,,,/Images/icons8-pièces-de-monnaie-94.png��6$   $��30��6k   �� 5�      $��Revenue Generé��6(   $��12(�6>   $
��Bold"�6L   ���#aefe14$��Center=�6s   $��Center=�6�   $��10q�6�   5�      �� 5�      -   5        $ TotalRevenueTextBlock��5�   $   $��30(�6C   $
��Bold"�6Q   ���#aefe14$��Center=�6x   5�      5�      �� 5�      $ 30��6   
�������$��0q�6>   
���   �$	 20q�6e   $��5q�6r   $
��Auto��6}   $	 0.8Q�6�   ._�5�      �� $��Center=�6!   .+�5�      �� $
 
Horizontal=�6%   .+�5�      �� $5��/pack://application:,,,/Images/icons8-gym-94.png��6$   $��30��6]   �� 5�      $��Nbr des seances��6(   $��12(�6?   $
��Bold"�6M   ���#aefe14$��Center=�6t   $��Center=�6�   $��5q�6�   5�      �� 5�      -   5        $ NbSeancesTextBlock��5�   %   $��35(�6A   $
��Bold"�6O   ���#aefe14$��Center=�6w   5�      5�      5�      �� 5�      $
 
Horizontal=�6   $��10q�62   $��Right=�6>   .+�5�      �� -   5        $��0q�5�   <   ���#aefe14
���   �.��5�      �� $
 
Horizontal=�6%   .+�5�      �� $9��3pack://application:,,,/Images/icons8-ajouter-94.png��6$   $��30��6a   �� 5�      $��Ajouter seance��6(   $��12(�6>   $
��Bold"�6L   
���   �$��Center=�6q   $��Center=�6�   $��0q�6�   5�      5�      �� 5�      -   5        $��DeleteSessionButton��5�      $��Supprimer Seance��68   $��5q�6u   
���   ����#aefe14$��8(�6�   {�6�   �� *SessionSelected+6�   5�      5�      5�      &   System.Windows.Controls.Calendar  5�   
   -   5        $��0��5�      $��1��6#   $��2��60      SelectionMode$ 
SingleDate=�5�      $��Center=�5�      $	��Top=�5�      $��10q�5�      $ fr-FR�5�         DisplayDate 5�      �� *CurrentDate+  5�      :  4System.Windows.Controls.Primitives.CalendarDayButton �� RelativeSource �� 
TargetType��%�  '        �� 5�      "  6   .�5�      ��  � ��
 �   �63   �� 5�       � ��
 ���� 64   �� 5�       � ��$ 1q�68   �� 5�       � ��$
 Bold"�63    5�      �� 5�       6&   �� *IsBlackoutDate+ �� *Self+ True6o   .a�5�      ��  � ��
 �  ��6<   �� 5�       � ��$ 2q�6@   �� 5�       � ��
 �����6;   �� 5�       � ��$ 3q�68   �� 5�       � �� 5�   "   �� 5�   &   "  66   .R�5�   *   �� #��z��61   #��z��5�   )   #��z��5�   )   $ 15��5�   )   #	 z��5�   )   ._�5�   .   �� $��Center=�6?   $��Center=�6\   5�   +   5�   '   5�      5�      5�      5�      5�      �� 5�   
   $��10q�6   $��1��6   $��1��6-   $ 20��6:   ���#EEEEEE$��2q�6b   $	 20q�6v   
�������$	��Top=�6�   ._�5�      �� .+�5�      �� $��Liste des abonnement��6   $��20(�68   $
��Bold"�6F   $��0,0,0,0q�6X   �� 5�      -   5         ��Name$ MembershipListView��5�   ?   $��Visible=�6�   $��Disabled=�5�      $	��130��6A   ��5�      �� *Memberships+ �� View 5�      �� 5�      .P�5�      �� $��Date de debut��6-    �� Width$
 auto��6�    �� DisplayMemberBinding 6D   �� *Date+$ {0:MMMM dd,yyyy}��6�   �� 5�      $
��Type��6-   $
 auto��6a    6;   �� *Type+6a   �� 5�      $��Price��6-   $
 auto��6c    6<   �� *Price+6c   �� 5�      $��Status��6-   $
 auto��6e    6=   �� *Status+6e   5�      5�      5�      5�      �� 5�   
   $��10q�6   $��1��6   $��2��6.   $ 30��6;   ���#EEEEEE$��2q�6c   $	 20q�6w   
�������$	��Top=�6�   ._�5�      �� .+�5�      �� $
 
Horizontal=�6   .+�5�      �� $��Liste des seances:��6   $��20(�66   $
��Bold"�6D   �� 5�      -   5        $	 NBS��5�      $��20(�6)   $
��Bold"�67   $��Center=�6I   $��10,0,0,0q�6f   5�      �� 5�      -	   5        $ SessionsListView��5�   N   $��Visible=�6i   $��Disabled=�6�   $	��130��6�   ��6   �� *SelectedMembershipSessions+ 5�      �� 5�      .P�5�      �� $��Session Date��6-   $
 auto��6�    6C   �� *SessionDate+$ {0:MMMM dd,yyyy}��6�   �� 5�      $��Membership ID��6-   $
 auto��6r    6D   �� *MembershipId+6r   �� 5�      $��
Session ID��6-   $
 auto��6l    6A   �� *	SessionId+6l   5�      5�      5�      5�      5�      5�      