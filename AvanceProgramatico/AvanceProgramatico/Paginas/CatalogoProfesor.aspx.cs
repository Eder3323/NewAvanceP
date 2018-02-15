using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

using System.Configuration;
using AvanceProgramatico.Clases;

namespace AvanceProgramatico.Paginas
{
    public partial class CatalogoProfesor : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        SqlConnection _conexion = new SqlConnection(ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString());

        string connectionString = ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
            //if ((Session["user"] == null))

            //{
            //    Response.Redirect("Logueo.aspx");


            //}

            if (!IsPostBack)
            {
                txtProfesor.Text = "986";
                cargarcomboGrado();
                cargarcomboCarreras();
                cargarcomboPeriodo();
                AgregarSemanas();
                
                // PopulateGridview();
            }
            


        }


        protected void btn_guardar_Click(object sender, EventArgs e)
        {
            // Check Validity
            TextBox txtSemana;
            TextBox txtTemas;
            TextBox txtHt;
            TextBox txtHp;
            TextBox txtBibl;
            TextBox txtActividad;
            TextBox txtFecha;

         //programa educativo
             int indexProEdu = 0;
             indexProEdu = Convert.ToInt32(DropDLProgramaEdu.SelectedIndex.ToString());
            string ProgramaEdu = (indexProEdu=indexProEdu+1).ToString();

            //grado
            int indexGrado = 0;
            indexGrado = Convert.ToInt32(DropDLGrado.SelectedIndex.ToString());
            string Grado = (indexGrado = indexGrado + 1).ToString();

            //asignatura
            string Asignatura = "";
            Asignatura = (DropDLAsignatura.SelectedItem.ToString());


            // Cadena de todo lo de arriba{
            string idTabla = ProgramaEdu + "_" + Grado + "_" + Asignatura;
            //LblEdu.Text = idTabla.ToString();

            //grupo
            string Grupo = "";
             Grupo = (DropDLGrupo.SelectedItem.ToString());

            //matricula Profesor
            string MatriculaP = "";
             MatriculaP = (txtProfesor.Text.ToString());


            foreach (GridViewRow row in dtgPlanAcademico.Rows)
            {
                txtSemana = (TextBox)row.FindControl("txtSemana");
                txtTemas = (TextBox)row.FindControl("txtTemas");
                txtHt = (TextBox)row.FindControl("txtHt");
                txtHp = (TextBox)row.FindControl("txtHp");
                txtBibl = (TextBox)row.FindControl("txtBibl");
                txtActividad = (TextBox)row.FindControl("txtActividad");
                txtFecha = (TextBox)row.FindControl("txtFecha");


                if (txtSemana == null || txtTemas == null || txtHt == null || txtHp == null ||
                    txtBibl == null || txtActividad == null || txtFecha == null)
                {
                    return;
                }

                if (string.IsNullOrEmpty(txtSemana.Text.Trim())
                    || string.IsNullOrEmpty(txtTemas.Text.Trim())
                    || string.IsNullOrEmpty(txtHt.Text.Trim())
                    || string.IsNullOrEmpty(txtHp.Text.Trim())
                    || string.IsNullOrEmpty(txtBibl.Text.Trim())
                    || string.IsNullOrEmpty(txtActividad.Text.Trim())
                    || string.IsNullOrEmpty(txtFecha.Text.Trim()))
                {
                    lblErrorMessage.Text = "Todos Los Campos Deben Ser Rellenados! ";
                    //lblGrupo.Text = " ***Revise nuevamente si este fue el Grupo de su elección!";
                    //lblAsig.Text = " ***Revise nuevamente si esta fue la Asignatura de su elección!";
                    return;
                }
                else
                {
                    #region "MI PROCESO ALMACENADO"
                    try
                    {

                        SqlConnection con = new SqlConnection(connectionString);
                        SqlCommand cmd = new SqlCommand();
                        con.Open();
                        cmd.Connection = con;
                        cmd.CommandText = "GuardarCatalogo";
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Semana", SqlDbType.VarChar).Value = txtSemana.Text.Trim();
                        cmd.Parameters.AddWithValue("@Tema", SqlDbType.VarChar).Value = txtTemas.Text.Trim();
                        cmd.Parameters.AddWithValue("@Ht", SqlDbType.VarChar).Value = txtHt.Text.Trim();
                        cmd.Parameters.AddWithValue("@Hp", SqlDbType.VarChar).Value = txtHp.Text.Trim();
                        cmd.Parameters.AddWithValue("@Bibl", SqlDbType.VarChar).Value = txtBibl.Text.Trim();
                        cmd.Parameters.AddWithValue("@Actividad", SqlDbType.VarChar).Value = txtActividad.Text.Trim();
                        cmd.Parameters.AddWithValue("@Fecha", SqlDbType.VarChar).Value = txtFecha.Text.Trim();
                        cmd.Parameters.AddWithValue("@id_tabla", SqlDbType.VarChar).Value = idTabla.ToString().Trim();
                        cmd.Parameters.AddWithValue("@id_grupo", SqlDbType.VarChar).Value = Grupo.ToString().Trim();
                        cmd.Parameters.AddWithValue("@id_matriculaProfe", SqlDbType.VarChar).Value = MatriculaP.ToString().Trim();

                      
                        int i = cmd.ExecuteNonQuery();
                        if (i > 0)
                        { lblSuccessMessage.Text = ("Registros Extosos"); }
                        else { lblErrorMessage.Text = ("Problema con los registros"); }

                        con.Close();

                        idTabla = "";
                        Grupo = "";
                        MatriculaP = "";
                    }
                    catch (Exception er)
                    {
                        lblErrorMessage.Text = ("ERROR DE LA APP" + er.ToString());
                    }
                    #endregion

                }

            }



        }
        private void cargarcomboGrado()
        {
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Grado,pk_Grado from Tbl_Grado", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLGrado.DataSource = ds;
            DropDLGrado.DataTextField = "Grado";                            // FieldName of Table in DataBase
            DropDLGrado.DataValueField = "pk_Grado";
            DropDLGrado.DataBind();

            _conexion.Close();
            int valor = DropDLGrado.Items.Count;
           
            if (DropDLGrado.Items.Count != 0)
            {
                int numeroGrado = Convert.ToInt32(DropDLGrado.SelectedValue);
                cargarcomboGrupo(numeroGrado);
            }
            else
            {
                DropDLGrupo.ClearSelection();
                //cbciudad.DataSource = null;
            }
        }

        

        private void AgregarSemanas()
        {
            List<int> NumeroColumnas = new List<int>();
            for (int i = 0; i <= 1; i++)
            {
                NumeroColumnas.Add(i);
            }

            dtgPlanAcademico.DataSource = NumeroColumnas;
            dtgPlanAcademico.DataBind();
            if (dtgPlanAcademico.Rows.Count > 0)
            {
                // Panel1.Visible = true;
            }
            else
            {
                //Panel1.Visible = false;
            }
        }

        void PopulateGridview()
        {
            DataTable dtbl = new DataTable();
            using (SqlConnection sqlCon = new SqlConnection(connectionString))
            {
                sqlCon.Open();
                SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Tbl_PlanAcademico", sqlCon);
                sqlDa.Fill(dtbl);
            }
            int ED = dtbl.Rows.Count;


            if (dtbl.Rows.Count > 0)
            {
                dtgPlanAcademico.DataSource = dtbl;
                dtgPlanAcademico.DataBind();
            }
            else
            {
                dtbl.Rows.Add(dtbl.NewRow());
                dtgPlanAcademico.DataSource = dtbl;
                dtgPlanAcademico.DataBind();
                dtgPlanAcademico.Rows[0].Cells.Clear();
                dtgPlanAcademico.Rows[0].Cells.Add(new TableCell());
                dtgPlanAcademico.Rows[0].Cells[0].ColumnSpan = dtbl.Columns.Count;
                dtgPlanAcademico.Rows[0].Cells[0].Text = "No Data Found ..!";
                dtgPlanAcademico.Rows[0].Cells[0].HorizontalAlign = HorizontalAlign.Center;
            }

        }

        private void cargarcomboGrupo(int numeroGrado)
        {
            _conexion.Open();

            SqlCommand cmd = new SqlCommand("select * from Tbl_Grupo where pk_Grupo='" + numeroGrado + "'", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLGrupo.DataSource = ds;
            DropDLGrupo.DataTextField = "Grupo";                            // FieldName of Table in DataBase
            DropDLGrupo.DataValueField = "pk_Grupo";
            DropDLGrupo.DataBind();
            _conexion.Close();
           
        }
        public void cargarcomboCarreras()
        {
            
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Nombre,pk_Carrera from Tbl_Carreras", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLProgramaEdu.DataSource = ds;
            DropDLProgramaEdu.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            DropDLProgramaEdu.DataValueField = "pk_Carrera";
            DropDLProgramaEdu.DataBind();

            _conexion.Close();
            int valor = DropDLProgramaEdu.Items.Count;
            //lblEstado.Text = valor.ToString();

            if (DropDLProgramaEdu.Items.Count != 0)
            {
                int numeroProgramaEdu = Convert.ToInt32(DropDLProgramaEdu.SelectedValue);
                int numeroGrado = Convert.ToInt32(DropDLGrado.SelectedValue);
                cargarcomboMaterias(numeroProgramaEdu, numeroGrado);
            }
            else
            {
                DropDLAsignatura.ClearSelection();
            }
        }

        public void cargarcomboMaterias(int numeroProgramaEdu, int numeroGrado)
        {

            _conexion.Open();

            SqlCommand cmd = new SqlCommand("select  * from Tbl_Materias where fk_Carrera='" + numeroProgramaEdu + "' and numGrado='" + numeroGrado + "'", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLAsignatura.DataSource = ds;
            DropDLAsignatura.DataTextField = "Nombre";                            // FieldName of Table in DataBase
            DropDLAsignatura.DataValueField = "fk_Carrera";
            DropDLAsignatura.DataBind();
            _conexion.Close();

        }
   
        private void cargarcomboPeriodo()
        {
      
            _conexion.Open();
            SqlCommand cmd = new SqlCommand("select Periodo,pk_Periodo from Tbl_Periodo", _conexion);
            SqlDataAdapter sda = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            DropDLPeriodo.DataSource = ds;
            DropDLPeriodo.DataTextField = "Periodo";                            // FieldName of Table in DataBase
            DropDLPeriodo.DataValueField = "pk_Periodo";
            DropDLPeriodo.DataBind();

            _conexion.Close();
            
        }
        protected void DropDLAsignatura_SelectedIndexChanged1(object sender, EventArgs e)
        {
          
        }
        
        protected void DropDLProgramaEdu_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int numeroProgramaEdu = Convert.ToInt32(DropDLProgramaEdu.SelectedValue);
            int numeroGrado = Convert.ToInt32(DropDLGrado.SelectedValue);
            cargarcomboMaterias(numeroProgramaEdu, numeroGrado);
        }
        protected void DropDLPeriodo_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
        protected void DropDLGrado_SelectedIndexChanged1(object sender, EventArgs e)
        {
            int numeroProgramaEdu = Convert.ToInt32(DropDLProgramaEdu.SelectedValue);
            int numeroGrado = Convert.ToInt32(DropDLGrado.SelectedValue);
            cargarcomboMaterias(numeroProgramaEdu, numeroGrado);
            cargarcomboGrupo(numeroGrado);
        }
        protected void DropDLGrupo_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void Regresar_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuProfesores.aspx");
        }
    }
}
