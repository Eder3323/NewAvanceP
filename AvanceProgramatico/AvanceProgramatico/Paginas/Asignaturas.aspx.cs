using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AvanceProgramatico.Clases;
using System.Web.Services;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Script.Serialization;
using System.Web.Script.Services;
using System.Data;


namespace AvanceProgramatico.Paginas
{
    public partial class Asignaturas : System.Web.UI.Page
    {
        struct Result
        {
            public string id;
            public string año;
            public string Edicion;
            public string Editorial;
            public string ISBN;
            public string value;
            int count;

        }
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());


        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentencias = new Sentencias();
            this.sentencias.jquery();
            grid();
           
        }


        [WebMethod]
        [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
        public static String BuscarLugar(String textoBuscar)
        {
            SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());
            try
            {
                _conexion.Open();
                SqlCommand cmd = new SqlCommand();
                cmd.Connection = _conexion;
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = @"select Titulo,Autor,Año,Edicion,Editorial,ISBN
            from  Tbl_bibliografias
            where Titulo like '%' + @Titulo + '%'";
                cmd.Parameters.Add("@Titulo", SqlDbType.NVarChar, 50).Value = textoBuscar;
                SqlDataReader dr = cmd.ExecuteReader();
                List<Result> result = new List<Result>();
                while (dr.Read())
                {
                    result.Add(new Result()
                    {
                        id = dr["Autor"].ToString(),
                        value = dr["Titulo"].ToString(),
                        año = dr["Año"].ToString(),
                        Edicion = dr["Edicion"].ToString(),
                        Editorial = dr["Editorial"].ToString(),
                        ISBN = dr["ISBN"].ToString(),


                    });
                }

                dr.Close();
                return new JavaScriptSerializer().Serialize(result);
            }
            catch (Exception ex) { throw (ex); }
            finally { _conexion.Close(); _conexion.Dispose(); }
        }
       

        protected void Button1_Click(object sender, EventArgs e)
        {
          

        }
        public void grid() {
            DataTable dt;
            String SQL = "Select  Titulo,Autor,Año,Editorial,Edicion,ISBN  from Tbl_bibliografiasR ";


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
                }
            }

            GridView1.DataSource = dt;
            GridView1.DataBind();
        }

        protected void btnModal_Click(object sender, EventArgs e)
        {
            grid();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            int count = int.Parse(Label1.Text);
           
            if (count < 3)
            {
                try
                {





                    this.sentencias.InsertarBibliografia1(Convert.ToInt32(TextBox1.Text), txtBuscar.Text, txtValor.Text, txtvalor1.Text, txtvalor2.Text, txtvalor4.Text, txtvalor3.Text);
                    Response.Write("<script>alert('Se ha registrado con éxito');</script>");
                    TextBox1.Text = "";
                    txtBuscar.Text = "";
                    txtValor.Text = "";
                    txtvalor1.Text = "";
                    txtvalor2.Text = "";
                    txtvalor4.Text = "";
                    txtvalor3.Text = "";


                    grid();




                }
                catch (Exception E)
                {

                    Label1.Text = "Error:" + E.Message;
                }


                count++;
                Label1.Text = count.ToString();
            }
            else
            {
                Label2.Text = "";
                Label2.Text = "YA HAS REGISTRADO 3 BIBLIOGRAFIAS";
                TextBox1.Text = "";
                txtBuscar.Text = "";
                txtValor.Text = "";
                txtvalor1.Text = "";
                txtvalor2.Text = "";
                txtvalor4.Text = "";
                txtvalor3.Text = "";
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {

        }
    } } 