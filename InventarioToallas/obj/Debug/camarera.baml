   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089M4clr-namespace:System.Globalization;assembly=mscorlibSystem.Globalization  5       InventarioToallas    InventarioToallas.camarera   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      Cgl4clr-namespace:System.Globalization;assembly=mscorlib     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          N� Title$  	Camareras��5
      $
��auto��6   $
��auto��6!   .��5      � $��	0,0,10,46q�6   .+�5   
   �� $��0��6   $��Retales��6    $��
10,0,10,10q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��36��6U   .+�5      �� $��	Camareras��6    
�������$
��Bold"�6G   $��16(�6Y   $��5,0,0,0q�6g   $
��Left=�5      $��Center=�6/   5      5      5      � 5   
   $��	0,0,0,-23q�6   .+�5      �� -   5        $��BtnNvCam��5      
��� � � � Cursor$
 Hand��69      AccentedSquareButtonStyle#��[  6H   $��	24,54,0,0q�6{   $
��Left=�6�   $��48��6�   $��48��6�   $	��Top=�6�    � ToolTip$ Nueva Camarera��6�   ��5      �� 5       �� ImageSource$ imagenes/nuevo.png��6!    j� Stretch$
 None=�6B   5      �� 5       -   5         ��Name$ txtBuscarCam��5       $��
24,115,0,0q�6,   $��38��6@   *  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    	Watermark$ Buscar��5"      {�. $�� ��5#   !   $��11(�6)   $	��150��67   $
��Left=�6C   $	��Top=�6^   6v   &   System.Windows.Controls.DataGrid  5$      -   5          Name$ dtgrdcam��5$      	   AutoGenerateColumns	 .  
 �� AlternationCount$
 1��6^      CanUserReorderColumns .     CanUserResizeColumns .     CanUserAddRows .     CanUserResizeRows .     CanUserSortColumns .  $- 'Doble click para modificar una camarera��6�   $   HorizontalScrollBarVisibility$ Disabled=�6,  $��Center=�6U  $��24,164,26,45q�6y  ��. $
��Auto=�5%      $
��Auto=�5&      ��5$   *   ��    Columns 5'      0  *System.Windows.Controls.DataGridTextColumn  5(      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     
IsReadOnly .    Header$ Cédula��6~   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ cedula�   	CellStyle 5)      �� 5*      .�5+   "   ��  �� Property � �� �� Value$
 Left=�6Y   5,      5.        5/       .   . $ Nombre��6~    6)   �� $ OneWay=�$ nombre� 50      �� 51      .�52   "   ��  � ��$
 Left=�6Y   53      55        56       .   . $ Apellido��6�    6)   �� $ OneWay=�$ apellido� 57      �� 58      .�59   "   ��  � ��$
 Left=�6Y   5:      5<        5>       .   . $ Cédula Supervisor��6~    6)   �� $ OneWay=�$ cedsup� 5?      �� 5@      .�5A   "   ��  � ��$
 Left=�6Y   5B      5D        5F       .   . $ Nombre Supervisor��6�    6)   �� $ OneWay=�$ 	nombresup� 5G      �� 5H      .�5I   "   ��  � ��$
 Left=�6Y   5J      5L        5N         
Visibility$ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ idSupervisor� 5O      �� 5P      .�5Q   "   ��  � ��$
 Left=�6Y   5R      5T        5U      $ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ 
