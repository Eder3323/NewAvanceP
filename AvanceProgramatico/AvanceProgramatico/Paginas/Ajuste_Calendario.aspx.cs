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
            //Act();

            cargarcombo();
            cargarcombo1();
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

        }
    }
}