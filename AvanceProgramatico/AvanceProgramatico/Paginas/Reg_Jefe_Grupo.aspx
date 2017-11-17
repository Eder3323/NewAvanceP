<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg_Jefe_Grupo.aspx.cs" Inherits="AvanceProgramatico.Pagina.Reg_Jefe_Grupo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
   <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
   
     
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
     <meta charset="utf-8">


     <%--         de firmas 2we2323--%>
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
      <div class="alert alert-danger" role="alert">
<center> <strong> Registro de Jefes de Grupo</strong> </center> 
</div>
    <br>
<body >
    <form id="form1" runat="server">
      
    <div>
     
        
     
        </div>

       <div style="width:100%;"> 

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
                 <div class="col-xs-10"><asp:TextBox ID="TextBox1" runat="server" required class="form-control" placeholder="Matricula" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
    
    </div>
          </div>
       </br>

       <br>
           <div class="form-group">
              <label for="nameField" class="col-xs-2">Clave</label>
              <div class="col-xs-10"><asp:TextBox ID="TextBox2" runat="server" required class="form-control" placeholder="Clave" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
         </div>
          </div>
          </br>
           <br>
                <div class="form-group">
              <label for="emailField" class="col-xs-2">Nombre</label>
              <div class="col-xs-10"><asp:TextBox ID="TextBox3" runat="server" required class="form-control" placeholder="Nombre" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
     </div>
          </div>
          </br>
          
                <br>
              <div class="form-group">
              <label for="phoneField" class="col-xs-2">Correo Electrónico</label>
              <div class="col-xs-10"> <asp:TextBox ID="TextBox4" runat="server" required class="form-control"  pattern="^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$" placeholder="Correo" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
        
              </div>
   </div>
            </br>   
                <br>
                <div class="form-group">
              <label for="emailField" class="col-xs-2">Grupo</label>
              <div class="col-xs-10">
                  <asp:DropDownList ID="DropDownList1" runat="server"  Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                  </asp:DropDownList>
          </div>
                       </div>
          </br>
        
      
                    <br>
                <div class="form-group">
              <label for="descField" class="col-xs-2">Firma</label>
              <div class="col-xs-10">
             &nbsp;
                    <a id="github" style="position: absolute; top: 0; right: 0; border: 0" href="https://github.com/szimek/signature_pad">
    
  </a>

  <div id="signature-pad" class="signature-pad">
      <center>
    <div class="signature-pad--body">
      <canvas style="border: 10px solid #E18A77"  HEIGHT="300px" WIDTH="450px" id="micanvas"></canvas>
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
  </div>

  <script src="../Paginas/scripts/signature_pad.js"></script>
  <script src="../Paginas/scripts/app.js"></script>
                  <br />
                  <center>
              <div class="col-xs-10 col-xs-offset-2">
                  <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="GUARDAR"  class="btn btn-success" Height="50px" Width="200px"/>
                   </div>
            </center>

                       </div>
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
      </div>
    </div>

     <center style="float:right; width:50%; ">
              <center>
              <h1>    <i class="fa fa-street-view" aria-hidden="true"><asp:Label ID="lblEstado" runat="server" ><span class="label label-danger"> </span></asp:Label></i>  
                  
                  </h1>
 <div class="EU_TableScroll" id="showData" style="display: block">
                  
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="True" CssClass="gridview"  CellPadding="4"  ForeColor="#333333" GridLines="None"    rowheadercolumn="CustomerID">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
                  </asp:GridView>
                  
             <br />
            </center>
             
           </div>
             
        </div>
 </div>
            </form>
</body>
</html>
