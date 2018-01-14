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
        <asp:TextBox ID="TextBox1" runat="server" Width="268px" Height="34px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Buscar" CssClass="btn btn-primary" />
            </center>
    </div>
    </form>
</body>
</html>
