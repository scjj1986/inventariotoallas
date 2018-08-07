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
    
    public partial class C_Perdida
    {

        conexion con;
        public int idPerdida { get; set; }
        public Nullable<int> idSuministro { get; set; }
        public Nullable<int> idHabitacion { get; set; }

        public Nullable<int> idCamarera { get; set; }
        public Nullable<int> cantidad { get; set; }
        public Nullable<System.DateTime> fecha { get; set; }
        public Nullable<int> idUsuario { get; set; }
        public Nullable<System.DateTime> fechaModificacion { get; set; }

        public string observacion { get; set; }

        public string hora { get; set; }

        public string nhab { get; set; }

        public string nomsum { get; set; }

        private bool _IsSelected = false;

        public bool IsSelected { get { return _IsSelected; } set { _IsSelected = value; OnChanged("IsSelected"); } }

        #region INotifyPropertyChanged Members

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnChanged(string prop)
        {
            if (PropertyChanged != null)
                PropertyChanged(this, new PropertyChangedEventArgs(prop));
        }

        #endregion
    
        public virtual C_Suministro C_Suministro { get; set; }
        public virtual C_Usuario C_Usuario { get; set; }

        public int Guardar()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("_sp_nuevaPerdida", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idsum", idSuministro);
                cmd.Parameters.AddWithValue("@idh", idHabitacion);
                cmd.Parameters.AddWithValue("@fecha", fecha);
                cmd.Parameters.AddWithValue("@cant", cantidad);
                cmd.Parameters.AddWithValue("@idus", idUsuario);
                cmd.Parameters.AddWithValue("@fechamod", fechaModificacion);
                cmd.Parameters.AddWithValue("@idcam", idCamarera);
                cmd.Parameters.AddWithValue("@hora", hora);
                cmd.Parameters.AddWithValue("@obs", observacion);
                cmd.Parameters.AddWithValue("@nh", nhab);
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

        public int Editar()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("_sp_editarPerdida", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idsum", idSuministro);
                cmd.Parameters.AddWithValue("@idh", idHabitacion);
                cmd.Parameters.AddWithValue("@fecha", fecha);
                cmd.Parameters.AddWithValue("@cant", cantidad);
                cmd.Parameters.AddWithValue("@idus", idUsuario);
                cmd.Parameters.AddWithValue("@fechamod", fechaModificacion);
                cmd.Parameters.AddWithValue("@idcam", idCamarera);
                cmd.Parameters.AddWithValue("@hora", hora);
                cmd.Parameters.AddWithValue("@obs", observacion);
                cmd.Parameters.AddWithValue("@nh", nhab);
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

        public int EliminarPerdida(DateTime fch)
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                string fechacad = Convert.ToString(fch);
                fechacad = fechacad.Replace(" 12:00:00 a.m.", "");
                String[] fech = fechacad.Split('/');
                fechacad = fech[2] + "-" + fech[1] + "-" + fech[0];
                SqlCommand cmd = new SqlCommand("_sp_EliminarPerdida", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idsum", idSuministro);
                cmd.Parameters.AddWithValue("@idh", idHabitacion);
                cmd.Parameters.AddWithValue("@fecha", fechacad);
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

        public List<C_Perdida> list_per_sum_cam(DateTime fecha, int idc)
        {
            List<C_Perdida> lsum = new List<C_Perdida>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarPerSumCam", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@fecha", fecha);
            cmd.Parameters.AddWithValue("@idc", idc);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Perdida sum = new C_Perdida();
                    sum.idSuministro = dr.GetInt32(1);
                    sum.idHabitacion = dr.GetInt32(2);
                    sum.nomsum = dr.GetString(10).Trim(new char[] { ' ' });
                    sum.cantidad = dr.GetInt32(3);
                    sum.observacion = dr.GetString(7).Trim(new char[] { ' ' });
                    sum.nhab = dr.GetString(11).Trim(new char[] { ' ' });

                    lsum.Add(sum);

                }
            }
            con.desconectar();
            return lsum;
        }

        public int EliminarPorCamyFecha()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                
                SqlCommand cmd = new SqlCommand("_sp_EliminarPerPorCamyFecha", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idc", idCamarera);
                cmd.Parameters.AddWithValue("@fecha", fecha);
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


    }
}
