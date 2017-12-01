using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
using AvanceProgramatico.Clases;

namespace AvanceProgramatico.Paginas
{
    public partial class Catalogo : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());



        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarcomboCarreras();
            }
            
          

        }

        protected void DropDLProgramaEdu_SelectedIndexChanged1(object sender, EventArgs e)
        {
            //DropDownList cmb = (DropDownList)sender;//objeto que dispara el evento
            //int valor = cmb.SelectedIndex;
           


        }
        public void cargarcomboCarreras()
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Nombre,pk_Carrera from Tbl_Carreras", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLProgramaEdu.DataSource = ds;
            DropDLProgramaEdu.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            DropDLProgramaEdu.DataValueField = "pk_Carrera";
            DropDLProgramaEdu.DataBind();

            _conexion.Close();
            int valor = DropDLProgramaEdu.Items.Count;
            lblEstado.Text = valor.ToString();

            if (DropDLProgramaEdu.Items.Count != 0)
            {
                int numero = Convert.ToInt32(DropDLProgramaEdu.SelectedValue);
                cargarcomboMaterias(numero);
            }
            else
            {
                DropDLAsignatura.ClearSelection();
                //cbciudad.DataSource = null;
            }


        }

       
        
             public void cargarcomboMaterias(int numero)
        {
            
            _conexion.Open();

            SqlCommand cmd = new SqlCommand("select  * from Tbl_Materias where fk_Carrera='" + numero+"'", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLAsignatura.DataSource = ds;
            DropDLAsignatura.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            DropDLAsignatura.DataValueField = "fk_Carrera";
            DropDLAsignatura.DataBind();
            _conexion.Close();

        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int numero = Convert.ToInt32(DropDLProgramaEdu.SelectedValue);
            cargarcomboMaterias(numero);
        }
    }
}