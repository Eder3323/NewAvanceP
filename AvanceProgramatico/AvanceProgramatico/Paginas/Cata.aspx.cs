using AvanceProgramatico.Clases;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AvanceProgramatico.Paginas
{
    public partial class Cata : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentencias;
        public static String url;
        public int eder;
       


        string connectionString = ConfigurationManager.ConnectionStrings["CadenaConexion"].ToString();
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                PopulateGridview();
                
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
           
           
            if (dtbl.Rows.Count > 0 )
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void dtgPlanAcademico_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName.Equals("AddNew"))
                {
                    //new code
                    DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    SqlDataAdapter sqlDa = new SqlDataAdapter("SELECT * FROM Tbl_PlanAcademico", sqlCon);
                    sqlDa.Fill(dtbl);
                }
                   
                    if (dtbl.Rows.Count <15)
                    {
                        int ED = dtbl.Rows.Count;
                        int ederr = ED + 1;

                        using (SqlConnection sqlCon = new SqlConnection(connectionString))
                        {

                            sqlCon.Open();
                        string query = "INSERT INTO Tbl_PlanAcademico (Semana,Tema,Ht,Hp,Bibl,Actividad,Fecha) VALUES (@Semana,@Tema,@Ht,@Hp,@Bibl,@Actividad,@Fecha)";
                        SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                        sqlCmd.Parameters.AddWithValue("@Semana", Convert.ToInt32(ederr.ToString()));
                            sqlCmd.Parameters.AddWithValue("@Tema", (dtgPlanAcademico.FooterRow.FindControl("txtTemaFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Ht", (dtgPlanAcademico.FooterRow.FindControl("txtHtFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Hp", (dtgPlanAcademico.FooterRow.FindControl("txtHpFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Bibl", (dtgPlanAcademico.FooterRow.FindControl("txtBiblFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Actividad", (dtgPlanAcademico.FooterRow.FindControl("txtActividadFooter") as TextBox).Text.Trim());
                        sqlCmd.Parameters.AddWithValue("@Fecha", (dtgPlanAcademico.FooterRow.FindControl("txtFechaFooter") as TextBox).Text.Trim());
                           
                            sqlCmd.ExecuteNonQuery();
                        PopulateGridview();
                        lblSuccessMessage.Text = "New Record Added";
                        lblErrorMessage.Text = "";
                        }
                    }
                else
                {
                        lblSuccessMessage.Text = "";
                        lblErrorMessage.Text = "YA HAS REGISTRADO 15 SEMANAS";   
                    }
                }
                }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void dtgPlanAcademico_RowEditing(object sender, GridViewEditEventArgs e)
        {
            dtgPlanAcademico.EditIndex = e.NewEditIndex;
            PopulateGridview();
        }

        protected void dtgPlanAcademico_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            dtgPlanAcademico.EditIndex = -1;
            PopulateGridview();
        }

        protected void dtgPlanAcademico_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            try
            {
                //,my code
                DataTable dtbl = new DataTable();
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    
                    string query = "UPDATE Tbl_PlanAcademico SET Semana=@Semana,Tema=@Tema,Ht=@Ht,Hp=@Hp,Bibl=@Bibl,Actividad=@Actividad,Fecha=@Fecha WHERE pk_PlanAcademico = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@Semana", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtSemana") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Tema", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtTema") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Ht", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtHt") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Hp", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtHp") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Bibl", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtBibl") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Actividad", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtActividad") as TextBox).Text.Trim());
                    sqlCmd.Parameters.AddWithValue("@Fecha", (dtgPlanAcademico.Rows[e.RowIndex].FindControl("txtFecha") as TextBox).Text.Trim());
                   
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(dtgPlanAcademico.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    dtgPlanAcademico.EditIndex = -1;
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Updated";
                    lblErrorMessage.Text = "";

                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }

        protected void dtgPlanAcademico_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                using (SqlConnection sqlCon = new SqlConnection(connectionString))
                {
                    sqlCon.Open();
                    string query = "DELETE FROM Tbl_PlanAcademico WHERE pk_PlanAcademico = @id";
                    SqlCommand sqlCmd = new SqlCommand(query, sqlCon);
                    sqlCmd.Parameters.AddWithValue("@id", Convert.ToInt32(dtgPlanAcademico.DataKeys[e.RowIndex].Value.ToString()));
                    sqlCmd.ExecuteNonQuery();
                    PopulateGridview();
                    lblSuccessMessage.Text = "Selected Record Deleted";
                    lblErrorMessage.Text = "";
                }
            }
            catch (Exception ex)
            {
                lblSuccessMessage.Text = "";
                lblErrorMessage.Text = ex.Message;
            }
        }
        protected void Cal1_SelectionChanged(object sender, EventArgs e)
        {
            Calendar cal = (Calendar)sender;
            TextBox text1 = (TextBox)((GridViewRow)cal.Parent.Parent).FindControl("txtFecha");

            text1.Text = cal.SelectedDate.ToShortDateString();
        }
        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            Calendar cal = (Calendar)((GridViewRow)img.Parent.Parent).FindControl("calendar");
            if (cal.Visible == false)
            {
                cal.Visible = true;
            }
            else
            {
                cal.Visible = false;
            }
        }
        protected void Cal2_SelectionChanged(object sender, EventArgs e)
        {
            Calendar cal = (Calendar)sender;
            
            TextBox text1 = (TextBox)((GridViewRow)cal.Parent.Parent).FindControl("txtFechaFooter");

            text1.Text = cal.SelectedDate.ToShortDateString();
        }
        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton img = (ImageButton)sender;
            Calendar cal = (Calendar)((GridViewRow)img.Parent.Parent).FindControl("calendar2");
            if (cal.Visible == false)
            {
                cal.Visible = true;
            }
            else
            {
                cal.Visible = false;
            }
        }

    }
}