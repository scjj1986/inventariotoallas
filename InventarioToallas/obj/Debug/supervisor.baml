   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization  5       InventarioToallas"   InventarioToallas.supervisor   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Cgl4clr-namespace:System.Globalization;assembly=mscorlib     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          N� Title$  Supervisores��5	      $
��auto��6   $
��auto��6$   .��5      � $��0,0,0,42q�6   .+�5   
   �� $��0��6   $��Retales��6    $��
10,0,10,37q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��36��6U   .+�5      �� $��Supervisores��6    
�������$
��Bold"�6J   $��16(�6\   $��5,0,0,0q�6j   $
��Left=�5      $��Center=�6/   5      5      5      � 5   
   $��0,0,0,37q�6   .+�5      �� -   5        $��BtnNvSup��5       � Cursor$
 Hand��6%   
��� � �   AccentedSquareButtonStyle#��[  6H   $��	24,54,0,0q�6{   $
��Left=�6�   $��48��6�   $��48��6�   $	��Top=�6�    � ToolTip$ Nuevo Supervisor��6�   ��5      �� 5       �� ImageSource$ imagenes/nuevo.png��6!    j� Stretch$
 None=�6B   5      �� 5      -   5        $��BtnCam��5   )   
��� � �$
 Hand��67   #��[  6F   $��	80,54,0,0q�6y   $
��Left=�6�   $��48��6�   $��48��6�   $	��Top=�6�   $ Listado de Camareras��6�   ��5       �� 5!      $ imagenes/camarera.png��6!   $
 None=�6E   5#      �� 5$      -   5         ��Name$ txtBuscarSup��5$      $��
24,115,0,0q�6,   $��38��6@   *  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    	Watermark$ Buscar��5&      {�. $�� ��5'   !   $��11(�6)   $	��150��67   $
��Left=�6C   $	��Top=�6^   6�   &   System.Windows.Controls.DataGrid  5-      -   5          Name$ dtgrdsup��5-      $��24,158,25,19q�6)   	   AutoGenerateColumns	 .  
 �� AlternationCount$
 1��6t      CanUserReorderColumns .     CanUserResizeColumns .     CanUserAddRows .     CanUserResizeRows .     CanUserSortColumns .  $. (Doble click para modificar un supervisor��6  $   HorizontalScrollBarVisibility$ Disabled=�6C  $��Center=�6l  ��. $
��Auto=�5.      $
��Auto=�5/      ��5-   @   ��    Columns 50      0  *System.Windows.Controls.DataGridTextColumn  51      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     
IsReadOnly .    Header$ Cédula��6~   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ cedula�   	CellStyle 52      �� 53      .�54   "   ��  �� Property � �� �� Value$
 Left=�6Y   55      57        58       .   . $ Nombre��6~    6)   �� $ OneWay=�$ nombre� 59      �� 5:      .�5;   "   ��  � ��$
 Left=�6Y   5<      5>        5?       .   . $ Apellido��6�    6)   �� $ OneWay=�$ apellido� 5@      �� 5A      .�5B   "   ��  � ��$
 Left=�6Y   5C      5E        5G         
