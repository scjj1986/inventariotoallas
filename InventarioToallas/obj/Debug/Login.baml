   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization  5   
    InventarioToallas   InventarioToallas.Login   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   Cgl4clr-namespace:System.Globalization;assembly=mscorlib     5   
   T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   :d2http://schemas.microsoft.com/expression/blend/2008  5   	   Dmc;http://schemas.openxmlformats.org/markup-compatibility/2006  6F   -   5          � Title$*  $Sistema de Inventario de Suministros��5   	   $	��350��66   $	��525��6C    � WindowStartupLocation$ CenterScreen=�6�    � Icon$ imagenes/sunsol isla.png��6�   (  "MahApps.Metro.Controls.MetroWindow    IsMaxRestoreButtonEnabled .   � 
ResizeMode$ NoResize=�6  .��5      � .+�5	   
   �� $��
171,45,0,0q�6   $��imagenes/sunsol isla.png��6%   $	��140��6G   $	��Top=�6T   $
��Left=�6l   $	��184��6�    J� RenderTransformOrigin$ 0.5,0.5&�6�   z�5
      V� 5      .~�5      �� �� 5      �� 5       �� Angle$ -0.814Q�6&   T� 5      5      5      �� 5   
   $��0��6   $��Retales��6    $��10q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��27��6U   .+�5      �� $��Acceso��6    
�������$
��Bold"�6D   $��16(�6V   $��5,0,0,0q�6d   $
��Left=�5      $��Center=�6/   5      5      .��5      � $��Stretch=�6   $��Center=�61   $	��164��6L   $��	0,54,0,15q�6Y    � RowDefinitions 5      �� 5!      $��40 �6$   �� 5"      $��* �6$   .+�5$      ��  �� Orientation$ Vertical=�6   $��Stretch=�64   $��10,29,10,38q�6R   $��2��6g   .+�5%      �� -   5        	 ��Name$	 
txtUsuario��5%      $��0, 10, 0, 0q�62   $��38��6G   *  $MahApps.Metro.Controls.TextBoxHelper
   ClearTextButton
 .    UseFloatingWatermark .    	Watermark$ Usuario��5(      {�. $�� ��5)      $��11(�6&   G� 5*      -   5         G�Name$ txtClave��5*   "   $��0, 10, 0, 0q�64   $ Password��5+       . 
 .  G� Password$  ��5/      $��11(�6    � ForceCursor . $��38��6:      ButtonCommand 5.      �� *TextBoxButtonCmd+ �� Mode$ OneWay=�5/   :   50      52      54      �� 55   
   -   5         ��Name$ 
btnaceptar��55   0    � Cursor$
 Hand��6    �� 	IsDefault . $��Aceptar��6D   $
��Left=�6V   $��422,246,0,0q�6q   $	��Top=�6�   $��75��6�   6�   �� 57   
   $��1q�6      AccentColorBrush#���   6%   58      59      