idCamarera� 5V      �� 5W      .�5X   "   ��  � ��$
 Left=�6Y   5Y      5[        5\      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$	 nac� 5]      �� 5^      .�5_   "   ��  � ��$
 Left=�6Y   5`      5b        5c      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$ 	documento� 5d      �� 5e      .�5f   "   ��  � ��$
 Left=�6Y   5g      5i        5j      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$ estado� 5k      �� 5l      .�5m   "   ��  � ��$
 Left=�6Y   5n      5p      5r      #  MahApps.Metro.Controls.Flyout  5s      -   5          Name$ 
flNuevaCam��5s   `      Header$ Nueva Camarera��6      Position$
 Left=�66   $��-8,-10,-351,-120q�6F      Theme$ Light=�6t     J� RenderTransformOrigin$  0.5,0.5&�6�   #��� ��6�   $	��649��6  $��Right=�6   z�5t      V� 5u      .~�5v      �� �� 5w      ! �� AngleX$! -0.28Q�6(   �� 5x      T� 5y      " T� X$" -1.495Q�6-   5z      .��5|      � $	��430��6   $��
10,0,-14,0q�6$   .+�5~      �� -   5        $ txtIdSupCam��5~      $y�Hidden=�63    . $ Nombre��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   �� 5�      -   5        $ txtIdCam��5�      $y�Hidden=�60    . $ Nombre��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   �� 5�      -   5        # ��Name$# 	cmbCedCam��5�      $��60��62   $��38��6=   $
 Nac.��5�       . $��	14,10,0,0q�5�   C   $
��Left=�6V   $	��Top=�6q   $��11(�6�   6�   �� 5�      -	   5        $ txtCedulaCam��5�      $��	79,10,0,0q�64   $��38��6G    . $ Cédula��5�      {�. $�� ��5�   !   $��11(�6)   $	��150��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5�      -
   5        $ txtNombreCam��5�      $��	14,48,0,0q�64   $��38��6G    . $ Nombre��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5�      -   5        $ txtApellidoCam��5�      $��	14,86,0,0q�66   $��38��6I    . $ Apellido��5�      {�. $�� ��5�   !   $��11(�6)   $	��500��67   $
��Left=�6C   $	��Top=�6^   6v   �� 5�      -   5        $# 	cmbSupCam��5�      $	��500��62   $��38��6>   $ Supervisor Encargado��5�       . $��
14,125,0,0q�5�   C   $
��Left=�6W   $	��Top=�6r   $��11(�6�   �� 5�      -   5        $# cmbEstadoCam��5�      $	��500��65   $��38��6A   $ Estado��5�       . $��
14,163,0,0q�5�   C   $
��Left=�6W   $	��Top=�6r   $��11(�6�   !  MahApps.Metro.Controls.Tile  5�      -   5        $  Name$$ tlGuardarCam��5�   $   $
 Hand��6:   $��52��6H   $��
0,0,92,148q�6T   $��58��6h   $��Bottom=�6s   $��Right=�6�   $ Guardar��6�   % J� Effect% 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      &   
BlurRadius$& 8Q�6/   '   Opacity$
' 0.95Q�6>   (   ShadowDepth$( 9Q�6M   .��5�      �� $��imagenes/guardar.png��6    $��48��6>   5�        5�      -   5        $$ tlCancelarCam��5�   $   $
 Hand��6;   $��52��6J   $��0,229,155,0q�6V   $��58��6k   $��Right=�6v   $	��Top=�6�   $  0.431,-1.538&�6�   % 5�        5�      $
' 0.95Q�6/   $( 9Q�6>   $& 8Q�6N   .��5�      �� $��imagenes/Cancel.png��6    $��48��6=   $  0.611,1.417&�6H   5�      �� 5�      $	��(*)��6   $
��Left=�6*   $��
550,64,0,0q�6E   $	��Top=�6Y   ���	#FFF30C0C6q   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,104,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C$  0.458,2.077&�6�   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,144,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C6r   �� 5�      $	��(*)��6   $
��Left=�6*   $��550,184,0,0q�6E   $	��Top=�6Z   ���	#FFF30C0C6r   �� 5�      $��(*) Campos obligatorios��6   $
��Left=�6>   $��299,220,0,0q�6Y   $	��Top=�6n   ���	#FFF30C0C$��31��6�   $  0.502,-3.129&�6�   5�      5�      5�      5�      5�      