<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Ajuste_Calendario.aspx.cs" Inherits="AvanceProgramatico.Paginas.Ajuste_Calendario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
   
     
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
        <LINK href="../Estilos/gridview1.css" rel="stylesheet" type="text/css"/>
</head>
   <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
      <div class="alert alert-danger" role="alert">
<center> <strong>Ajuste Calendario</strong> </center> 
</div>
    <br>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>

<div class="form-group">
    
    <div class="col-xs-10">
        <div class="form-inline">
          
            <div class="form-group">
                 <label for="desde">Desde</label>  
                
                <input type="date" class="form-control" />
            </div>
           
            <div class="form-group">
               <label for="hasta">Hasta</label>
                <input type="date" class="form-control" />
            </div>
           <i class="fa fa-calendar-check-o" aria-hidden="true"></i> 
            <div class="form-group">
               <label for="año">Año</label>
              
                <asp:DropDownList ID="DropDownList1" runat="server" Css="form-control" Height="30px" Width="150px">
                </asp:DropDownList>
           
            </div>     
                        
            <div class="form-group">
               <label for="periodo">Periodo</label>
           
                <asp:DropDownList ID="DropDownList2" runat="server" Css="form-control" Height="30px" Width="250px">
                </asp:DropDownList>
            
               
            </div>
                   <i class="fa fa-calendar-plus-o" aria-hidden="true">
           
            </i>
        </div>
       
    </div>
 

        </div>
         <br>
         <br>
        <br>
         <br>
         <asp:GridView ID="GridView1" runat="server" CssClass="gridview">
            </asp:GridView>
         <br>
         <br>
        <center>
        
  <asp:Button ID="btn_guardar" runat="server" Text="Asignar"  class="btn btn-primary" Height="50px" Width="200px" OnClick="btn_guardar_Click"/>
        </center>
             <div class="panel-panel ">
            ©2017 Universidad Politécnica de Tulancingo. 
      </div>
    </form>
    
</body>
    
</html>
