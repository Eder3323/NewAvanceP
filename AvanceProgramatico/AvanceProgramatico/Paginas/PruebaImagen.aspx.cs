using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico.Paginas
{
    public partial class PruebaImagen : System.Web.UI.Page
    {
        Sentencias sentencias = new Sentencias();
        protected void Page_Load(object sender, EventArgs e)
        {
            Image1.ImageUrl = "../Clases/ProcesarFirma.ashx";
            Label1.Text = Image1.ImageUrl;


        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String signature = this.sentencias.myfirma();
            Image1.ImageUrl = signature;
            Label1.Text = signature;
        }
    }
}