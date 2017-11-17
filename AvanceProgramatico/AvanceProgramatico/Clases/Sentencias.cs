using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Paginas;
using System.Configuration;

namespace AvanceProgramatico.Clases
{
    public class Sentencias:Conexion
    {

        private SqlDataReader registro;
        private SqlConnection con;

       
       
        public Sentencias()
        {
            this.con = getConexion();
        }
        public void jquery()
        {
            ScriptManager.ScriptResourceMapping.AddDefinition
                (
                    "jquery", new ScriptResourceDefinition
                    {
                        Path = "~/public/js/jquery.js",
                        DebugPath = "~/public/js/jquery.js",
                        CdnSupportsSecureConnection = true,
                        LoadSuccessExpression = "window.jQuery"
                    }
                );
        }
        public SqlDataReader getUsuarios()
        {
            conectar();
            String sql = "select id,nombre,correo from usuarios;";

            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            return this.registro;
        }
        public void cargarcombo()
        {
          //  SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
          //  _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Nombre from Tbl_Carreras", con);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            //lista.DataSource = ds;
            //lista.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            //lista.DataValueField = "Nombre";
            //lista.DataBind();

        }

        public void InsertarProfesor(int matricula, String clave, String nombre,String correo)
        {
            //            Matricula int primary key,
            //Clave varchar(30),
            //Nombre varchar(75),
            //Correo varchar(50),
            //Firma image,
            //Grupo varchar(30) null,
            //Tipo varchar(30),
            //fk_Rol int      insert into Tbl_Usuarios values (444,'hola','edeer','zorr@gmail.com','de','f113','Jefe_Grupo',2)
            String grupo = "";
            String tipo = "Profesor";
            int rol = 2;

            conectar();
            String sql = "insert into Tbl_Usuarios " +
                            "values " +
                            "(" + matricula + ",'" + clave + "','" + nombre + "','" + correo + "','" + tipo + "','" + rol + ")";
            SqlCommand comando = new SqlCommand(sql, con);
            comando.ExecuteNonQuery();
            

            cerrar();
        }
        public void Borrar(int id)
        {
            conectar();
            String sql = "delete from usuarios where id='" + id + "'";
            SqlCommand comando = new SqlCommand(sql, this.con);
            comando.ExecuteNonQuery();
            cerrar();
        }
        public void CargarTabla(GridView grilla,Label lblestado)
        {
         
            conectar();
            
            String sql =( "select * from Tbl_Usuarios where Tipo='Alumno' " );
            SqlCommand comando = new SqlCommand(sql, con);
            SqlDataAdapter ad = new SqlDataAdapter(comando);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            grilla.DataSource = dt;
            grilla.DataBind();

            int registro=comando.ExecuteNonQuery();
            if (registro == 0) { lblestado.Visible = true; lblestado.Text = "TABLA VACIA"; }
            else{lblestado.Visible = false;}
            
            cerrar();
        }
        
        public SqlDataReader getUsuarioPorId(int id)
        {
            conectar();
            String sql = "select id,nombre,correo from usuarios where id='" + id + "'; ";
            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            //cerrar();
            return this.registro;
        }

        public int Modificar(String nombre, String correo, String id)
        {
            cerrar();
            conectar();
            int numero = int.Parse(id);
            String sql = "update usuarios " +
                          " set " +
                          " nombre='" + nombre + "'," +
                          " correo='" + correo + "'" +
                          " where " +
                          " id=" + numero + " ";
            SqlCommand comando = new SqlCommand(sql, this.con);
            int cantidad = comando.ExecuteNonQuery();
            cerrar();
            return cantidad;
        }

        public String Logueo(int Usuario, String Clave)
        {
            try
            {
                string Tipo;
                cerrar();
                conectar();
                String sql = "Select Matricula,Clave,Tipo from Tbl_Usuarios where Matricula=" + Usuario + " and Clave='" + Clave + "' and Tipo='Alumno'";
                SqlCommand comando = new SqlCommand(sql, this.con);
                String sql2 = "Select Matricula,Clave,Tipo from Tbl_Usuarios where Matricula=" + Usuario + " and Clave='" + Clave + "' and Tipo='Profesor'";
                SqlCommand comando2 = new SqlCommand(sql2, this.con);
                String sql3 = "Select Matricula,Clave,Tipo from Tbl_Usuarios where Matricula=" + Usuario + " and Clave='" + Clave + "' and Tipo='Coordinador'";
                SqlCommand comando3 = new SqlCommand(sql3, this.con);
                int cantidad = Convert.ToInt32(comando.ExecuteScalar());
                int cantidad2 = Convert.ToInt32(comando2.ExecuteScalar());
                int cantidad3 = Convert.ToInt32(comando3.ExecuteScalar());
                if (cantidad != 0)
                {
                   
                    
                    Tipo = "Alumno";

                }
                else if (cantidad2 !=0)
                {
        
                    Tipo = "Profesor";

                }
                else if (cantidad3 != 0)
               {
    
                    Tipo = "Coordinador";
                }
                else
                {
                    Tipo = "Usuario Incorrecto";
                }
                cerrar();
                return Tipo;
                
            }
            catch (Exception e)
            {
                throw;
            
            }
          

        }
        public DataSet LLenaComboGrid(string Tipo)
        {
            cerrar();
            conectar();
            String sql = "Select Nombre,Correo,Grupo from Tbl_Usuarios where Tipo='" + Tipo + "'";
            DataSet ds = new DataSet();
            SqlDataAdapter da = new SqlDataAdapter();

            SqlCommand cmd = new SqlCommand();
            try
            {

                cmd.CommandText = sql;
                da.SelectCommand = cmd;
                da.SelectCommand.Connection = this.con;
                da.Fill(ds);
            }
            catch (System.Data.SqlClient.SqlException error)
            {

            }
            cerrar();
            return ds;
        }

       
    

   
}
}

       
   