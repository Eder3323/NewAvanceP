using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico.Paginas
{
    public partial class Configuracion : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            
        }
        
        protected void btn_guardar_Click(object sender, EventArgs e)
        {

        }
        protected void Save(object sender, EventArgs e)
        {
            string signature = hfSign.Value;
            saveimg.ImageUrl = signature;
            saveimg.BorderStyle = BorderStyle.Solid;

            url = signature;


        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");
        }
    }
}