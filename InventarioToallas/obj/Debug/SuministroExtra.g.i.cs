﻿#pragma checksum "..\..\SuministroExtra.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "7FBCA59BC0AE9E2AEE7E607050F98CD5"
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
    /// SuministroExtra
    /// </summary>
    public partial class SuministroExtra : System.Windows.Controls.Page, System.Windows.Markup.IComponentConnector, System.Windows.Markup.IStyleConnector {
        
        
        #line 27 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.TextBox txtBuscarHab;
        
        #line default
        #line hidden
        
        
        #line 32 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdhab;
        
        #line default
        #line hidden
        
        
        #line 101 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdsumcamb;
        
        #line default
        #line hidden
        
        
        #line 181 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dtgrdsumrep;
        
        #line default
        #line hidden
        
        
        #line 227 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MahApps.Metro.Controls.Tile tlGuardar;
        
        #line default
        #line hidden
        
        
        #line 235 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal MahApps.Metro.Controls.Tile tlCancelar;
        
        #line default
        #line hidden
        
        
        #line 241 "..\..\SuministroExtra.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DatePicker dpFecha;
        
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
            System.Uri resourceLocater = new System.Uri("/InventarioToallas;component/suministroextra.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\SuministroExtra.xaml"
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
            
            #line 8 "..\..\SuministroExtra.xaml"
            ((InventarioToallas.SuministroExtra)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Page_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.txtBuscarHab = ((System.Windows.Controls.TextBox)(target));
            
            #line 30 "..\..\SuministroExtra.xaml"
            this.txtBuscarHab.KeyUp += new System.Windows.Input.KeyEventHandler(this.txtBuscarHab_KeyUp);
            
            #line default
            #line hidden
            return;
            case 3:
            this.dtgrdhab = ((System.Windows.Controls.DataGrid)(target));
            
            #line 34 "..\..\SuministroExtra.xaml"
            this.dtgrdhab.SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.dtgrdhab_SelectionChanged);
            
            #line default
            #line hidden
            return;
            case 4:
            this.dtgrdsumcamb = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 7:
            this.dtgrdsumrep = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 10:
            this.tlGuardar = ((MahApps.Metro.Controls.Tile)(target));
            
            #line 227 "..\..\SuministroExtra.xaml"
            this.tlGuardar.Click += new System.Windows.RoutedEventHandler(this.tlGuardar_Click);
            
            #line default
            #line hidden
            return;
            case 11:
            this.tlCancelar = ((MahApps.Metro.Controls.Tile)(target));
            
            #line 235 "..\..\SuministroExtra.xaml"
            this.tlCancelar.Click += new System.Windows.RoutedEventHandler(this.tlCancelar_Click);
            
            #line default
            #line hidden
            return;
            case 12:
            this.dpFecha = ((System.Windows.Controls.DatePicker)(target));
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
            
            #line 153 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.TextBox)(target)).KeyUp += new System.Windows.Input.KeyEventHandler(this.tBoxValue_KeyUp);
            
            #line default
            #line hidden
            
            #line 153 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.TextBox)(target)).LostFocus += new System.Windows.RoutedEventHandler(this.tBoxValue_LostFocus);
            
            #line default
            #line hidden
            break;
            case 6:
            
            #line 162 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).Loaded += new System.Windows.RoutedEventHandler(this.cmbObs_Loaded);
            
            #line default
            #line hidden
            
            #line 162 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmbObs_SelectionChanged);
            
            #line default
            #line hidden
            break;
            case 8:
            
            #line 212 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.TextBox)(target)).KeyUp += new System.Windows.Input.KeyEventHandler(this.tBoxValue2_KeyUp);
            
            #line default
            #line hidden
            break;
            case 9:
            
            #line 219 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).Loaded += new System.Windows.RoutedEventHandler(this.cmbObs2_Loaded);
            
            #line default
            #line hidden
            
            #line 219 "..\..\SuministroExtra.xaml"
            ((System.Windows.Controls.ComboBox)(target)).SelectionChanged += new System.Windows.Controls.SelectionChangedEventHandler(this.cmbObs2_SelectionChanged);
            
            #line default
            #line hidden
            break;
            }
        }
    }
}

