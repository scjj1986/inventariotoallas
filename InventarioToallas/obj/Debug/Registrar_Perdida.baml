   M S B A M L   `   `   `  ����  InventarioToallas)    #InventarioToallas.Registrar_Perdida   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          � Title$  Registrar Pérdida��5	      .��5      � .+�5   
   �� $��0��6   $��20,10,10,10q�6    ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��14��6U   .+�5      �� $��Registrar Pérdida��6    
�������$
��Bold"�6O   $��11(�6a   $��5,0,0,-9q�6o   $
��Left=�5      $��Center=�6/   5      5      5      � 5   
   .+�5      �� $��DATOS DE LA CAMARERA��6   $
��Left=�63   $��	39,69,0,0q�6N   $	��173��6a   $��26��6m   $	��Top=�6y   $
��Bold"�6�    J� RenderTransformOrigin$ 0.497,0.931&�6�   &   System.Windows.Controls.DataGrid  5      -   5          Name$ 	dtgrdcam2��5      $��
39,105,0,0q�6*      AutoGenerateColumns .   �� AlternationCount$ 1��6s      CanUserReorderColumns .     CanUserResizeColumns .     CanUserAddRows .     CanUserResizeRows .  	   CanUserSortColumns	 .  $
   HorizontalScrollBarVisibility$
 Disabled=�6  $��Center=�68  ��. $
��Auto=�5      $
��Auto=�5      $	��125��69   $	��Top=�6F   $
��Left=�6^   $	��786��6y   ��5   ?   ��    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5      ,  &System.Windows.Controls.DataGridColumn   CanUserResize .     
IsReadOnly .    Header$ Cédula��6~   1  +System.Windows.Controls.DataGridBoundColumn   Binding 6)   ��  �� Mode$ OneWay=� �� Path$ cedula�   	CellStyle 5       �� 5!      .�5"   "   ��  �� Property � �� �� Value$
 Left=�6Y   5#      5%        5&       .   . $ Nombre��6~    6)   �� $ OneWay=�$ nombre� 5'      �� 5(      .�5)   "   ��  � ��$
 Left=�6Y   5*      5,        5-       .   . $ Apellido��6�    6)   �� $ OneWay=�$ apellido� 5.      �� 5/      .�50   "   ��  � ��$
 Left=�6Y   51      53        55       .   . $ Nombre Supervisor��6�    6)   �� $ OneWay=�$ 	nombresup� 56      �� 57      .�58   "   ��  � ��$
 Left=�6Y   59      5;        5>       .   . $ N° hab.��6|    6)   �� $ OneWay=�$
 nhab� 5?      �� 5@      .�5A   "   ��  � ��$
 Left=�6Y   5B      5D        5H         
Visibility$ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ idSupervisor� 5I      �� 5J      .�5K   "   ��  � ��$
 Left=�6Y   5L      5N        5O      $ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ 
idCamarera� 5P      �� 5Q      .�5R   "   ��  � ��$
 Left=�6Y   5S      5U        5V      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$	 nac� 5W      �� 5X      .�5Y   "   ��  � ��$
 Left=�6Y   5Z      5\        5]      $ Hidden=�6)    .   . $ estado��6�    6=   �� $ OneWay=�$ 	documento� 5^      �� 5_      .�5`   "   ��  � ��$
 Left=�6Y   5a      5c      5e      �� 5g      $��HABITACIONES ASIGNADAS��6   $
��Left=�65   $��
39,269,0,0q�6P   $	��173��6d   $��26��6p   $	��Top=�6|   $
��Bold"�6�   $ 0.497,0.931&�6�     5i      -   5        $ dtgrdhabsel2��5i      $��
39,310,0,0q�6-    .  $ 1��6v    .   .   .   .  	 .  $
 Disabled=�6  $��Center=�6;  ��. $
