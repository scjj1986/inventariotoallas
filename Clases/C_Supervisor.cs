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
    using System.Data;
    using System.Data.SqlClient;
    using Clases;
    using System.ComponentModel;
    
    public partial class C_Supervisor
    {
        public C_Supervisor()
        {
            this.C_Camarera = new HashSet<C_Camarera>();
        }

        conexion con;
    
        public int idSupervisor { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public string nac { get; set; }
        public string documento { get; set; }
        public string nombrecompleto { get; set; }


        public string cedula { get; set; }
        public Nullable<int> activo { get; set; }

        #region LISTADO DE SUPERVISORES

        public List<C_Supervisor> listarSupervisores()
        {
            List<C_Supervisor> list = new List<C_Supervisor>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSupervisores", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Supervisor nodo = new C_Supervisor();
                    nodo.idSupervisor = dr.GetInt32(0);
                    nodo.nombre = dr.GetString(1).Trim(new char[] { ' ' }); ;
                    nodo.apellido = dr.GetString(2).Trim(new char[] { ' ' });
                    nodo.nombrecompleto = nodo.nombre+" "+nodo.apellido;
                    nodo.nac = dr.GetString(3).Trim(new char[] { ' ' });
                    nodo.documento = dr.GetString(4).Trim(new char[] { ' ' });
                    nodo.cedula = nodo.nac + "-" + nodo.documento;
                    nodo.activo = dr.GetInt32(5);
                    list.Add(nodo);
                }
            }
            con.desconectar();
            return list;
        }

        #endregion

        #region SUPERVISOR POR ID

        public List<C_Supervisor> BuscarSupervisorPorId(int id)
        {
            List<C_Supervisor> list = new List<C_Supervisor>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_listarSupervisores", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Supervisor nodo = new C_Supervisor();
                    nodo.idSupervisor = dr.GetInt32(0);
                    nodo.nombre = dr.GetString(1).Trim(new char[] { ' ' }); ;
                    nodo.apellido = dr.GetString(2).Trim(new char[] { ' ' });
                    nodo.nombrecompleto = nodo.nombre + " " + nodo.apellido;
                    nodo.nac = dr.GetString(3).Trim(new char[] { ' ' });
                    nodo.documento = dr.GetString(4).Trim(new char[] { ' ' });
                    nodo.cedula = nodo.nac + "-" + nodo.documento;
                    nodo.activo = dr.GetInt32(5);
                    if (id==nodo.idSupervisor)
                        list.Add(nodo);
                }
            }
            con.desconectar();
            return list;
        }

        public C_Supervisor SupervisorPorId(int id)
        {
            
            if (con == null)
                con = new conexion();
            con.conectar();
            C_Supervisor nodo = null;
            SqlCommand cmd = new SqlCommand("_sp_listarSupervisores", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    
                    
                    if (id == dr.GetInt32(0)){

                        nodo= new C_Supervisor();
                        nodo.idSupervisor = dr.GetInt32(0);
                        nodo.nombre = dr.GetString(1).Trim(new char[] { ' ' }); ;
                        nodo.apellido = dr.GetString(2).Trim(new char[] { ' ' });
                        nodo.nombrecompleto = nodo.nombre + " " + nodo.apellido;
                        nodo.nac = dr.GetString(3).Trim(new char[] { ' ' });
                        nodo.documento = dr.GetString(4).Trim(new char[] { ' ' });
                        nodo.cedula = nodo.nac + "-" + nodo.documento;
                        nodo.activo = dr.GetInt32(5);

                    }
                        
                }
            }
            con.desconectar();
            return nodo;
        }

        #endregion

        #region AGREGAR/MODIFICAR SUPERVISOR
        public int NuevoSupervisor()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("_sp_nuevoSupervisor", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nac", nac.ToUpper());
                cmd.Parameters.AddWithValue("@documento", documento);
                cmd.Parameters.AddWithValue("@nombre", nombre.ToUpper());
                cmd.Parameters.AddWithValue("@apellido", apellido.ToUpper());
                cmd.Parameters.AddWithValue("@estado", activo);
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

        public int EditarSupervisor()
        {
            try
            {
                if (con == null)
                    con = new conexion();
                con.conectar();
                SqlCommand cmd = new SqlCommand("sp_mod_Supervisor", con.cnxn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@id", idSupervisor);
                cmd.Parameters.AddWithValue("@nac", nac);
                cmd.Parameters.AddWithValue("@documento", documento);
                cmd.Parameters.AddWithValue("@nombre", nombre.ToUpper());
                cmd.Parameters.AddWithValue("@apellido", apellido.ToUpper());
                cmd.Parameters.AddWithValue("@estado", activo);
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

        #region FILTRADO DE SUPERVISORES 

        public List<C_Supervisor> BuscarSupervisores(string valor)
        {
            List<C_Supervisor> list = new List<C_Supervisor>();
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_buscarSupervisores", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@buscar", valor);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    C_Supervisor nodo = new C_Supervisor();
                    nodo.idSupervisor = dr.GetInt32(0);
                    nodo.nombre = dr.GetString(1).Trim(new char[] { ' ' }); ;
                    nodo.apellido = dr.GetString(2).Trim(new char[] { ' ' });
                    nodo.nac = dr.GetString(3).Trim(new char[] { ' ' });
                    nodo.documento = dr.GetString(4).Trim(new char[] { ' ' });
                    nodo.cedula = nodo.nac + "-" + nodo.documento;
                    nodo.activo = dr.GetInt32(5);
                    list.Add(nodo);
                }
            }
            con.desconectar();
            return list;
        }

        #endregion

        #region MÉTODOS PARA EVITAR CÉDULA REPETIDA (INSERCIÓN Y MODIFICACIÓN)

        public int existeCedula()
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_existeCedulaSupervisor", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@nac", nac);
            cmd.Parameters.AddWithValue("@documento", documento);
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

        public int existeCedula2()
        {
            if (con == null)
                con = new conexion();
            con.conectar();
            SqlCommand cmd = new SqlCommand("_sp_existeCedulaSupervisor2", con.cnxn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", idSupervisor);
            cmd.Parameters.AddWithValue("@nac", nac);
            cmd.Parameters.AddWithValue("@documento", documento);
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

        public virtual ICollection<C_Camarera> C_Camarera { get; set; }

        
    }
}
