using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AvanceProgramatico.Clases
{
    /// <summary>
    /// Summary description for ProcesarFirma
    /// </summary>
    public class ProcesarFirma : IHttpHandler
    {
        Sentencias sentencias = new Sentencias();

        public void ProcessRequest(HttpContext context)
        {
            try
            {
                //    byte[] signature = this.sentencias.myfirma();
                //    context.Response.ContentType = "image/png";
                //    context.Response.OutputStream.Write(signature, 78, signature.Length - 78);
            }
            catch (Exception E)
            {

                
            }

           


        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}