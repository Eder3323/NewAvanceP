﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistroProfesores.aspx.cs" Inherits="AvanceProgramatico.Paginas.RegistroProfesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
       <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<link href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
    <link href="../Estilos/gridview1.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
    
    <link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
     <meta charset="utf-8"/>

       <%--         de firmas 2we2323--%>
          <meta name="description" content="Signature Pad - HTML5 canvas based smooth signature drawing using variable width spline interpolation.">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">

  <meta name="apple-mobile-web-app-capable" content="yes">
  <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <link rel="stylesheet" type="text/css" href="../Paginas/scripts/ie9.css">

  
   <script type="text/javascript">
        var _gaq = _gaq || [];
        _gaq.push(['_setAccount', 'UA-39365077-1']);
        _gaq.push(['_trackPageview']);
        (function () {
            var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
            ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
            var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
        })();
  </script>
       <%--   <-- ASDASD  --->--%>

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












    <%--<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://intridea.github.io/sketch.js/lib/sketch.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $(function () {
        $('#micanvas').sketch();
        $(".signature-pad a").eq(0).attr("style", "color:#000");
        $(".signature-pad a").click(function () {
            $(".signature-pad a").removeAttr("style");
            $(this).attr("style", "color:#000");
        });
        $("#btnSave").bind("click", function () {
            var base64 = $('#micanvas')[0].toDataURL();
            $("#saveimg2").attr("src", base64);
            $("#saveimg2").show();
        });
    });
</script>--%>    <%--DE FIRMA TERIMINA--%>


</head>
    <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
      <a href="Logueo.aspx"><h4>Cerrar mi sesión</h4></a>

      <div class="alert alert-danger" role="alert">
<center> <strong><h3> Registro de Profesores</h3></strong> </center> 
</div>
    <br>
<body >
    <form id="form1" runat="server">
      
    <div>
     
        
     
        </div>

       <div class="nav-justified"> 

