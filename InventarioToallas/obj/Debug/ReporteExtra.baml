   M S B A M L   `   `   `  ����g  cMicrosoft.ReportViewer.WinForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91tSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms  5       InventarioToallas$   InventarioToallas.ReporteExtra   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5        N� Title$  ReporteExtra��5
      .��5      � $��
0,0,-335,0q�6   .+�5   
   �� $��0��6   $��Retales��6    $��10q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��27��6U   .+�5      �� $#��Reporte de suministros extras��6    
�������$
��Bold"�6[   $��12(�6m   $��5,0,0,0q�6{   $
��Left=�5      $��Center=�6/   5      5      5      �� 5   
   -   5         ��Name$ txtBuscarHab��5      $��	20,55,0,0q�6(   $��38��6;   *  $MahApps.Metro.Controls.TextBoxHelper   UseFloatingWatermark .    	Watermark$ Habitación��5      {�. $�� ��5   !   $��11(�6)   $	��200��67   $
��Left=�6C   $	��Top=�6^   6v   (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dpFechaI��5      $
��Left=�6'   $��
246,55,0,0q�6B   $	��Top=�6V   $��10(�6n   $��38��6|   $	��199��6�   6�     5   
   -   5        $ dpFechaF��5      $
��Left=�6'   $��
480,55,0,0q�6B   $	��Top=�6V   $��10(�6n   $��38��6|   $	��185��6�   !  MahApps.Metro.Controls.Tile  5   
   -   5          Name$ 	tlGuardar��5       � Cursor$
 Hand��6+   $��38��6:   $��
755,55,0,0q�6F   $��45��6Z   $
��Left=�6e    � ToolTip$ Guardar��6�   $	��Top=�6�    J� Effect 5       3  -System.Windows.Media.Effects.DropShadowEffect  5!      	   
BlurRadius$	 8Q�6#   
   Opacity$

 0.95Q�62      ShadowDepth$ 9Q�6A   .��5#      �� $��imagenes/reporte.png��6   $��38��62   $��42��6=   5$      7  1System.Windows.Forms.Integration.WindowsFormsHost  5%   
   $��370,110,20,20q�6      Child. 5&      /   )Microsoft.Reporting.WinForms.ReportViewer  -   5        _reportViewer��[ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"  System.Windows.Forms.Control   	ForeColorU	 QSystem.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a# 	 System.Drawing.ColorConverter$   5&   5      PageCountMode$ Actual=�6B   5'      5(      5)      