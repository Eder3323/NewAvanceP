<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Asignaturas.aspx.cs" Inherits="AvanceProgramatico.Paginas.Asignaturas" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <link rel="Stylesheet" href="https://twitter.github.io/typeahead.js/css/examples.css"></link>
    <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css" />
    <link href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
      <link href="../Estilos/gridview1.css" rel="stylesheet" type="text/css"/>
       <link href="../Estilos/modal.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 83.33333333%;
            top: 0px;
            left: 0px;
            padding-left: 15px;
            padding-right: 15px;
        }
    </style>
</head>
    
<body>

    <form id="form1" runat="server">
                <asp:TextBox ID="TextBox1" placeholder="Titulo del libro" CssClass="form-control" runat="server"></asp:TextBox>
        <div class="form-group" id="fechainic">

            <div class="auto-style1">
                <div class="form-inline">

                  
                    <div class="col-sm-2">
                        <div class="form-group">
                              <label>Titulo :</label>
                            <asp:TextBox ID="txtBuscar" placeholder="Titulo del libro" CssClass="form-control" runat="server"></asp:TextBox>

                        </div>
                    </div>
         
                <div class="col-sm-2">
                    <div class="form-group">
                        <label>Autor:</label>
                        <asp:TextBox ID="txtValor" CssClass="form-control" placeholder="Autor" runat="server"></asp:TextBox>
                    </div>
                </div>

            <div class="col-sm-2">
                <div class="form-group">
                    <label>Año:</label>
                    <asp:TextBox ID="txtvalor1" CssClass="form-control" placeholder="Año" runat="server"></asp:TextBox>
                </div>
            </div>
      
        <div class="col-sm-2">
            <div class="form-group">
                <label>Editorial</label>
                <asp:TextBox ID="txtvalor2" CssClass="form-control" placeholder="Editorial" runat="server"></asp:TextBox>
            </div>
        </div>
      <div class="col-sm-2">
            <div class="form-group">
                <label>Edición</label>
                <asp:TextBox ID="txtvalor4" CssClass="form-control" placeholder="Edición" runat="server"></asp:TextBox>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label>ISBN:</label>
                <asp:TextBox ID="txtvalor3" CssClass="form-control" placeholder="ISBN" runat="server"></asp:TextBox>
            </div>
        </div>
            
      <div class="col-sm-2">
            <div class="form-group">
               
              <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="+" class="btn btn-info" witd="15px" Height="35px"/>
                 <asp:Label ID="Label1" runat="server" Text="0" class="label label-info"></asp:Label>
                      <asp:Label ID="Label2" runat="server" class="label label-danger" ></asp:Label>
            </div>
        </div>

<button type="button"  ID="btnModal"  OnClick="btnModal" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
   Bibliografías Registradas
</button>
</div>
        </div>  
    
     <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Bibliografías Registradas</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <asp:GridView ID="GridView1" runat="server" CssClass="gridview">
                    </asp:GridView>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
                
            </div>
        </div>
    </div>
</div>
<br />
<br />
</div>
         
    </form>
   
    <script type="text/javascript">

         


        $("#<%=txtBuscar.ClientID%>").autocomplete({
            source: function (request, response) {
                /*Aquí se configura el origen de datos*/
                $.ajax({
                    type: 'POST',
                    url: "Asignaturas.aspx/BuscarLugar",
                    data: "{textoBuscar: '" + request.term + "'}",
                    dataType: "json",
                    contentType: 'application/json',
                    async: false,
                    success: function (result) {
                        response($.parseJSON(result.d));
                    }
                });
            },
            search: function () {
                /*Este evento sucede mientras se escribe algo en el TextBox*/
               //
                // caracteres en la búsqueda
                var term = this.value;
                if (term.length < 2) {
                    return false;
                }
            },
            focus: function () {
                /*Este evento sucede cuando el TextBox obtiene el foco*/
                // Evitar que el valor se inserte cuando 
                // el TextBox obtenga el foco
                return false;
            },
            select: function (event, ui) {
                /*Este evento sucede cuando se selecciona uno de los resultados*/
                // Asignar el valor al TextBox
                this.value = ui.item.value;
                this.value1 = ui.item.value1;
                // Mostrar el ID
                $("#<%=txtValor.ClientID%>").val(ui.item.id);
                $("#<%=txtvalor1.ClientID%>").val(ui.item.año);
                $("#<%=txtvalor2.ClientID%>").val(ui.item.Edicion);
                $("#<%=txtvalor4.ClientID%>").val(ui.item.Editorial);
                $("#<%=txtvalor3.ClientID%>").val(ui.item.ISBN);
              
                return false;
            }

        });
    </script>
    


</body>
</body>

</div>
</form>
</body>
</html>
