<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Profesores.aspx.cs" Inherits="AvanceProgramatico.Paginas.Profesores" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
     <meta charset="utf-8">
    <title></title>
</head>
     <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
      
 
       
           <h1> <span class='label label-default'>Profesor  </span></h1>
<body>
    <form id="form1" runat="server">
         <div style="width:100%;"> 



             <div style="float:left; width:20%;">
                 <center>

                 Profesor





                     </center>




             </div>
             
             <div style="float:left; width:60%;">


                 <asp:GridView ID="GridView1" runat="server" Width="670px" CssClass="table table-bordered bs-table" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                          <HeaderStyle BackColor="#337ab7" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#ffffcc" />
        <EmptyDataRowStyle forecolor="Red" CssClass="table table-bordered" />
        <emptydatatemplate>
            ¡No hay clientes con los parámetros seleccionados!  
        </emptydatatemplate>   
                          <RowStyle BackColor="#990000" BorderColor="Black" />
                 </asp:GridView>


             </div>
             
             <div style="float:left; width:20%;">

                 <br />
                 <br />
                 <br />
                    <br />
                 <br />
                 <br />
                     <br />
                 <br />
                     <br />
                 <br />
                 <asp:Button ID="Button1" runat="server" Text="Enviar" CssClass="btn btn-success"/>


             </div>





        </div>
    </form>
</body>
</html>
