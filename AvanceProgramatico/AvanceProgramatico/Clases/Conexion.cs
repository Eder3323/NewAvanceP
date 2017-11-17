using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Data;
using System.Configuration;

namespace AvanceProgramatico.Clases
{
    public class Conexion
    {
        private SqlConnection conexion;
        public Conexion()
        {
            string s = ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
            this.conexion = new SqlConnection(s);
        }
        public void conectar()
        {
            this.conexion.Open();
        }
        public void cerrar()
        {
            this.conexion.Close();
        }
        public SqlConnection getConexion()
        {
            return this.conexion;
        }
        //public DataSet LLenaGrid(string Tipo)
        //{
        //    cerrar();
        //    conectar();
        //    String sql = "Select Nombre,Correo,Grupo from Tbl_Usuarios where Tipo=Profesor";
        //    DataSet ds = new DataSet();
        //    SqlDataAdapter da = new SqlDataAdapter();

        //    SqlCommand cmd = new SqlCommand();
        //    try
        //    {

        //        cmd.CommandText = sql;
        //        da.SelectCommand = cmd;
        //        da.SelectCommand.Connection = this.conexion;
        //        da.Fill(ds);
        //    }
        //    catch (System.Data.SqlClient.SqlException error)
        //    {

        //    }
        //    cerrar();
        //    return ds;
        //}
        public DataTable tabla(string sql)
        {
            //el datatable nos ayuda a guardar los datos de la tabla que hemos selecionado en la consulta
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter();
            DataSet ds = new DataSet();
            //en esta parte se ejecuta la consulta sql para obtener la tabla
            da.SelectCommand = new SqlCommand(sql, conexion);
            //aqui llenamos el dataset con lo que contiene el dataadapter
            da.Fill(ds);
            //aqui guardamos en el datatable la tabla espesifica del dataset
            dt = ds.Tables[0];
            //finalmente retornamos el dt
            return dt;
        }
    }
}
