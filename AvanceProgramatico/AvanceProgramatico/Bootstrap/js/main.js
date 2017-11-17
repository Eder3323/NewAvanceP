
$(buscar_datos());
function buscar_datos(consulta){
$.ajax({
    url:'Cheff/consulta2.php',
    type:'default Get (Other values: POST)',
    dataType:'html',
    data: {consulta: 'consulta'},
    })
    .done(function() {
    console.log("success");
    })
    .fail(function(respuesta){
    $("#datos").html(respuesta);
    }) 
    .always(function (){
    console.log("error");
    })
   
    