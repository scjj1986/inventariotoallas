﻿#pragma checksum "..\..\Registrar_Extra.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "5B2ED68B253A5575EB6857F3B223BFEB"
//------------------------------------------------------------------------------
// <auto-generated>
//     Este código fue generado por una herramienta.
//     Versión de runtime:4.0.30319.42000
//
//     Los cambios en este archivo podrían causar un comportamiento incorrecto y se perderán si
//     se vuelve a generar el código.
// </auto-generated>
//------------------------------------------------------------------------------

using MahApps.Metro.Controls;
using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Forms.Integration;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;


namespace InventarioToallas {
    
    
    /// <summary>
    /// Registrar_Extra
    /// </summary>
    public partial class Registrar_Extra : MahApps.Metro.Controls.MetroWindow, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 23 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdcam2;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdhabsel2;
        
        #line default
        #line hidden
        
        
        #line 179 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdsumcamb;
        
        #line default
        #line hidden
        
        
        #line 235 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdsumrep;
        
        #line default
        #line hidden
        
        
        #line 287 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MahApps.Metro.Controls.Tile tlGuardar;
        
        #line default
        #line hidden
        
        
        #line 293 "..\..\Registrar_Extra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MahApps.Metro.Controls.Tile tlCancelar;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/InventarioToallas;component/registrar_extra.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\Registrar_Extra.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 8 "..\..\Registrar_Extra.xaml"
            ((InventarioToallas.Registrar_Extra)(target)).Loaded += new System.Windows.RoutedEventHandler(this.MetroWindow_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.dtgrdcam2 = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 3:
            this.dtgrdhabsel2 = ((System.Windows.Controls.DataGrid)(target));
            
            #line 103 "..\..\Registrar_Extra.xaml"
            this.dtgrdhabsel2.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.dtgrdhabsel_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.dtgrdsumcamb = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 6:
            this.dtgrdsumrep = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 8:
            this.tlGuardar = ((MahApps.Metro.Controls.Tile)(target));
            
            #line 287 "..\..\Registrar_Extra.xaml"
            this.tlGuardar.Click += new System.Windows.RoutedEventHandler(this.tlGuardar_Click);
            
            #line default
            #line hidden
            return;
            case 9:
            this.tlCancelar = ((MahApps.Metro.Controls.Tile)(target));
            
            #line 293 "..\..\Registrar_Extra.xaml"
            this.tlCancelar.Click += new System.Windows.RoutedEventHandler(this.tlCancelar_Click);
            
            #line default
            #line hidden
            return;
            }
            this._contentLoaded = true;
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        void System.Windows.Markup.IStyleConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 5:
            
            #line 223 "..\..\Registrar_Extra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).Loaded += new System.Windows.RoutedEventHandler(this.cmbObs_Loaded);
            
            #line default
            #line hidden
            
            #line 223 "..\..\Registrar_Extra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmbObs_SelectionChanged);
            
            #line default
            #line hidden
            break;
            case 7:
            
            #line 279 "..\..\Registrar_Extra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).Loaded += new System.Windows.RoutedEventHandler(this.cmbObs2_Loaded);
            
            #line default
            #line hidden
            
            #line 279 "..\..\Registrar_Extra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmbObs2_SelectionChanged);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

