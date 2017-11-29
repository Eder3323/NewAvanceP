<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Alumnos.aspx.cs" Inherits="AvanceProgramatico.Paginas.Alumnos" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
     <meta charset="utf-8">

<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
        <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
      
 
       
          
<body>
    <form id="form1" runat="server">




         <div style="width:100%;"> 



           
             <table>

                 <td>
                     <h1>Alumnos<h1>

                 </td>

                 <td>
                     
                 <asp:GridView ID="GridView1" runat="server" Width="670px" CssClass="table table-bordered bs-table" >
                          <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#ffffcc" />
        <EmptyDataRowStyle forecolor="Red" CssClass="table table-bordered" />
        <emptydatatemplate>
            ¡No hay clientes con los parámetros seleccionados!  
        </emptydatatemplate>   
                          <RowStyle BackColor="#990000" BorderColor="Black" />
                 </asp:GridView>

                 </td>
             </table>


             </div>
             
            
                 <asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="btn btn-success"/>


             





        </div>
    </form>
</body>
</html>
