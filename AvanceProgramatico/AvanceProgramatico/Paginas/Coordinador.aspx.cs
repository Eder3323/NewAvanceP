using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico1.Paginas
{
    public partial class Coordinador : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((Session["logCoor"] == null) || ((bool)Session["logCoor"] == false))

            {
                Response.Redirect("Logueo.aspx");

                String Matricula = Request.QueryString["valor"];
            }


        }

        public void LogOut(object sender, EventArgs e)
        {

            Session.Remove("logCoor");
            Response.Redirect("Logueo.aspx");


        }
    }
}