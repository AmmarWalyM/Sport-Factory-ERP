   M S B A M L   `   `   `  ����  SportFactoryApp-    'SportFactoryApp.Members.AddMemberWindow   5   	   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	     � Title$  
Add Member��5   	    � WindowState$ 	Maximized=�6    � WindowStyle$
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
 5   
   3  -System.Windows.Media.Effects.DropShadowEffect  5         Color$ #aefe14��6      
BlurRadius$	 150Q�6/      ShadowDepth$ 5Q�6@      Opacity$	 0.5Q�6P   ._�5   
   �� $��Center=�6   .+�5      ��  �� Orientation$ 
Horizontal=�6   .+�5       �� $=��7pack://application:,,,/Images/icons8-utilisateur-30.png��6   $��30��6Y   $��0,0,10,0q�6e   $	��Top=�6w   �� 5!      $ Vertical=�6   .+�5"      �� $
��Bold"�6    $��20(�62   Nouveau Membre6P   �� 5#      $��Normal"�6    
�������$��10(�6F   ?=Bienvenue à notre nouveau membre de la famille Sport Factory6�   5$      5%      �� 5'      $��Nom et Prenom��6   $��10q�6-   $
��Left=�69   $��72)�6T   $
��Bold"�6d   6x   �� 5(      $ 
Horizontal=�6   $��Center=�62   .+�5*      �� $ 5��6   $	��205��6*   
�������
���   �$��1q�6]   $��0,0,5,0q�6q   ._�5+      �� $ 
Horizontal=�6!   .+�5,      �� $=��7pack://application:,,,/Images/icons8-utilisateur-30.png��6    $��15��6a   $��10,0,0,0q�6m   �� 5-      -   5        $��FirstNameTextBox��5-   "   $��40��6:   $	��190��6F   $��0q�6R   
������ $
��Left=�5.   ;   $��Center=�6]   )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Prenom��5/   "      
IsFloating$
 True��50   "   51      52      �� 55      $ 5��6   $	��205��6*   
�������
���   �$��1q�6]   $��5,0,0,0q�6q   ._�56      �� -   5        $��LastNameTextBox��56      $	��220��65   $��0q�6A   
������ $
��Left=�57      $��Center=�6@   $��10q�6b   $	 Nom��58      $
 True��59      5:      5;      �� 5=      $��Numero Telephone��6   $��10q�60   $
��Left=�6<   $��72)�6W   $
��Bold"�6g   6{   �� 5>      $ 
Horizontal=�6   $��Center=�62   .+�5@      �� $ 5��6   $	��420��6*   
�������
���   �$��1q�6]   ._�5A      �� $ 
Horizontal=�6!   .+�5B      �� $7��1pack://application:,,,/Images/icons8-phone-30.png��6    $��15��6[   $��10,0,0,0q�6g   �� 5C      -   5        $��PhoneNumberTextBox��5C   "   $��40��6<   $	��200��6H   $��0q�6T   
������ $
��Left=�5D   ;   $��Center=�6]   $ Numero telephone��5E   "   $
 True��5F   "   5G      5H      5I      �� 5N      $��Gendre du membre��6   $��10q�60   $
��Left=�6<   $��72)�6W   $
��Bold"�6g   6{   �� 5O      $ 5��6   $	��420��6&   
�������
���   �$��1q�6Y   ._�5Q      �� -   5         ��Name$ GenderComboBox��5R         MaterialDesignComboBox#��[  5S      $ Gendre��5T      $
 True��5V      $	��400��5W      $��40��5X      $	��Top=�5Y      .@�5\      �� .��6#   Homme6*   �� 5]      .��6#   Femme6*   5_      5`      �� 5b      $��Date de naissance��6   $��10q�61   $
��Left=�6=   $��72)�6X   $
��Bold"�6h   6|   �� 5d      $ 5��6   $	��420��6&   
�������
���   �$��1q�6Y   ._�5e      (  "System.Windows.Controls.DatePicker  -   5          Name$ BirthDatePicker��5f        MaterialDesignDatePicker#��[ 5g      
���   �$ Date de Naissance��5i      $
 True��5j      $	��400��5k      $��0q�5l       � Language$ fr-FR�5m      6   5n      �� 5p      $ 
Horizontal=�6   $��Center=�62   .+�5q      �� -   5        $��AddMemberButton��5q      $��Ajouter Membre��60   $	��260��5r      $��	0,20,20,0q�6%   $��Center=�68   ���#aefe14$
��Bold"�6j   $��40��6|   �� 5s      -   5        $��Annuler��5s      $��40��6J   $	��140��6V   $��0,20,0,0q�6b   $��Center=�6t   
�������$
��Bold"�6�   5t      5u      5v      5w      5x      