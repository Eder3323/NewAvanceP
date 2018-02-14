﻿
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using AvanceProgramatico.Clases;

namespace AvanceProgramatico
{
    //string user = Request["txtUsuario"];
    //String clave Request["txtClave"];
    //ClassConexion con = new ClassConexion();
    //con.conectar();
    
    public partial class Logueo : System.Web.UI.Page
    {
        private Conexion con;
        private Sentencias sentenc;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.con = new Conexion();
            this.con.conectar();
            this.sentenc = new Sentencias();
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             
        }
        public void ProcesarFormulario(object sender, EventArgs e)
        {
            if (IsValid)
            {
                 
                string Tipo = this.sentenc.Logueo(Convert.ToInt32(this.txtUsuario.Text), this.txtClave.Text);
                if (Tipo == "Alumno")//se ejecutó la consulta correctamente
                {
                    Session["logalum"] = true;
                    Response.Redirect("Alumnos.aspx");
                    
                }
                else if (Tipo=="Profesor")
                {
                    String Valor = txtUsuario.Text;
                    Session["user"] = Convert.ToInt32(this.txtUsuario.Text);
                    Session["logpro"] = true;
                    Response.Redirect("MenuProfesores.aspx?valor =" + Valor);
                    
                }
                else if (Tipo == "Coordinador")

                {
                    
                    Session["logCoor"] = true;
                    Response.Redirect("Coordinador.aspx");
                }
                else if (Tipo=="Director")
                {
                    Response.Redirect("Director.aspx");
                }
                else//se produjo error con ñandú porque mi muñeca me habló
                {
                    Response.Write("<script>alert('Usuario o Contraseña incorrectos');</script>");
                    
                }
            }
        }
    }
}