using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico.Paginas
{
    public partial class signatureDirec : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
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
            Actualizacion();
        }

        protected void Save(object sender, EventArgs e)
        {
            string signature = hfSign.Value;
            url = signature;


            if (url == "")
            {
                Response.Write("<script>alert('Por favor capture su firma  ');</script>");
            }
            else
            {
                lblEsta.Text = "Se ha almacenado  su fírma ";
                String Tipo = "Director";
                this.sentencias.InsertFirCor(url,Tipo);
                Response.Write("<script>alert('Se ha registrado con éxito su fírma ');</script>");
            }
        }

        
        protected void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Coordinador.aspx");

        }
        public void Actualizacion()
        {
            String tipo = "Director";
            int verificacionfirma = this.sentencias.VerifiCoor(tipo);


            if (verificacionfirma == 1)
            {
                lblEsta.Text = "!La firma ya se encuentra en el sistema si desea actualizarla, guarde una vez más!";

            }

            else
            {
                lblEsta.Text = "!Usted no ha guardado su firma por favor guarde.!";
            }

        }
    }
}