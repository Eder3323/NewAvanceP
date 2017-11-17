using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;

namespace AvanceProgramatico.Paginas
{
    public partial class Registro_p : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                this.sentencias.InsertarProfesor(Convert.ToInt32());
                this.sentencias.InsertarProfesor(Convert.ToInt32( txtMatricula.Text), txtClave.Text,txtNombre.Text, txtCorreo.Text);

                // Response.Redirect("Default.aspx");
            }
        }

       
    }
}