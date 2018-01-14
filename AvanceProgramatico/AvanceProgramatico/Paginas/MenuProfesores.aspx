<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuProfesores.aspx.cs" Inherits="AvanceProgramatico.Paginas.MenuProfesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css">
     <LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css">
  
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>

    <link rel="stylesheet" href="../Paginas/scripts/main.css">
     <meta charset="utf-8">
    <title></title>
</head>
     <div class="jumbotron" > 
    <center>
    <h1>&nbsp&nbsp&nbsp Universidad Politécnica de Tulancingo </h1>
      </div>
      
 
      
<body>
   
   <div id="wrap">
<div id="showcase" class="noselect"> <a title="Generar Avance Programático" href="../Paginas/Admin.aspx"><img class="cloud9-item" src="../images/ImaMenu/avance.png" alt="Firefox" width="200px" height="200px"></a> <a title="Realizar Firma" href="../Paginas/Admin.aspx"><img class="cloud9-item" src="../images/ImaMenu/firma-c.png" alt="Wyzo"></a>    </div>
<p id="item-title">&nbsp;</p>
<div class="nav" class="noselect">
<button class="left">  ← </button>
<button class="right"> → </button>
</div>
</div>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 
<script src="../Paginas/scripts/jquery.reflection.js"></script> 
<script src="../Paginas/scripts/jquery.cloud9carousel.js"></script> 
<script>
    $(function() {
      var showcase = $("#showcase")

      showcase.Cloud9Carousel( {
        yPos: 42,
        yRadius: 48,
        mirrorOptions: {
          gap: 12,
          height: 0.2
        },
        buttonLeft: $(".nav > .left"),
        buttonRight: $(".nav > .right"),
        autoPlay: true,
        bringToFront: true,
        onRendered: showcaseUpdated,
        onLoaded: function() {
          showcase.css( 'visibility', 'visible' )
          showcase.css( 'display', 'none' )
          showcase.fadeIn( 1500 )
        }
      } )

      function showcaseUpdated( showcase ) {
        var title = $('#item-title').html(
          $(showcase.nearestItem()).attr( 'alt' )
        )

        var c = Math.cos((showcase.floatIndex() % 1) * 2 * Math.PI)
        title.css('opacity', 0.5 + (0.5 * c))
      }

      // Simulate physical button click effect
      $('.nav > button').click( function( e ) {
        var b = $(e.target).addClass( 'down' )
        setTimeout( function() { b.removeClass( 'down' ) }, 80 )
      } )

      $(document).keydown( function( e ) {
        //
        // More codes: http://www.javascripter.net/faq/keycodes.htm
        //
        switch( e.keyCode ) {
          /* left arrow */
          case 37:
            $('.nav > .left').click()
            break

          /* right arrow */
          case 39:
            $('.nav > .right').click()
        }
      } )
    })
  </script> 
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>


    <form id="form1" runat="server">
     <div>
    
    </div>



    

   
     </form>

   

   
     <div class="panel-footer panel-primary">
          © Universidad Politécnica de Tulancingo.  Calle Ingenierías # 100. Col. Huapalcalco, Tulancingo, Hidalgo, México. C.P. 43629, Teléfono: 01(775) 75 5 82 02, Fax: 01(775) 75 5 83 21.
      </div>
</body>

</html>