��Auto=�5j      $
��Auto=�5k      $ 0.5,0.5&�6:   {�.    CanUserDeleteRows .  $
��Left=�6�   $	��376��6�   $	��352��6�   $	��Top=�6�   ��5i   B   ��  5m        5o       .   . $ N Habitación��6~    6)   �� $ OneWay=�$ RoomNo� 5p      �� 5q      .�5r   "   ��  � ��$ Center=�6Y   5s      5u        5x       .   . $
 tipo��6�    6*   �� $ OneWay=�$ RoomTypeShortName� 5y      �� 5z      .�5{   "   ��  � ��$
 Left=�6Y   5|      5~        5�       .   . $ Módulo��6�    6)   �� $ OneWay=�$ 	HSKGSName� 5�      �� 5�      .�5�   "   ��  � ��$ Center=�6Y   5�      5�        5�       .   . $ edif.��6�    6*   �� $ OneWay=�$ Building� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�        5�       .   . $	 pax��6�    6)   �� $ OneWay=�$ 
GuestTotal� 5�      �� 5�      .�5�   "   ��  � ��$ Center=�6Y   5�      5�        5�       .   . $ status��6    6*   �� $ OneWay=�$ status� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�        5�      $ Hidden=�6)    .   . $ Id��6�    6=   �� $ OneWay=�$ ID_Room� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�      5�      �� 5�      $4��.SUMINISTROS CON INCIDENCIA DE POSIBLE PÉRDIDA��6   $
��Left=�6L   $��539,269,0,0q�6g   $	��321��6|   $��26��6�   $	��Top=�6�   $
��Bold"�6�   $ 0.497,0.931&�6�     5�      -   5        $ dtgrdsumcamb2��5�      $��540,300,0,0q�6.    .  $ 1��6x    .   .   .   .  	 .  $
 Disabled=�6  $��Center=�6=  ��. $
��Auto=�5�      $
��Auto=�5�      {�. $ 0.983,0.303&�6Q    .  $	��230��6�   $	��Top=�6�   $
��Left=�6�   $	��570��6�   ��5�   D   �� z�5�      V� 5�      .~�5�      �� �� 5�       �� AngleX$ 0.076Q�6(   �� 5�      T� 5�       T� X$ 0.075Q�6-   5�       5�        5�       .   . $ 
Suministro��6      Width5  /System.Windows.Controls.DataGridLengthConverter$	 150 6�    6)   �� *descripcion+$ OneWay=� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�        5�       .   . $ Cantidad Pérdida��6|   $	 150 6�    6)   �� *
cantidad+$ OneWay=� 5�      �� 5�      .�5�   "   ��  � ��$
 Left=�6Y   5�      5�      4  .System.Windows.Controls.DataGridTemplateColumn  5�       .  $ confirmar pérdida��6A      CellTemplate 5�      �� 5�      .R�5�   "   ��  ��Name$ 
chkSucCamb��6H   $��Center=�6+    d� 	IsChecked 6\   �� *
IsSelected+$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�5�      5�        5�       .   .  $ OBSERVACIÓN��6S   $	 150 6h    5�      �� 5�      .R�5�      �� $��txtObs��6P   -   5         �� 	MaxLength$	 150��5�   ^   ��6&   �� *observacion+$ TwoWay=�6�   5�      5�      5�      !  MahApps.Metro.Controls.Tile  5�      -   5          Name$ 	tlGuardar��5�        � Cursor$
  Hand��6/   $��50��6=   $��	0,0,65,35q�6I   $��58��6\   $��Right=�6g   ! � ToolTip$! Guardar��6�   $ -0.052,4.654&�6�   $��Bottom=�6�   $��1��6�   $��2��6�   $��1��6  " J� Effect" 5�      3  -System.Windows.Media.Effects.DropShadowEffect  5�      #   
BlurRadius$# 8Q�6'   $   Opacity$
$ 0.95Q�66   %   ShadowDepth$% 9Q�6E   .��5�      �� $��imagenes/guardar.png��6   $��48��66   5�        5�      -   5        $ 
tlCancelar��5�      $
  Hand��60   $��50��6?   $��
0,0,128,35q�6K   $��58��6_   $ 0.431,-1.538&�6j   $��Right=�6�   $��Bottom=�6�   $��1��6�   $��2��6�   $��1��6�   " 5�        5�      $
$ 0.95Q�6'   $% 9Q�66   $# 8Q�6F   .��5�      �� $��imagenes/Cancel.png��6   $��48��65   $ 0.611,1.417&�6@   5�      5�      5�      5�      