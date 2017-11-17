<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro_p.aspx.cs" Inherits="AvanceProgramatico.Pagina.Registro_p" %>


<!DOCTYPE html>
<html lang="en">
<html xmlns="http://www.w3.org/1999/xhtml">

   <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
     <meta charset="utf-8">

      <%--        DE FIRMAS--%>
          <meta name="description" content="Signature Pad - HTML5 canvas based smooth signature drawing using variable width spline interpolation.">

  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" type="text/css" href="../Paginas/scripts/ie9.css">

  
   


  <script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-39365077-1']);
    _gaq.push(['_trackPageview']);

    (function() {
      var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
      ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
      var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
    })();
  </script>
   <%--DE FIRMA TERIMINA--%>

</head>
    <div class="jumbotron" > 
    <center>
    <h1>Universidad Politecnica de Tulancingo </h1>
      </div>
      
 
     
<body onselectstart="return false">
    <form id="form1" runat="server">
    <div>
    

       <div style="width:100%;"> 

<div style="float:left; width:40%;">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

    <center>
        <br>
          <h1> <span class='label label-default'>Registro de Profesores  </span></h1>
        <br>
    <asp:Label ID="Label1" runat="server" CssClass="active" Font-Bold="True" Font-Size="X-Large" Text="Matricula"></asp:Label>
        &nbsp;
        <asp:TextBox ID="txtMatricula" runat="server" required class="form-control" Height="30px" Width="200px" ></asp:TextBox>


        
        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Nombre"></asp:Label>
        <asp:TextBox ID="txtNombre" runat="server" required class="form-control" Height="30px" Width="200px" ></asp:TextBox>
    <asp:Label ID="Label3" runat="server" CssClass="active" Font-Bold="True" Font-Size="X-Large" Text="Clave"></asp:Label>
        <asp:TextBox ID="txtClave" runat="server" required class="form-control" Height="30px" Width="200px" ></asp:TextBox>
        
        <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Correo Electronico"></asp:Label>
        
        <asp:TextBox ID="txtCorreo" runat="server" required class="form-control" Height="30px" Width="200px"  ></asp:TextBox>
        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Firma"></asp:Label>
             <br />
           
        <%-- AQUI EMPIEZA CODIGO DE FIRMA--%>
          <center>
    <div class="signature-pad--body">
      <canvas></canvas>
    </div>
      </center>
    <div class="signature-pad--footer">
      <div class="description">Firma aquí </div>

      <div class="signature-pad--actions">
        <div>
          <button type="button" class="btn btn-danger" data-action="clear">Nueva</button>
            <%--<button type="button" class="btn btn-warning" data-action="change-color">Cambiar color</button>--%>
          <button type="button" class="btn btn-primary" data-action="undo">Deshacer</button>

        </div>
    
          <button type="button" class="btn btn-info" data-action="save-png" >Descarga PNG</button>
          <button type="button" class="btn btn-info" data-action="save-jpg">Descarga JPG</button>
          <%--<button type="button" class="btn btn-info" data-action="save-svg">Descarga SVG</button>--%>
        
      </div>
    </div>
        <br />
         <asp:Button ID="Button3" runat="server" Text="Guardar" CssClass="btn btn-info" OnClick="Button3_Click" />
        </center>
       
  </div>

  <script src="../Paginas/scripts/signature_pad.js"></script>
  <script src="../Paginas/scripts/app.js"></script>



       
        
 </div>
           <div style="float:right; width:60%; ">

              
               <center>  <br> <br> <h1> 
                   <asp:TextBox ID="txtMatricula2" runat="server"></asp:TextBox>
                   <span class='label label-default' > Profesores Registrados</span>  </h1> 
                    <br>
               <asp:GridView ID="GridView1" runat="server">
               </asp:GridView>
                   </center>
               <br />
</div>
 
</div>
  
      
    


             
    <br>
       
      <div>



      </div>
      

         

       
    </form>
</body>
</html>
