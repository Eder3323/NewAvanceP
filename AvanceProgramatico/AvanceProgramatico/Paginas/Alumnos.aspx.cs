using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico.Paginas
{
    
    public partial class Alumnos : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentenc;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentenc = new Sentencias();
            ActuTabla();
           
        }
        public void ActuTabla()
        {
            string NombreAlumno = "Alumnos";
            DataSet ds = new DataSet();
            ds = this.sentenc.LLenaComboGrid(NombreAlumno);
            GridView1.DataSource = ds;
           
        }
    }
}