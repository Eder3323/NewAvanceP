using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace AvanceProgramatico.Paginas
{
    public partial class Reg_Jefe_Grupo : System.Web.UI.Page
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
                cargarcombo1();
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");
        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
          

        }
        protected void Save(object sender, EventArgs e)
        {
            string signature = hfSign.Value;
            

            url = signature;
            try
            {

                int verifica = this.sentencias.VerificaMatricula(Convert.ToInt32(txtMatricula.Text));

                if (verifica != 0)
                {
                    txtMatricula.Text = "";
                    txtClave.Text = "";
                    txtConfirmar.Text = "";
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

                        this.sentencias.InsertarAlumno(Convert.ToInt32(txtMatricula.Text), txtClave.Text, txtNombre.Text, txtCorreo.Text, url, cmbGrupo.Text);
                        Response.Write("<script>alert('Se ha registrado con éxito');</script>");
                        txtMatricula.Text = "";
                        txtClave.Text = "";
                        txtConfirmar.Text = "";
                        txtNombre.Text = "";
                        txtCorreo.Text = "";


                        String tipo = "Alumno";

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
                            }
                        }

                        GridView2.DataSource = dt;
                        GridView2.DataBind();
                        txtMatricula.Focus();
                    }
                }


            }
            catch (Exception E)
            {

                Label1.Text = "Error:" + E.Message;
            }

        }
        public void Act()
        {

            this.sentencias.CargarTabla(GridView2, lblEstado);

        }
        public void grid()
        {
            String tipo = "Alumno";
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
                    }
                }

                GridView2.DataSource = dt;
                GridView2.DataBind();
            }

        }
        public void cargarcombo1()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Grupo from Tbl_Grupo", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);
            cmbGrupo.DataSource = ds;
            cmbGrupo.DataTextField = "Grupo";                            // FieldName of Table in DataBase
            cmbGrupo.DataValueField = "Grupo";
            cmbGrupo.DataBind();

        }
        public void LogOut()
        {

            Session.Remove("logCoor");
            Response.Redirect("Logueo.aspx");


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LogOut();
        }
    }
}