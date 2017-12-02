using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace AvanceProgramatico.Paginas
{
    public partial class Ajuste_Calendario : System.Web.UI.Page
    {
        SqlConnection _conexion = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
       

        string cadena;
        protected void Page_Load(object sender, EventArgs e)
        {
            cadena = ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            //Act();

            cargarcombo();
            cargarcombo1();


            //if (!IsPostBack)
            //{

            //    grid2();

            //}

            cargarcalendario();
          
        }


        public void cargarcombo()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select pk_Años from Tbl_Años", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "pk_Años";                            // FieldName of Table in DataBase
            DropDownList1.DataValueField = "pk_Años";
            DropDownList1.DataBind();

        }
        public void cargarcombo1()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select pk_Periodo from Tbl_Periodo", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "pk_Periodo";                            // FieldName of Table in DataBase
            DropDownList2.DataValueField = "pk_Periodo";
            DropDownList2.DataBind();

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {



            

            //TextBox1.Text = Calendar1.SelectedDate.ToString();
           
                //SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
                //_conexion.Open();
                //string sql = "insert into Tbl_fechas values " + "('" + fechauno.Value.ToString() + "')";
                //SqlCommand comando = new SqlCommand(sql, _conexion);
                //comando.ExecuteNonQuery();
              
          
                
                
            

            ///////////777
           // Response.Redirect("Ajuste_Calendario.aspx");


            cargarcalendario();


        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
           

        }


        protected void cargarcalendario()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            //  SqlCommand consulta = new SqlCommand(string.Format("SELECT Id_Semana,Semana FROM Tbl_Fechas"), _conexion);
            string sql = "SELECT Id_Semana,Semana FROM Tbl_Fechas";
            SqlCommand comando = new SqlCommand(sql, _conexion);
            SqlDataAdapter da = new SqlDataAdapter (comando);
            DataTable dt = new DataTable();
            da.Fill(dt);
            GridView1.DataSource =dt;
            GridView1.DataBind ();
            _conexion.Close ();
        }

       

        protected void Button1_Click(object sender, EventArgs e)
        {
            cargarcalendario();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridViewRow grd = GridView1.SelectedRow;
            Txt.Text = grd.Cells[1].Text;
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            string sql = "TRUNCATE TABLE Tbl_Fechas ";
            SqlCommand comando = new SqlCommand(sql, _conexion);
            comando.ExecuteNonQuery();
            cargarcalendario();
        }
    }






    //////////



    }