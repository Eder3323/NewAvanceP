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
                System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
                msg.To.Add("guadalupeixayana@gmail.com");
                msg.From = new MailAddress("bsan5293@gmail.com", "Brandon", System.Text.Encoding.UTF8);
                msg.Subject = "Prueba de correo a GMail";
                msg.SubjectEncoding = System.Text.Encoding.UTF8;
                msg.Body = "Cuerpo del mensaje";
                msg.BodyEncoding = System.Text.Encoding.UTF8;
                msg.IsBodyHtml = false;

                //Aquí es donde se hace lo especial
                SmtpClient client = new SmtpClient();
                client.Credentials = new System.Net.NetworkCredential("bsan5293@gmail.com", "theuniverseisbigbigbigbig");
                client.Port = 587;
                client.Host = "smtp.gmail.com";
                client.EnableSsl = true; //Esto es para que vaya a través de SSL que es obligatorio con GMail
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