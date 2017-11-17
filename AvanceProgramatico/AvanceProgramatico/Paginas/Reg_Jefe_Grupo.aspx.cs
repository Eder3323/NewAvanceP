using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;

using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Configuration;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;

namespace AvanceProgramatico.Pagina
{


    public partial class Reg_Jefe_Grupo : System.Web.UI.Page
    {
        SqlConnection _conexion = new SqlConnection();
        SqlCommand com = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        DataTable dt = new DataTable();
        DropDownList cb = new DropDownList();
        Sentencias sentencias = new Sentencias();
        string cadena;
        private SqlConnection con;


        GridView g = new GridView();
        

        protected void Page_Load(object sender, EventArgs e)
        {
           

            Act();


           // this.sentencias.cargarcombo();
           

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
           
        }
        public void Act()
        {
            
            this.sentencias.CargarTabla(GridView2,lblEstado);

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        public void cargarcombo2()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Nombre from Tbl_Carreras", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            DropDownList1.DataValueField = "Nombre";
            DropDownList1.DataBind();

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}