using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Diagnostics;
using System.IO;
using System.Net;
using System.Text;
using System.Web;


using System.IO;

namespace AvanceProgramatico.Paginas
{
    public partial class Direc : System.Web.UI.Page
    {
        private Sentencias sentencias;
        private SqlDataReader registro;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.sentencias = new Sentencias();
            string variable = "";
            this.registro = this.sentencias.getUsuarios2(variable);
        }
        public SqlDataReader getRegistro2()
        {
            return this.registro;
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                //Response.Clear();
                //Response.ContentType = "application / pdf";
                //Response.Cache.SetCacheability(HttpCacheability.NoCache);
                ////Para crear una instancia de documento de iTextSharp con el tamaño de página y tamaño de margenes correspondientes
                //Document doc = new Document(PageSize.LETTER.Rotate(), 10, 10, 10, 10);
                ////La ruta en donde será guardado el pdf dentro del servidor
                //String path = this.Server.MapPath(".") + "\\Archivos\\MiArchivo.pdf";

                ////Utilizamos System.IO para crear o sobreescribir el archivo si existe
                //FileStream file = new FileStream(path, FileMode.OpenOrCreate, FileAccess.ReadWrite, FileShare.ReadWrite);

                ////iTextSharp para escribir en el documento PDF
                //PdfWriter.GetInstance(doc, file);
                //doc.Open();
                ////Agregamos  el texto que esta dentro de la etiqueta

                ////Se pueden agregar varios solamente añadiendo varias sentencias doc.Add(…)    
                //doc.Add(new Paragraph(lblContenido.Text));
                //doc.Add(new Paragraph("Mytabla"));
                //doc.Close();

                //Process.Start(path);
                //Response.Redirect("Director.aspx");

            }
            catch (Exception W)
            {

                //lblContenido.Text = W.ToString();
            }

        }
        protected void PruebaAprobar(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {







        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            this.sentencias = new Sentencias();
            String variable = TextBox1.Text;
            if (variable.ToString() == "")
                variable = "";

            this.registro = this.sentencias.getUsuarios2(variable);
        }
    }
}