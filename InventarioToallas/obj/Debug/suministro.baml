   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization  5       InventarioToallas"   InventarioToallas.suministro   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Cgl4clr-namespace:System.Globalization;assembly=mscorlib     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          N� Title$  Suministros��5	      $
��auto��6   $
��auto��6#   .��5      � $��0,0,0,42q�6    � RowDefinitions 5   
   �� 5      $
��405* �6   �� 5      $	��13* �6   .+�5   
   �� $��0��6   $��Retales��6    $��
0,-5,10,14q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��36��6U   .+�5      �� $��Suministros��6    
�������$
��Bold"�6I   $��16(�6[   $��5,0,0,0q�6i   $
��Left=�5      $��Center=�6/   5      5      5      � 5   
   $��27,10,-3,-25q�6   $
��Left=�6%   $	��501��6@   $��2��6L   .+�5      �� -   5        $��BtnNvSum��5   #    � Cursor$
 Hand��6   
��� � �   AccentedSquareButtonStyle#��[  6H   $��0,40,0,0q�6{   $
��Left=�6�   $��48��6�   $��48��6�   $	��Top=�6�    � ToolTip$ Nuevo Suministro��6�   ��5      �� 5       �� ImageSource$ imagenes/nuevo.png��6!    j� Stretch$
 None=�6B   5!      �� 5"      -   5         ��Name$ txtBuscarSum��5"      $��	73,50,0,0q�6,   $��38��6?   *  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    	Watermark$ Buscar��5$      {�. $�� ��5%   !   $��11(�6)   $	��150��67   $
��Left=�6C   $	��Top=�6^   6v   &   System.Windows.Controls.DataGrid  5&      -   5        	  Name$	 dtgrdsum��5&   ,   $��0,90,34,163q�6   
   AutoGenerateColumns
 .   �� AlternationCount$ 1��6s      CanUserReorderColumns .     CanUserResizeColumns .     CanUserAddRows .     CanUserResizeRows .     CanUserSortColumns .  $. (Doble click para modificar un suministro��6  $   HorizontalScrollBarVisibility$ Disabled=�6B  $��Center=�6k  ��. $
��Auto=�5'      $
��Auto=�5(      ��5&   ?   ��    Columns 5)      0  *System.Windows.Controls.DataGridTextColumn  5*      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     
IsReadOnly .    Header$ Nombre��6�   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ descripcion�   	CellStyle 5+      �� 5,      .�5-   "   ��  �� Property � �� �� Value$
 Left=�6Y   5.      50        51       .   . $ Observación��6�    6)   �� $ OneWay=�$ observacion� 52      �� 53      .�54   "   ��  � ��$
 Left=�6Y   55      57        58       .   . $ Cantidad por Hab.��6�    6)   �� $ OneWay=�$ cantidad� 59      �� 5:      .�5;   "   ��  � ��$ Center=�6Y   5<      5>        5@         
Visibility$ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ idSuministro� 5A      �� 5B      .�5C   "   ��  � ��$
 Left=�6Y   5D      5F        5G      $ Hidden=�6)    .   . $
 tipo��6�    6=   �� $ OneWay=�$
 tipo� 5H      �� 5I      .�5J   "   ��  � ��$
 Left=�6Y   5K      5M      5P      #  MahApps.Metro.Controls.Flyout  5R      -   5          Name$ 
flNuevoSum��5R   `      Header$ Nuevo Suministro��6      Position$
 Left=�68   $��-22,40,-11,108q�6H       Theme$  Light=�6t   ! J� RenderTransformOrigin$! 0.5,0.5&�6�   #��� ��6�   z�5S      V� 5T      .~�5U      �� �� 5V      " �� AngleX$" -0.28Q�6(   �� 5W      T� 5X      # T� X$# -1.495Q�6-   5Y      .��5[      � $	��267��6   $
��auto��6$   $��Right=�61   $��	0,0,-38,0q�6M   .+�5]      �� -   5        $ txtIdSum��5]      $y�Hidden=�60    . $ Nombre��5_      {�. $�� ��5`   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   �� 5c      -   5        $ txtNombreSum��5c      $��14,7,0,0q�64   $��38��6F    . $ Nombre��5f      {�. $�� ��5g   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5h      -   5        $ 
txtDescSum��5h      $��	14,45,0,0q�62   $��38��6E    . $ Descripción��5k      {�. $�� ��5l   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5n      -	   5        $ 
txtCEstSum��5n      $��	14,83,0,0q�62   $��38��6E    . $ Cantidad por Habitación��5q      {�. $�� ��5r   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   $! 0.495,1.553&�6�   6�   �� 5u      -
   5        $ ��Name$$ 	cmbTipSum��5u      $	��500��62   $��38��6>   $
 Tipo��5v       . $��
14,122,0,0q�5w   C   $
��Left=�6W   $	��Top=�6r   $��11(�6�   !  MahApps.Metro.Controls.Tile  5z      -   5        %  Name$% tlGuardarSum��5z   $   $
 Hand��6:   $��52��6I   $��456,205,0,0q�6U   $��58��6j   $
��Left=�6u   $ Guardar��6�   $	��Top=�6�   $! 0.451,1.962&�6�   & J� Effect& 5{      3  -System.Windows.Media.Effects.DropShadowEffect  5|      '   
BlurRadius$' 8Q�6/   (   Opacity$
( 0.95Q�6>   )   ShadowDepth$) 9Q�6M   .��5~      �� $��imagenes/guardar.png��6    $��48��6>   $! 0.555,3.229&�6I   5        5�      -   5        $% tlCancelarSum��5�   $   $
 Hand��6;   $��52��6J   $��0,205,135,0q�6V   $��58��6k   $��Right=�6v   $! 0.431,-1.538&�6�   $	��Top=�6�   & 5�        5�      $
( 0.95Q�6/   $) 9Q�6>   $' 8Q�6N   .��5�      �� $��imagenes/Cancel.png��6    $��48��6=   $! 0.697,2.396&�6H   5�      �� 5�      $	��(*)��6   $
��Left=�6*   $��
550,17,0,0q�6E   $	��Top=�6Y   ���	#FFF30C0C6q   �� 5�      $	��(*)��6   $
��Left=�6*   $��
550,87,0,0q�6E   $	��Top=�6Y   ���	#FFF30C0C6q   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,125,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C6r   �� 5�      $��(*) Campos obligatorios��6   $
��Left=�6>   $��202,212,0,0q�6Y   $	��Top=�6n   ���	#FFF30C0C$! 0.519,2.692&�6�   5�      5�      5�      5�      5�      