<div style="float:left; width:50%;">

    <body style='margin:30px'>
    <div class="container">
      <!-- Horizonatal Form -->
      <div class="row">
        <div class="col-xs-6">
           </div>
                <br>
            <div class="form-group">
              <label for="nameField" class="col-xs-2">Matrícula</label> 
                 <div class="col-xs-10"><asp:TextBox ID="txtMatricula" runat="server" class="form-control" placeholder="Matricula" Height="30px" Width="300px" aria-describedby="sizing-addon3" ToolTip="Ingrese la matriucula"></asp:TextBox>
    
    </div>
          </div>
       </br>

       <br>
           <div class="form-group">
              <label for="nameField" class="col-xs-2">Contraseña</label>
              <div class="col-xs-10"><asp:TextBox ID="txtClave" runat="server"  class="form-control" placeholder="Contraseña" Height="30px" Width="300px" aria-describedby="sizing-addon3" Type="Password"></asp:TextBox>
         
              </div>
          </div>
          </br>
           <br>
           <div class="form-group">
              <label for="nameField" class="col-xs-2">Confirmar contraseña</label>
              <div class="col-xs-10"><asp:TextBox ID="txtconfirmar" runat="server"  class="form-control" placeholder="Confirmar contraseña" Height="30px" Width="300px" aria-describedby="sizing-addon3" Type="Password"></asp:TextBox>
         
              </div>
          </div>
          </br>
              
                    <div class="form-group">
               <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToCompare="txtClave" ControlToValidate="txtconfirmar" 
            ErrorMessage="No coinciden las contraseñas" BackColor="White" CssClass="alert" ForeColor="Red"></asp:CompareValidator>
 </div>
                        
          
           <br>
                <div class="form-group">
              <label for="emailField" class="col-xs-2">Nombre</label>
              <div class="col-xs-10"><asp:TextBox ID="txtNombre" runat="server"  class="form-control" placeholder="Nombre" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
     
              </div>
          </div>
          </br>
          
                <br>
              <div class="form-group">
              <label for="phoneField" class="col-xs-2">Correo electrónico</label>
              <div class="col-xs-10"> <asp:TextBox ID="txtCorreo" runat="server"  class="form-control"  pattern="^[a-zA-Z0-9.(com|net|org|edu|mil)!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" placeholder="Correo" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
         
              </div>
   </div>
            </br>   
                <br>
                     <div class="form-group1">
              <label for="emailField" class="col-xs-2">Materias Asignadas</label>
              <div class="col-xs-10">
                 
                      <br />
                  <br />

                      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                          <ContentTemplate>
                              <asp:Label ID="txtMensaje" runat="server" Text="Materias"></asp:Label>
                              <br />
                              <asp:DropDownList ID="cmbmaterias" runat="server" CssClass="btn btn-default " Height="30px" Width="300px">
                              </asp:DropDownList>
                              
                              <asp:Button ID="Button2" runat="server" class="btn btn-success" OnClick="Button2_Click3" Text="+" />
                              <asp:ScriptManager ID="ScriptManager1" runat="server">
                              </asp:ScriptManager>
                              <br>
                              <asp:ListBox ID="ListBox1"  CssClass="btn btn-default " runat="server" Height="200px" Width="300px" SelectionMode="Single">
                              </asp:ListBox><asp:Button ID="Button3" class="btn btn-danger" runat="server" Text="-" OnClick="Button3_Click1" />
                          </ContentTemplate>
                  </asp:UpdatePanel>
                  

          </div>
                       </div>
                
          </br>
          <br />
        
      
                    <br>
                <div class="form-group">
              <label for="descField" class="col-xs-2">Firma</label>
              <div class="col-xs-10">
             &nbsp;
                    <a id="github" style="position: absolute; top: 0; right: 0; border: 0" href="https://github.com/szimek/signature_pad">
    
  </a>

  <div id="signature-pad" >
     
    <div class="signature-pad--body">
      <canvas style="border: 10px solid #E18A77"  HEIGHT="200px" WIDTH="360px" id="micanvas"></canvas>
    </div>
     
    <div >
      <div >Firma aquí </div>

      <div >
        <div>
           
          <button type="button" class="btn btn-danger" data-action="clear">Nueva</button>
           
         
       
            
            <input type="hidden" id="hfSign" runat="server" />
            <br />
            <br />
            <br />
            <asp:Button Text="Guardar" runat="server" class="btn btn-success" Height="50px" Width="200px" data-action="save"
                OnClick="Save" />
             <asp:Button ID="Button1" runat="server" Text="Regresar" class="btn btn-warning" Height="50px" Width="200px" OnClick="Button1_Click1"/>
         
        </div>
    
          
          
        
      </div>
    </div>
  </div>
                 <img id="saveimg2" alt="" style="display: none; border: 1px solid #ccc" />
  <script src="../Paginas/scripts/signature_pad.js"></script>
  <script src="../Paginas/scripts/app.js"></script>
                  <br />
                  <br />
                  
         

                       </div>
                    <center>
                     <div class="col-xs-10 col-xs-offset-2">
                         <%-- <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="GUARDAR"  class="btn btn-success" Height="50px" Width="200px"/>--%>
                       
                   </div>
                        
            </center>
          </br>
           
        </div>
   
 
      </div>
            
</body>
    <br>

     </br>
          <br>
        
           </br>        
    </div>
    <div class="panel">
          ©2017 Universidad Politécnica de Tulancingo.  
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
      </div>
    </div>

     <center style="float:right; width:50%; ">
              <center>
              <h1>    <i class="fa fa-street-view" aria-hidden="true"><asp:Label ID="lblEstado" runat="server" ><span class="label label-danger"> </span></asp:Label></i>  
                  
                  </h1>
 <div class="EU_TableScroll" id="showData" style="display: block">
                  
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="True" CssClass="gridview"  CellPadding="4"  ForeColor="#333333" GridLines="None"    rowheadercolumn="CustomerID" >
    
                  </asp:GridView>
                  
             <br />
            </center>
             
           </div>
             
        </div>
 </div>
         <link href="../Estilos/EstiloFooter.css" rel="stylesheet">
        
<!--footer start from here-->
    </form>
</body>
</html>
