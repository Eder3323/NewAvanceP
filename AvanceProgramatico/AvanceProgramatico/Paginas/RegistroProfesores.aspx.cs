using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AvanceProgramatico.Paginas
{
    public partial class RegistroProfesores : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        public static string miprube;
        protected void Page_Load(object sender, EventArgs e)
        {

            //if ((Session["logCoor"] == null) || ((bool)Session["logCoor"] == false))

            //{
            //    Response.Redirect("Logueo.aspx");


            //}
            
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            if (!IsPostBack)
            {

                grid();
                cargarmateria();

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


                        for(int i = 0; i < ListBox1.Items.Count ; i++)
{
                            string info = ListBox1.Items[i].ToString();

                            this.sentencias.insertarMaterias(Convert.ToInt32(txtMatricula.Text), info);
                          
                        }

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
        public void cargarmateria()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Nombre from Tbl_Materias", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();

            sda.Fill(ds);
            cmbmaterias.DataSource = ds;
            cmbmaterias.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            cmbmaterias.DataValueField = "Nombre";
            cmbmaterias.DataBind();

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            LogOut();
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
            
           
        }

        

        protected void Button2_Click2(object sender, EventArgs e)
        {
           
        }
       

        protected void Button2_Click3(object sender, EventArgs e)
        {
           
            miprube = this.cmbmaterias.SelectedItem.Text;

          


                if (ListBox1.Items.Contains(cmbmaterias.SelectedItem))
                {
                Response.Write("<script>alert('Porfavor capture su firma ');</script>");
                
                }
             
                else
                {
                ListBox1.Items.Add(miprube);
            }

            

            
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {
            try
            {
                if (ListBox1.SelectedItem.Text != "")
                {
                    ListBox1.Items.Remove(ListBox1.SelectedItem);
                }

                else
                {
                    txtMensaje.Text = "Seleccione la materia a remover";
                }
                
            }
            catch (Exception)
            {

                      }
           
        }
    }
}