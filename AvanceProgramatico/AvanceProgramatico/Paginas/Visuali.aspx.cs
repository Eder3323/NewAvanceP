using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico
{
    public partial class Visuali : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        public static string miprube;
        public static String Valor;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                 Valor = Request.QueryString["id_grupo"];

                grid();

               

            }
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
        }

        public void grid()
        {
            try
            {
                String tipo = Valor;
                
                if (!IsPostBack)
                {
                    DataTable dt;
                    String SQL = "Select Semana,Tema,Ht,Hp,Bibl,Actividad,Fecha from Tbl_PlanAcademico where id_grupo='" + tipo + "'";


                    string sConstr = System.Configuration.ConfigurationManager.ConnectionStrings["CadenaConexion"].ConnectionString;
                    using (SqlConnection conn = new SqlConnection(sConstr))
                    {
                        using (SqlCommand comm = new SqlCommand(SQL, conn))
                        {
                            conn.Open();
                            using (SqlDataAdapter da = new SqlDataAdapter(comm))
                            {
                                dt = new DataTable("tbl");
                                da.Fill(dt);
                            }
                            conn.Close();
                        }
                    }

                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            catch (Exception E)
            {

                Label1.Text = "eRROR:" + E.Message;
            }
          
           
        }
        public void SendMail()
        {
            try
            {
                //Configuración del Mensaje
                MailMessage mail = new MailMessage();
                SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
                //Especificamos el correo desde el que se enviará el Email y el nombre de la persona que lo envía
                mail.From = new MailAddress("1530353@upt.edu.mx", "Brandon", Encoding.UTF8);
                //Aquí ponemos el asunto del correo
                mail.Subject = "Le notificamos que ha firmado un formato avance prográmatico ";
                //Aquí ponemos el mensaje que incluirá el correo
                mail.Body = "Le envia este correo para autenticar que usted ha aprobado un formato de avance prográmatico";
                //Especificamos a quien enviaremos el Email, no es necesario que sea Gmail, puede ser cualquier otro proveedor
                mail.To.Add("bsan5293@gmail.com");
                //Si queremos enviar archivos adjuntos tenemos que especificar la ruta en donde se encuentran
                //mail.Attachments.Add(new Attachment(@"C:\Documentos\carta.docx"));

                //Configuracion del SMTP
                SmtpServer.Port = 587; //Puerto que utiliza Gmail para sus servicios
                //Especificamos las credenciales con las que enviaremos el mail
                SmtpServer.Credentials = new System.Net.NetworkCredential("1530353@upt.edu.mx", "'1530353'");
                SmtpServer.EnableSsl = true;
                SmtpServer.Send(mail);
                Label1.Text = "Mensaje Enviado";
            }
            catch (Exception ex)
            {
                Label1.Text = "Error:" + ex;
            }
        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
     



            }

            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendMail();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                
                    String matricula = "Director";
                    String signature = this.sentencias.myfirmadirector(matricula);
                    Signature.ImageUrl = signature;
               
            }
            catch (Exception E)
            {

                Label1.Text = "Error:" + E.Message;
            }
          

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Signature.ImageUrl = "";
        }
    }
}