<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Configuracion.aspx.cs" Inherits="AvanceProgramatico.Paginas.Configuracion" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
   <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<link href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
     <meta charset="utf-8"/>

       <%--         de firmas 2we2323--%><%--         de firmas 2we2323--%>
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
</script>--%><%--DE FIRMA TERIMINA--%>


</head>
    <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
     <a href="Logueo.aspx"><h4>Cerrar mi sesión</h4></a>
      <div class="alert alert-danger" role="alert">
         
<center> <strong>Fírma Coordinador</strong> </center> 
</div>
    <br>
<body>
    <center><asp:Label ID="lblEsta" runat="server" Class="bg-primary" Font-Size="X-Large"></asp:Label></center>
    <br>
<body >
    <form id="form1" runat="server">
      
    <div>
     
        
     
        </div>

       <div class="nav-justified" id="lblEsta"> 

<div style="float:left; width:50%;">

    <body style='margin:30px'>
    <div class="container">
      <!-- Horizonatal Form -->
      <div class="row">
        <div class="col-xs-6">
           </div>
                <br>
  
       </br>

     
              

                        
    
      
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
            <%--<button type="button" class="btn btn-warning" data-action="change-color">Cambiar color</button>--%>
          <%--<button type="button" class="btn btn-primary" data-action="undo">Deshacer</button>--%>
            <%-- <button class="button clear" data-action="clear">
                Clear</button>--%>
            
            <input type="hidden" id="hfSign" runat="server" />
            <asp:Button Text="Capturar" runat="server" class="btn btn-warning" data-action="save"
                OnClick="Save" />
            
             <%-- <input type="button" id="btnSave" value="Save as Image" /><br />--%>
        </div>
    
          
          <%--<button type="button" class="btn btn-info" data-action="save-svg">Descarga SVG</button>--%>
        
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
                  <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="GUARDAR"  class="btn btn-success" Height="50px" Width="200px"/>
                        <asp:Button ID="Button1" runat="server" Text="Regresar" class="btn btn-warning" Height="50px" Width="200px" OnClick="Button1_Click2"/>
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
              
 <div class="EU_TableScroll" id="showData" style="display: block">
                  
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

