<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logueo.aspx.cs" Inherits="AvanceProgramatico.Logueo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <title></title>
     	<link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css">
        <LINK href="../Estilos/piedepagina.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
    
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
     <meta charset="utf-8">

<link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
</head>
    <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>

      </div>
      
    
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <div class="panel panel-danger">
 
  <div class="panel-heading" >
      <h1 class="panel-title">Avance Programático   </h1>
  <div class="panel-body" >
     <center class="nav-justified"> 

<div style="float:left; width:50%;">
 <h5>
     <DIV ALIGN="justify">
         
    <strong>Alumnos:</strong> <FONT COLOR="black"><P> Podrá firmar el avance programático correspondiente a cada materia.</P></FONT>
    

     <strong>Docentes:</strong>  <FONT COLOR="black"><p> Permite  capturar los temas y actividades correspondientes a cada Avance Programático.</p></FONT>
    

  <strong> Administrador:</strong> <FONT COLOR="black">  <p>pPodrán registrar alumnos jefes de grupo, profesores, asignar el calendario escolar y firmar el avance programático correspondiente a cada materia.</p></FONT> 
 </div>
         </h5>
     </div>
  
       
           
              
        <center style="float:right; width:50%; margin-left: 0px;">

           
            <div>
     <h2><i class="fa fa-user-circle-o" aria-hidden="true" fa-5x"></i></h2>
                 <asp:TextBox ID="txtUsuario" runat="server" required class="form-control" placeholder="Usuario" Height="50px" Width="300px" aria-describedby="sizing-addon3"> </asp:TextBox>
       <asp:RegularExpressionValidator ID="REV1" Text="<p>!!Solo se admiten números en este campo!" ControlToValidate="txtUsuario" Runat="server" Display="Dynamic" EnableClientScript="False" ValidationExpression="\d+"></asp:RegularExpressionValidator>
             </h2>
                <br/>
             <div>
         <h2><i class="fa fa-unlock" aria-hidden="true" fa-5x></i></h2>
              </span></h2><asp:TextBox ID="txtClave" runat="server" runat="server" required class="form-control" placeholder="Clave" Height="50px" Width="300px" aria-describedby="sizing-addon3" TextMode="Password"></asp:TextBox>
        <br />

      </div>
                  <br/>
        <asp:Button ID="Button1" runat="server" Text="Iniciar Sesión" CssClass="btn btn-danger" Height="50px" Width="250px"  OnClick="ProcesarFormulario" />
           </center>
       
       </div>
            </div>
             </div>
    </form>
    <br/>
    <br/>
       <div class="panel-footer panel-primary">
          © Universidad Politécnica de Tulancingo.  Calle Ingenierías # 100. Col. Huapalcalco, Tulancingo, Hidalgo, México. C.P. 43629, Teléfono: 01(775) 75 5 82 02, Fax: 01(775) 75 5 83 21.
      </div>
</body>
</html>
