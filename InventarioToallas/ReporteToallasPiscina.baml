   M S B A M L   `   `   `  ����g  cMicrosoft.ReportViewer.WinForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3atSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinFormsMicrosoft.Reporting.WinForms  5       InventarioToallas-   'InventarioToallas.ReporteToallasPiscina   5      W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5      R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5      Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5      @d2http://schemas.microsoft.com/expression/blend/2008     5      brvSclr-namespace:Microsoft.Reporting.WinForms;assembly=Microsoft.ReportViewer.WinForms     5      T PMahApps.Metro, Version=1.4.3.0, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5      -   5          N� Title$  ReporteToallasPiscina��5
      .��5      � $��0,0,-600,10q�6   .+�5   
   �� $��0��6   $��Retales��6    $��10q�61   ��5      �� 5      .R�5      � $��Stretch=�6   $��Stretch=�69   $��27��6U   .+�5      �� $#��Reporte de Toallas de Piscina��6    
�������$
��Bold"�6[   $��12(�6m   $��5,0,0,0q�6{   $
��Left=�5      $��Center=�6/   5      5      5      (  "System.Windows.Controls.DatePicker  5   
   -   5          Name$ dpFecha��5      $
��Left=�6&   $��
432,55,0,0q�6A   $	��Top=�6U   $��10(�6m   $��38��6{   $	��162��6�   !  MahApps.Metro.Controls.Tile  5   
   -   5          Name$ 	tlGenerar��5       � Cursor$
 Hand��6+   $��38��6:   $��
604,55,0,0q�6F   $��45��6Z   $
��Left=�6e    � ToolTip$ Guardar��6�   $	��Top=�6�    J� Effect 5      3  -System.Windows.Media.Effects.DropShadowEffect  5         
BlurRadius$ 8Q�6#      Opacity$
 0.95Q�62      ShadowDepth$ 9Q�6A   .��5      �� $��imagenes/reporte.png��6   $��38��62   $��42��6=   5      7  1System.Windows.Forms.Integration.WindowsFormsHost  5   
   $��430,110,30,20q�6   	   Child.	 5       /   )Microsoft.Reporting.WinForms.ReportViewer  -   5        _reportViewer��[ WSystem.Windows.Forms, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089"  System.Windows.Forms.Control
   	ForeColorU	 QSystem.Drawing, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a# 	 System.Drawing.ColorConverter$
   5    5      PageCountMode$ Actual=�6B   5!      5$      5%      