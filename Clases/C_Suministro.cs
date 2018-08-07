//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Clases
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;
    using System.Threading.Tasks;
    using System.Data;
    using System.Data.SqlClient;
    using Clases;
    using System.ComponentModel;
    using System.Windows;
    
    public partial class C_Suministro
    {
        public C_Suministro()
        {
            this.C_Extra = new HashSet<C_Extra>();
            this.C_Movimiento = new HashSet<C_Movimiento>();
            this.C_Perdida = new HashSet<C_Perdida>();
        }

        conexion con;
    
        public int idSuministro { get; set; }
        public string descripcion { get; set; }

        public string observacion { get; set; }



        public string tipo { get; set; }

        public int cantidad { get; set; }

        public int cantidadReal { get; set; }

        public int cantidadEstimada { get; set; }

        public int suciaReal { get; set; }




        public int suciaRealVieja { get; set; }
        public int cantidadRealVieja { get; set; }





        public int suciaEstimada { get; set; }

        public int cantidadSal { get; set; }

        //--------- Check para seleccionar cantidad entrante sea la misma a la estimada

        private bool _IsSelected = false;
        
        public bool IsSelected { get { return _IsSelected; } set { _IsSelected = value; OnChanged("IsSelected"); } }


        //--------- Check para seleccionar cantidad real sucia sea la misma a la estimada


        private bool _IsSelected2 = false;

        public bool IsSelected2 { get { return _IsSelected2; } set { _IsSelected2 = value; OnChanged("IsSelected2"); } }


        //--------- 

        private bool _IsSelected3= false;

        public bool IsSelected3{ get { return _IsSelected3; } set { _IsSelected3 = value; OnChanged("IsSelected3"); } }


        public List<C_Suministro> list_sum_cambio(int pax)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSuministrosCambio", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.cantidadEstimada = sum.cantidad;
                    if (pax>1)
                        sum.cantidadEstimada = sum.cantidad*pax;
                    sum.cantidadReal = 0;
                    sum.suciaEstimada = 0;
                    sum.suciaReal = 0;
                    sum.cantidadSal = 0;
                    sum.observacion = "";

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }

        public List<C_Suministro> list_sum_rep(int pax)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSuministrosRep", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.cantidadEstimada = sum.cantidad;
                    if (pax > 1)
                        sum.cantidadEstimada = sum.cantidad * pax;
                    sum.cantidadReal = 0;
                    sum.suciaEstimada = 0;
                    sum.suciaReal = 0;
                    sum.cantidadSal = 0;
                    sum.observacion = "";
                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }



        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnChanged(string prop)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        #endregion

        #region MÉTODOS PARA VALIDAR REDUNDANCIA EN DESCRIPCIÓN (INSERCIÓN Y MODIFICACIÓN)

        //(inserción)
        public int existeNombre()
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_existeSuministro", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@descr", descripcion);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.desconectar();
                return 1;
            }
            else
            {
                con.desconectar();
                return 0;
            }
        }

        //(modificación)
        public int existeNombre2()
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_existeSuministro2", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ids", idSuministro);
            cmd.Parameters.AddWithValue("@descr", descripcion);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                con.desconectar();
                return 1;
            }
            else
            {
                con.desconectar();
                return 0;
            }
        }

        #endregion

        #region AGREGAR SUMINISTRO
        public int NuevoSuministro()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("_sp_nuevoSuministro", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@descr", descripcion.ToUpper());
                cmd.Parameters.AddWithValue("@observ", observacion.ToUpper());
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@tipo", tipo);
                cmd.ExecuteNonQuery();
                con.desconectar();
                return 1;
            }
            catch
            {
                con.desconectar();
                return 0;
            }
        }

        #endregion

        #region EDITAR SUMINISTRO
        public int EditarSuministro()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("sp_mod_Suministro", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ids", idSuministro);
                cmd.Parameters.AddWithValue("@descr", descripcion.ToUpper());
                cmd.Parameters.AddWithValue("@observ", observacion.ToUpper());
                cmd.Parameters.AddWithValue("@cantidad", cantidad);
                cmd.Parameters.AddWithValue("@tipo", tipo);
                cmd.ExecuteNonQuery();
                con.desconectar();
                return 1;
            }
            catch
            {
                con.desconectar();
                return 0;
            }
        }

        #endregion

        #region LISTA DE SUMINISTROS
        public List<C_Suministro> listarSuministro()
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSuministros", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.observacion = (dr.IsDBNull(2))?"":dr.GetString(2).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.tipo = dr.GetString(4).Trim(new char[] { ' ' });
                    lsum.Add(sum);
                }
            }
            con.desconectar();
            return lsum;
        }

        #endregion

        #region LISTADO DE SUMINISTROS DE TIPO CAMBIO Y REPOSICIÓN EN MOVIMIENTO

        public List<C_Suministro> listarSuministroCambio()
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSuministros", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.observacion = (dr.IsDBNull(2)) ? "" : dr.GetString(2).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.tipo = dr.GetString(4).Trim(new char[] { ' ' });
                    sum.cantidadEstimada = 0;
                    sum.cantidadReal = 0;
                    sum.cantidadSal = 0;
                    if (sum.tipo=="CAMBIO")
                        lsum.Add(sum);
                }
            }
            con.desconectar();
            return lsum;
        }

        public List<C_Suministro> listarSuministroRep()
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSuministros", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.observacion = (dr.IsDBNull(2)) ? "" : dr.GetString(2).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.tipo = dr.GetString(4).Trim(new char[] { ' ' });
                    sum.cantidadEstimada = 0;
                    sum.cantidadReal = 0;
                    sum.cantidadSal = 0;
                    if (sum.tipo == "REPOSICION")
                        lsum.Add(sum);
                }
            }
            con.desconectar();
            return lsum;
        }

        #endregion


        #region LISTADO DE MOVIMIENTOS DE SUMINISTROS POR TIPO,HAB,FECHA Y HORA


        public List<C_Suministro> list_mov_sum_tipo(int idh, DateTime fecha, string hora, string tiposum)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarMovSumPorTipo", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@hora", hora);
            cmd.Parameters.AddWithValue("@tiposum", tiposum);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    sum.descripcion = dr.GetString(2).Trim(new char[] { ' ' });
                    sum.cantidadEstimada = dr.GetInt32(6);
                    sum.cantidadReal = dr.GetInt32(7);
                    sum.suciaEstimada = Convert.ToInt32(dr["suciaEstimada"]);
                    sum.suciaReal = Convert.ToInt32(dr["suciaReal"]);
                    //sum.suciaEstimada += sum.TotalExtraSumFecha(idh, fecha);//Sumar los extras

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }

        public List<C_Suministro> list_per_sum(int idh, DateTime fecha, string hora)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarPerSum", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@hora", hora);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();  
                    sum.idSuministro = dr.GetInt32(1);
                    sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }

        

        public List<C_Suministro> list_ext_sum(int idh, string fecha, string hora)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarPerSum", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@hora", hora);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }

        public C_Suministro per_sum_id(int idh, DateTime fecha, int ids)
        {
            
            if (con == null)
                con = new conexion();
            con.conectar();
            C_Suministro sum = null;
            SqlCommand cmd = new SqlCommand("_sp_PerSumId", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@ids", ids);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });
                }
                
            }
            con.desconectar();
            return sum;
        }

        public C_Suministro inc_sum_id(int idh, DateTime fecha, int ids)
        {

            if (con == null)
                con = new conexion();
            con.conectar();
            C_Suministro sum = null;
            SqlCommand cmd = new SqlCommand("_sp_IncSumId", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@ids", ids);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    //sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });
                }

            }
            con.desconectar();
            return sum;
        }

        public C_Suministro ext_sum_id(int idh, DateTime fecha, int ids)
        {

            if (con == null)
                con = new conexion();
            con.conectar();
            C_Suministro sum = null;
            SqlCommand cmd = new SqlCommand("_sp_ExtSumId", con.cnxn); 
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@ids", ids);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    //sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });
                }

            }
            con.desconectar();
            return sum;
        }



        public int TotalExtraSumFecha(int idh,DateTime fecha)
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarTotalExtSumFechaMov", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@ids", idSuministro);
            int total = 0;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    try { 
                        total = dr.GetInt32(0);
                    
                    }
                    catch
                    {
                        total = 0;
                    }
                    
                        
                }
            }
            con.desconectar();
            return total;

        }

        public int TotalExtraSumFechaMayor(int idh, string fecha)
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarTotalExtSumFecha", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@ids", idSuministro);
            int total = 0;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    try
                    {
                        total = dr.GetInt32(0);

                    }
                    catch
                    {
                        total = 0;
                    }


                }
            }
            con.desconectar();
            return total;

        }

        public int TotalExtraSum(int idh)
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarTotalExtSum", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@ids", idSuministro);
            int total = 0;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {

                    try
                    {
                        total = dr.GetInt32(0);

                    }
                    catch
                    {
                        total = 0;
                    }
                }
            }
            con.desconectar();
            return total;

        }
        
        
        public List<C_Suministro> list_ext_sum_tipo(int idh, string fecha, string tipo, int idc)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarExtSum", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@idh", idh);
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@tipo", tipo);
            cmd.Parameters.AddWithValue("@idc", idc);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(1);
                    sum.descripcion = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }



        #endregion

        #region BÚSQUEDA EN SUMINISTRO POR VALOR (COINCIDENCIA EN CADA CAMPO)
        public List<C_Suministro> BuscarSuministros(string valor)
        {
            List<C_Suministro> lsum = new List<C_Suministro>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_buscarSuministros", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@buscar", valor);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Suministro sum = new C_Suministro();
                    sum.idSuministro = dr.GetInt32(0);
                    sum.descripcion = dr.GetString(1).Trim(new char[] { ' ' });
                    sum.observacion = (dr.IsDBNull(2)) ? "" : dr.GetString(2).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.tipo = dr.GetString(4).Trim(new char[] { ' ' });
                    lsum.Add(sum);
                }
            }
            con.desconectar();
            return lsum;
        }

        #endregion

        public virtual ICollection<C_Extra> C_Extra { get; set; }
        public virtual ICollection<C_Movimiento> C_Movimiento { get; set; }
        public virtual ICollection<C_Perdida> C_Perdida { get; set; }
    }
}