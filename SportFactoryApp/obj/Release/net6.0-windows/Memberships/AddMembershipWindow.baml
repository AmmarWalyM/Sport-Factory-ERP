   M S B A M L   `   `   `  ����   SportFactoryApp5    /SportFactoryApp.Memberships.AddMembershipWindow   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes    � Title$  
Add Member�� � WindowState$ 	Maximized=� � WindowStyle$
 None=� � AllowsTransparency$
 True��
������ $��Center=�$��Center=� � 	Resources  �� MergedDictionaries �� Source��  �� $e _pack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Light.xaml?��� $h bpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.Defaults.xaml?��� $j dpack://application:,,,/MaterialDesignThemes.Wpf;component/Themes/MaterialDesignTheme.DatePicker.xaml?�%    .��� .+��� 
���   � J� Opacity$	 0.4Q���  �� CornerRadius$ 15��
�������
���   �$��0q�	 �� Padding$	 10q�$	��440��$	��480��
 J� Effect
 3  -System.Windows.Media.Effects.DropShadowEffect     Color$ #aefe14��   
BlurRadius$	 150Q�   ShadowDepth$ 5Q�   Opacity$	 0.5Q�._��� $��Center=�.+���  �� Orientation$ 
Horizontal=�.+��� $=��7pack://application:,,,/Images/icons8-utilisateur-30.png��$��30��$��0,0,10,0q�$	��Top=��� $ Vertical=�.+��� $
��Bold"�$��20(�Nouveau Membre�� $��Normal"�
�������$��10(�?=Bienvenue à notre nouveau membre de la famille Sport Factory�� $��Membre��$��10q�$
��Left=�$��72)�$
��Bold"��� $ 5��$	��420��
�������
���   �$��1q�._��� -    ��Name$ MemberComboBox�� �� 
IsEditable$
 True��$��	0,10,0,10q� �� IsTextSearchEnabled$
 True��   MaterialDesignComboBox#��[  )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Selectionner le membre��   
IsFloating$
 True��$	��400��$��40��$	��Top=��� $��Type d'abonnement��$��10q�$
��Left=�$��72)�$
��Bold"��� $ 5��$	��420��
�������
���   �$��1q�._��� -   $ MembershipType��#��[  $ Gendre��$
 True��$	��400��$��40��$	��Top=�.@��� .��Pack 12 Seances�� .��Seance Unique�� $
��Prix��$��10q�$
��Left=�$��72)�$
��Bold"��� $ 5��$	��420��
�������
���   �$��1q�._��� -   $��PriceTextBox��$	��420��$��0q�
������ $
��Left=�$��Center=�$��10q�$
 Prix��$
 True���� $ 
Horizontal=�$��Center=�.+��� -   $��AddMemberButton��$��Ajouter l'abonnement��$	��260��$��	0,20,20,0q�$��Center=����#aefe14$
��Bold"�$��40���� -   $��Cancel��$��40��$	��140��$��0,20,0,0q�$��Center=�
�������$
��Bold"