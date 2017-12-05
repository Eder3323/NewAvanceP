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
            if ((Session["logCoor"] == null) || ((bool)Session["logCoor"] == false))

            {
                Response.Redirect("Logueo.aspx");


            }

            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            Actualizacion();

        }

        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            if (url=="")
            {
                Response.Write("<script>alert('Por favor capture su firma  ');</script>");
            }
            else
            {
                lblEsta.Text = url;
                this.sentencias.InsertFirCor(url);
                Response.Write("<script>alert('Se ha registrado con éxito su fírma ');</script>");
            }
            




        }
        protected void Save(object sender, EventArgs e)
        {
            string signature = hfSign.Value;

            
            url = signature;


        }


        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
           
        }
        public void Actualizacion()
        {
            String tipo = "Coordinador";
            int verificacionfirma = this.sentencias.VerifiCoor(tipo);


            if (verificacionfirma==1)
            {
                lblEsta.Text = "!La firma ya se encuentra en el sistema si desea actualizarla, guarde una vez más!";
                    
            }

            else
            {
                lblEsta.Text = "!Usted no ha guardado su firma por favor guarde.!";
            }       

        }
        public void LogOut()
        {

            Session.Remove("logCoor");
            Response.Redirect("Logueo.aspx");


        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            LogOut();
        }

        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");

        }
    }
}