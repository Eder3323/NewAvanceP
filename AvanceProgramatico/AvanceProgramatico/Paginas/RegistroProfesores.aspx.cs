using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;
using System.Data;
using System.Data.SqlClient;

namespace AvanceProgramatico.Paginas
{
    public partial class RegistroProfesores : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        protected void Page_Load(object sender, EventArgs e)
        {

            if ((Session["logCoor"] == null) || ((bool)Session["logCoor"] == false))

            {
                Response.Redirect("Logueo.aspx");


            }

            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            if (!IsPostBack)
            {

                grid();

            }
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            //if (IsValid)
            //{

            //    this.sentencias.InsertarProfesor(Convert.ToInt32(txtMatricula.Text), txtClave.Text, txtNombre.Text, txtCorreo.Text);

                
            //}

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            try
            {

                int verifica = this.sentencias.VerificaMatricula(Convert.ToInt32(txtMatricula.Text));

                if (verifica != 0)
                {
                    txtMatricula.Text = "";
                    txtClave.Text = "";
                    txtconfirmar.Text = "";
                    txtNombre.Text = "";
                    txtCorreo.Text = "";
                    

                    Response.Write("<script>alert('La matricula ya se encuentra registrada');</script>");

                }
                else if (url == null)
                {
                    Response.Write("<script>alert('Porfavor capture su firma ');</script>");
                }
                else
                {
                    if (IsValid)
                    {

                        this.sentencias.InsertarProfesor(Convert.ToInt32(txtMatricula.Text), txtClave.Text, txtNombre.Text, txtCorreo.Text, url);

                       
                        Response.Write("<script>alert('Se ha registrado con éxito');</script>");
                        txtMatricula.Text = "";
                        txtClave.Text = "";
                        txtconfirmar.Text = "";
                        txtNombre.Text = "";
                        txtCorreo.Text = "";
                       
                        String tipo = "Profesor";
                        DataTable dt;
                        String SQL = "Select Matricula,Nombre,Correo from Tbl_Usuarios where Tipo='" + tipo + "'";


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
                                conn.Close();
                            }
                        }

                        GridView2.DataSource = dt;
                        GridView2.DataBind();


                    }
                    
                }
             

            }
            catch (Exception E)
            {

                Label1.Text = "Error:" + E.Message;
            }

        }

        protected void Save(object sender, EventArgs e)
        {
            string signature = hfSign.Value;
           

            url = signature;


        }
        public void Act()
        {

            this.sentencias.CargarTabla(GridView2, lblEstado);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
           
        }
        public void grid()
        {
            String tipo = "Profesor";
            if (!IsPostBack)
            {
                DataTable dt;
                String SQL = "Select Matricula,Nombre,Correo from Tbl_Usuarios where Tipo='" + tipo + "'";


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
                        conn.Close();
                    }
                }

                GridView2.DataSource = dt;
                GridView2.DataBind();
            }

        }
        public void LogOut()
        {

            Session.Remove("logCoor");
            Response.Redirect("Logueo.aspx");


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            LogOut();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LogOut();
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");
        }
    }
}