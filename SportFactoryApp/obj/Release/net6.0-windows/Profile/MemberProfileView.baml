   M S B A M L   `   `   `  ���� J  FSportFactoryApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullG(clr-namespace:SportFactoryApp.ConvertersSportFactoryApp.Converters  /    )SportFactoryApp.Profile.MemberProfileView   W SPresentationCore, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=6.0.2.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=6.0.2.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     :local(clr-namespace:SportFactoryApp.Converters       � 	Resources  7   1SportFactoryApp.Converters.GenderToImageConverter   GenderToImageConverter��%   &	          .��� $��30q� � ColumnDefinitions �� $	��250 ��� $��* � � RowDefinitions �� $	��170 ��� $	��200 ��� $��* �.+��� $��0��$��2��$	��350�� �� CornerRadius$ 30��
�������$��0q� �� Padding$ 10q�
�������$��10q�$	��Top=�._��� .+��� $��Member Profile��$��20(�$
��Bold"�$��0,0,0,10q�$��Center=��� $	��150��$	��150��$��0,0,0,10q�$
}�True��$��Center=�._�A� 
�������$��1������  j� Stretch$ UniformToFill=� �� ImageSource �� *Gender+ �� 	Converter# [  �� $��First Name:���� $
��Bold"����� *	FirstName+�� $��
Last Name:���� $
��Bold"����� *
LastName+�� $��Gender:���� $
��Bold"����� *Gender+�� $��Birth Date:���� $
��Bold"����� *	BirthDate+ �� StringFormat$ {0:MMMM dd, yyyy}���� $��1��$��0��._��� 	 �� Orientation$	 
Horizontal=�$��10q�$	��150��$	��Top=�$��Right=�.+��� $ 30��
�������$��0q�
�������$ 20q�$��5q�$
��Auto��._��� $��Center=�.+��� $��Nombre d'abon��$
��Bold"�$��14(��� -   
 ��Name$
 MembershipCountTextBlock��$��22(�$
��Bold"��� $ 30��
�������$��0q�
�������$ 20q�$��5q�$
��Auto��._��� $��Center=�.+��� $��Total Revenue��$
��Bold"�$��14(��� -   $
 TotalRevenueTextBlock��$��22(�$
��Bold"��� $ 30��
�������$��0q�
�������$ 20q�$��5q�$
��Auto��._��� $��Center=�.+��� $��Total Sessions��$
��Bold"�$��14(��� $	��N/A��$��22(�$
��Bold"�$��Center=�$��10q��� $��10q�$��1��$��1��$ 30��
�������$��0q�$ 10q�
�������$	��Top=�._��� .+��� $��Memberships��$��20(�$
��Bold"�$��0,0,0,0q��� -    ��Name$ MembershipListView��$��Visible=�$��Disabled=�$	��150������ *Memberships+ �� View �� .P��� $��Date de debut�� �� Width$
 auto�� �� DisplayMemberBinding �� *Date+$ {0:MMMM dd,yyyy}���� $
��Type��$
 auto�� �� *Type+�� $��Price��$
 auto�� �� *Price+�� $��Status��$
 auto�� �� *Status+�� $��10q�$��1��$��2��$ 30��
�������$��0q�$ 10q�
�������$	��Top=�._��� .+��� $��Sessions��$��20(�$
��Bold"�$��20,0,0,0q��� -   $ SessionsListView��$��Visible=�$��Disabled=�$	��150������ *SelectedMembershipSessions+ �� .P��� $��Session Date��$
 auto�� �� *SessionDate+$ {0:MMMM dd,yyyy}���� $��Membership ID��$
 auto�� �� *MembershipId+�� $��
Session ID��$
 auto�� �� *	SessionId+�� $	 
Horizontal=�$��10q�.+��� -   $��Add Session��$��5q��� -   $��DeleteSessionButton��$��Delete Session��$��5q�{��� *SessionSelected+