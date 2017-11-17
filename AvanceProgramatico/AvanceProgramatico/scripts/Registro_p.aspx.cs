using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;
using System.Data;
using System.Data.SqlClient;

namespace AvanceProgramatico.Pagina
{
    public partial class Registro_p : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            // SqlConnection con = new SqlConnection(cs);
            grid();
        }

        public void grid() {
            String tipo = "Profesor";
            if (!IsPostBack)
            {
                DataTable dt;
                String SQL = "Select Matricula,Nombre,Correo,Firma from Tbl_Usuarios where Tipo='" + tipo + "'";


                string sConstr = System.Configuration.ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
                using (SqlConnection conn = new SqlConnection(sConstr))
                {
                    using (SqlCommand comm = new SqlCommand(SQL, conn))
                    {
                        conn.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(comm))
                        {
                            dt = new DataTable("tbl");
                            da.Fill(dt);
                        }
                    }
                }

                GridView1.DataSource = dt;
                GridView1.DataBind();
            }

        }





        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IsValid)
           
                this.sentencias.InsertarProfesor(Convert.ToInt32( txtMatricula.Text), txtClave.Text,txtNombre.Text, txtCorreo.Text);
           grid();
            // Response.Redirect("Default.aspx");
        }
       
    }
    }
