   M S B A M L   `   `   `  ����  InventarioToallas*    $InventarioToallas.ListAsignHabCamHoy   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          N� Title$+  %Asignación de Habitaciones Por Fecha��5      $
��auto��6D   $
��auto��6R   .��5      �� .��5   
   � .+�5      �� $��0��6   $
��0,10q�6$   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�6=   $��14��6Y   .+�5      �� $+��%Asignación de Habitaciones Por Fecha��6$   
�������$
��Bold"�6f   $��11(�6x   $��5,0,0,-9q�6�   $
��Left=�5      $��Center=�6/   5      5      5      �� 5      $��FECHA:��6   $
��Left=�6%   $��	35,90,0,0q�6@   $��55��6S    J� RenderTransformOrigin$ 
0.511,2.96&�6^   $
��Bold"�6�   $��29��6�   $	��Top=�6�   (  "System.Windows.Controls.DatePicker  5      -   5          Name$ dtpFecha��5      $
��Left=�6+   $��	90,86,0,0q�6F   $	��160��6Y   $ 	0.5,1.923&�6e   $��33��6�   $	��Top=�6�   !  MahApps.Metro.Controls.Tile  5      -   5        $��btnConsultar��5   m   $��
265,86,0,0q�6      Title$      Consultar��60    � Cursor$
 Hand��6G   $	��Top=�6U   $��33��6�   $	��125��6�   $��10(�6�   $
��Left=�6�   {�.  J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5          ShadowDepth$ 9Q�6'      
BlurRadius$ 8Q�67      Opacity$
 0.95Q�6F   5"      �� 5'      -   5        	 ��Name$	 txtBuscarCam��5'      $��
35,132,0,0q�6,   *  $MahApps.Metro.Controls.TextBoxHelper
   UseFloatingWatermark
 .    	Watermark$ Buscar Camarera��5)      {�. $�� ��5*   !   $��11(�6)   $
��Left=�67   $	��215��6R   $��38��6^   $	��Top=�6j   6�   �� 5,      -   5        $	 txtBuscarCamHab��5,      $��255,132,0,0q�6/   
 . $ Buscar Camarera por Hab.��5.      {�. $�� ��5/   !   $��11(�6)   $
��Left=�67   $	��167��6R   $��38��6^   $	��Top=�6j   6�   &   System.Windows.Controls.DataGrid  51      -   5          Name$ dtgrdcam��51      $��35,185,140,0q�6)      AutoGenerateColumns .   �� AlternationCount$ 1��6t      CanUserReorderColumns .     CanUserResizeColumns .     CanUserAddRows .     CanUserResizeRows .     CanUserSortColumns .  $   HorizontalScrollBarVisibility$ Disabled=�6  $��Center=�69  ��. $
��Auto=�52      $
��Auto=�53       � ToolTip$E ?Click en una camarera para consultar habitaciones seleccionadas��69   {�. $	��200��6�   $	��Top=�6�   ��51   @   ��    Columns 59      0  *System.Windows.Controls.DataGridTextColumn  5:      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     
IsReadOnly .    Header$ Cédula��6~   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ cedula�   	CellStyle 5;      �� 5<      .�5=   "   ��  �� Property � �� �� Value$
 Left=�6Y   5>      5@        5A       .   . $ Nombre��6~    6)   �� $ OneWay=�$ nombre� 5B      �� 5C      .�5D   "   ��  � ��$
 Left=�6Y   5E      5G        5H       .   . $ Apellido��6�    6)   �� $ OneWay=�$ apellido� 5I      �� 5J      .�5K   "   ��  � ��$
 Left=�6Y   5L      5N        5P       .   . $ Nombre Supervisor��6�    6)   �� $ OneWay=�$ 	nombresup� 5Q      �� 5R      .�5S   "   ��  � ��$
 Left=�6Y   5T      5V        5W       .   . $ N° Hab.��6|    6)   �� $ OneWay=�$
 nhab� 5X      �� 5Y      .�5Z   "   ��  � ��$
 Left=�6Y   5[      5]        5_          
Visibility$  Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ idSupervisor� 5`      �� 5a      .�5b   "   ��  � ��$
 Left=�6Y   5c      5e        5f      $  Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ 
idCamarera� 5g      �� 5h      .�5i   "   ��  � ��$
 Left=�6Y   5j      5l      ! � 	Resources! 5q         RowMenu" � DataContext# �� RelativeSource��%�   &	        �� 5r      " 5s      �� *PlacementTarget.DataContext+# �� *Self+.@�5t      m� -   5        $��Editar Asignación��5t   #   6?   m� 5u      -   5        $ ��Emitir Reporte de Camarera��5u   #   6H   5v      5w      $   RowStyle$ 5x      �� 5y      % �� 
TargetType)	  #System.Windows.Controls.DataGridRow"% 	 6   .�5z      ��  �@�ContextMenu# [  68   5{      5}      �� 5      $��HABITACIONES ASIGNADAS��6   $
��Left=�65   $��
35,390,0,0q�6P   $	��173��6d   $��26��6p   $	��Top=�6|   $
��Bold"�6�   $ 0.497,0.931&�6�     5�      -	   5        $ dtgrdhabsel��5�      $��39,421,140,39q�6,    .  $ 1��6x    .   .   .   .   . $ Disabled=�6  $��Center=�6<  ��. $
��Auto=�5�      $
��Auto=�5�      $ 0.5,0.5&�6:   {�. &   CanUserDeleteRows& .  ��5�   D   ��  5�        5�      $  Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ ID_Room� 5�      �� 5�      .�5�   "   ��  � ��
 ��iA�6F   5�      5�        5�       .   . $ N Habitación��6~   '   CanUserSort' .  6)   �� $ OneWay=�$ RoomNo� 5�      �� 5�      ( �� Triggers( 5�   "   �� 5�   &   ) �� Binding) 62   �� $ OneWay=�$ llegada�* �� Value* 16`   .a�5�   *   ��  � ��$
 Bold"�6Q   5�   '   �� 5�   &   ) 62   �� $ OneWay=�$ salida�* 16_   .a�5�   *   ��  � ��
 �����6N   5�   '   5�      5�        5�       .   . $
 tipo��6�   ' .   6*   �� $ OneWay=�$ RoomTypeShortName� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�        5�       .   . $ Módulo��6�   ' .   6)   �� $ OneWay=�$ 	HSKGSName� 5�      �� 5�      .�5�   "   ��  � ��$ Center=�6Y   5�      5�        5�       .   . $ edif.��6�   ' .   6*   �� $ OneWay=�$ Building� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�        5�       .   . $	 pax��6�   ' .   6)   �� $ OneWay=�$ 
GuestTotal� 5�      �� 5�      .�5�   "   ��  � ��$ Center=�6Y   5�      5�        5�       .   . $ status��6   ' .   6*   �� $ OneWay=�$ status� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�      5�        5�      -
   5        +  Name$+ 	tlGuardar��5�      $
 Hand��6/   $��38��6>   $��
450,86,0,0q�6J   $��45��6^   $
��Left=�6i   $ Guardar��6�   $	��Top=�6�    5�        5�      $ 8Q�6'   $
 0.95Q�66   $ 9Q�6E   .��5�      �� $��imagenes/reporte.png��6   $��38��66   $��42��6A   5�      5�      5�      5�      