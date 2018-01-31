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
    public class Sentencias : Conexion
    {

        private SqlDataReader registro;
        private SqlConnection con;
        private SqlDataReader registro1;  



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
            String sql = "select Matricula,Clave,Nombre from Tbl_Usuarios;";

            SqlCommand comando = new SqlCommand(sql, this.con);
            this.registro = comando.ExecuteReader();
            return this.registro;
        }
        public SqlDataReader getUsuarios2(int busqueda)
        {
            conectar();
            if (busqueda >0)
            {
                String sql = "select Matricula,Clave,Nombre from Tbl_Usuarios where Matricula like '" + busqueda + "%'";
                SqlCommand comando = new SqlCommand(sql, this.con);
                this.registro = comando.ExecuteReader();
                
            }
            else if(busqueda<=0)
            {

                String sql = "select Matricula,Clave,Nombre from Tbl_Usuarios;";
                SqlCommand comando = new SqlCommand(sql, this.con);
                this.registro = comando.ExecuteReader();
               
            }
            return this.registro;



        }
       

        public void InsertarProfesor(int matricula, String clave, String nombre, String correo, String firma)
        {

            String grupo = "";
            String tipo = "Profesor";
            int rol = 2;

            conectar();
            String sql = "insert into Tbl_Usuarios " +
                            "values " +
                            "(" + matricula + ",'" + clave + "','" + nombre + "','" + correo + "','" + firma + "','" + grupo + "','" + tipo + "'," + rol + ")";
            SqlCommand comando = new SqlCommand(sql, con);
            String matricula2 = "P_"+matricula.ToString();
           
            comando.ExecuteNonQuery();
         


            cerrar();
        }
        public void InsertarAlumno(int matricula, String clave, String nombre, String correo, String firma, String grupo)
        {


            String tipo = "Alumno";
            int rol = 1;

            conectar();
            String sql = "insert into Tbl_Usuarios " +
                            "values " +
                            "(" + matricula + ",'" + clave + "','" + nombre + "','" + correo + "','" + firma + "','" + grupo + "','" + tipo + "'," + rol + ")";
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
        public void CargarTabla(GridView grilla, Label lblestado)
        {

            conectar();

            String sql = ("select * from Tbl_Usuarios where Tipo='Alumno' ");
            SqlCommand comando = new SqlCommand(sql, con);
            SqlDataAdapter ad = new SqlDataAdapter(comando);
            DataTable dt = new DataTable();
            ad.Fill(dt);
            grilla.DataSource = dt;
            grilla.DataBind();

            int registro = comando.ExecuteNonQuery();
            if (registro == 0) { lblestado.Visible = true; lblestado.Text = "TABLA VACIA"; }
            else { lblestado.Visible = false; }

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
                String sql5 = "Select Matricula,Clave,Tipo from Tbl_Usuarios where Matricula=" + Usuario + " and Clave='" + Clave + "' and Tipo='Director'";
                SqlCommand comando5 = new SqlCommand(sql5, this.con);
                int cantidad = Convert.ToInt32(comando.ExecuteScalar());
                int cantidad2 = Convert.ToInt32(comando2.ExecuteScalar());
                int cantidad3 = Convert.ToInt32(comando3.ExecuteScalar());
                int cantidad5 = Convert.ToInt32(comando5.ExecuteScalar());
                if (cantidad != 0)
                {


                    Tipo = "Alumno";

                }
                else if (cantidad2 != 0)
                {

                    Tipo = "Profesor";

                }
                else if (cantidad3 != 0)
                {

                    Tipo = "Coordinador";
                }
                else if (cantidad5!=0)
                {
                    Tipo = "Director";
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
        public String myfirma()
        {
            cerrar();
            conectar();

            String sql = "Select Firma from Tbl_Usuarios where Matricula=1530353;";
            SqlCommand comando = new SqlCommand(sql, this.con);
            String signature = Convert.ToString(comando.ExecuteScalar());

            cerrar();
            return signature;
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

        public int VerificaMatricula(int matricula)
        {

            try
            {
                int verificas;
                cerrar();
                conectar();
                String sql = "Select Matricula  from Tbl_Usuarios where Matricula=" + matricula + ";";
                SqlCommand comando = new SqlCommand(sql, this.con);
                verificas = Convert.ToInt32(comando.ExecuteScalar());
                cerrar();
                return verificas;
            }
            catch (Exception)
            {

                throw;
            }



        }


        public int VerifiCoor(String tipo)
        {

          
                int verificas2;
                cerrar();
                conectar();
                String sql = "select Firma from Tbl_Usuarios where Tipo='"+ tipo +"'";
                SqlCommand comando = new SqlCommand(sql, this.con);
            String firm = comando.ExecuteScalar().ToString(); ;

            if (firm=="")
            {
                verificas2 = 0;
            }
            else
            {
                verificas2 = 1;
            }
          
                cerrar();
                return verificas2;

          
            



        }

        public void InsertFirCor(String firma, String tipo)
        {
          
            try
            {
                cerrar();
                conectar();
              
                String sql = "Update Tbl_Usuarios set Firma='"+firma+"' where Tipo='"+tipo+"'";
                SqlCommand comando = new SqlCommand(sql, this.con);
                comando.ExecuteNonQuery();
                cerrar();
               

            }
            catch (Exception E )
            {

                String mensaje= "Error:" + E.Message;
                
            }
           


        }
        public void insertarMaterias(int Matricul, String Nombremateria)
        {
            String grupo = "";
            String tipo = "Profesor";
            int rol = 2;

            conectar();
            String sql = "insert into Tbl_Materpro " +
                            "values " +
                            "(" + Matricul + ",'" + Nombremateria + "')" ;
            SqlCommand comando = new SqlCommand(sql, con);
          

            comando.ExecuteNonQuery();



            cerrar();


        }

        }
}

       
   