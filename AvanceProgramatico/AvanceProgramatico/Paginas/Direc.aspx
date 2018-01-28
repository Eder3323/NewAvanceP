<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Direc.aspx.cs" Inherits="AvanceProgramatico.Paginas.Direc" %>

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
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <center>
        <asp:Label ID="Label1" runat="server" Text="Busqueda de formatos " Class="bg-primary" Font-Size="X-Large"></asp:Label>
        <br />
            <br />
        <asp:TextBox ID="TextBox1" runat="server" Width="268px" Height="34px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-primary" OnClick="Button1_Click" />
            <br />
            <br />
              <div class="container">
        <div class="panel panel-primary">
            <div class="panel-heading">Buscar Avance Programático</div>
            <div class="panel-body">
               <%-- <p>
                    <a href="Add.aspx" class="btn btn-success">Agregar</a>
                </p>--%>
                <table id="Mytabla" class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Id formato</th>
                        <th>Profesor</th>
                        <th>Grupo</th>
                            <th>Acciones</th>

                        </tr>
                    </thead>
                    <tbody>
                        <%
                            while (getRegistro2().Read())
                            {
                                %>
                                <tr>
                                    <td><%=getRegistro2()["Matricula"] %></td>
                                    <td><%=getRegistro2()["Clave"] %></td>
                                    <td><%=getRegistro2()["Nombre"] %></td>
                                    <td>
                                        <a href="Edit.aspx?id=<%=getRegistro2()["Matricula"] %>"><i class="fa fa-file" aria-hidden="false" title="Visualizar"></i></a>
                                      
                                      
                                    </td>
                                </tr>
                                <%
                            }
                        %>
                    </tbody>
                </table>
            </div>
        </div><asp:Label ID="lblContenido" runat="server" Text="The test "></asp:Label>

    </div><asp:Button ID="Button2" runat="server" CssClass="btn btn-success" Text="Mostrar Pdf" OnClick="Button2_Click"></asp:Button>

              <script type="text/javascript" src="public/js/jquery.js"></script>
    <script type="text/javascript" src="public/js/funciones.js"></script>
            </center>
    </div>
    </form>
</body>
</html>