Visibility$ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ idSupervisor� 5H      �� 5I      .�5J   "   ��  � ��$
 Left=�6Y   5K      5M        5N      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$	 nac� 5O      �� 5P      .�5Q   "   ��  � ��$
 Left=�6Y   5R      5T        5U      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$ 	documento� 5V      �� 5W      .�5X   "   ��  � ��$
 Left=�6Y   5Y      5[        5\      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$ estado� 5]      �� 5^      .�5_   "   ��  � ��$
 Left=�6Y   5`      5b      5d      #  MahApps.Metro.Controls.Flyout  5f      -   5          Name$ flNuevo��5f   �      Header$ Nuevo Supervisor��6      Position$
 Left=�68   $��	4,2,-7,15q�6H   $
��Left=�6[   $	��614��6v      Theme$ Light=�6�   $	��Top=�6�     J� RenderTransformOrigin$  0.5,0.5&�6�   #��� ��6�   z�5g      V� 5h      .~�5i      �� �� 5j      ! �� AngleX$! -0.28Q�6(   �� 5k      T� 5l      " T� X$" -1.495Q�6-   5m      .��5o      � $	��430��6   $	��653��6$   $��Right=�60   $��	0,0,-38,0q�6L   .+�5q      �� -   5        $ txtIdSup��5q      $y�Hidden=�60    . $ Nombre��5s      {�. $�� ��5t   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   �� 5v      -   5        # ��Name$# cmbCed��5v      $��60��6/   $��38��6:   $
 Nac.��5w       . $��	14,59,0,0q�5x   C   $
��Left=�6V   $	��Top=�6q   $��11(�6�   6�   �� 5z      -	   5        $ 	txtCedula��5z      $��	76,59,0,0q�61   $��38��6D    . $ Cédula��5|      {�. $�� ��5}   !   $��11(�6)   $	��150��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5~      -
   5        $ 	txtNombre��5~      $��	14,98,0,0q�61   $��38��6D    . $ Nombre��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5�      -   5        $ txtApellido��5�      $��
14,136,0,0q�63   $��38��6G    . $ Apellido��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5�      -   5        $# 	cmbEstado��5�      $	��500��62   $��38��6>   $ Estado��5�       . $��
14,175,0,0q�5�   C   $
��Left=�6W   $	��Top=�6r   $��11(�6�   !  MahApps.Metro.Controls.Tile  5�      -   5        $  Name$$ 	tlGuardar��5�   $   $
 Hand��67   $��52��6F   $��
0,0,92,143q�6R   $��58��6f   $��Bottom=�6q   $��Right=�6�   $ Guardar��6�   % J� Effect% 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      &   
BlurRadius$& 8Q�6/   '   Opacity$
' 0.95Q�6>   (   ShadowDepth$( 9Q�6M   .��5�      �� $��imagenes/guardar.png��6    $��48��6>   5�        5�      -   5        $$ 
tlCancelar��5�   $   $
 Hand��68   $��52��6G   $��0,235,155,0q�6S   $��58��6h   $��Right=�6s   $	��Top=�6�   $  0.431,-1.538&�6�   % 5�        5�      $
' 0.95Q�6/   $( 9Q�6>   $& 8Q�6N   .��5�      �� $��imagenes/Cancel.png��6    $��48��6=   $  0.611,1.417&�6H   5�      �� 5�      $	��(*)��6   $
��Left=�6*   $��
550,64,0,0q�6E   $	��Top=�6Y   ���	#FFF30C0C6q   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,104,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C$  0.458,2.077&�6�   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,144,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C6r   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,184,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C6r   �� 5�      $��(*) Campos obligatorios��6   $
��Left=�6>   $��299,226,0,0q�6Y   $	��Top=�6n   ���	#FFF30C0C$��31��6�   $  0.502,-3.129&�6�   5�      5�        5�      -   5        $ 
flCamarera��5�   ~   $ 	Camareras��6   $
 Left=�61   $��0,-2,-103,19q�6A   $
��Left=�6W   $	��714��6r   $ Light=�6�   
���   �$	��Top=�6�   $  0.5,0.5&�6�   .��5�      � $	��430��6   $	��653��6$   $��Right=�60   $��	0,0,-38,0q�6L   .+�5�        -   5        $ dtgrdcam��5�      	 .  $
 1��6f    .   .   .   .   .  $ Disabled=�6  $��Center=�6+  $��24,104,32,10q�6O  ��62   ��  5�        5�       .   . $ Cédula��6�    61   �� $ OneWay=�$ cedula� 5�   "   �� 5�   &   .�5�   *   ��  � ��$
 Left=�6a   5�   '   5�        5�       .   . $ Nombre��6�    61   �� $ OneWay=�$ nombre� 5�   "   �� 5�   &   .�5�   *   ��  � ��$
 Left=�6a   5�   '   5�        5�       .   . $ Apellido��6�    61   �� $ OneWay=�$ apellido� 5�   "   �� 5�   &   .�5�   *   ��  � ��$
 Left=�6a   5�   '   5�      5�      5�      5�      5�      5�      5�      