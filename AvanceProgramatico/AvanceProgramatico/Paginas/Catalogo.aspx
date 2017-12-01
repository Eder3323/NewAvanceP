<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Catalogo.aspx.cs" Inherits="AvanceProgramatico.Paginas.Catalogo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
<LINK href="../Estilos/EstiloNavbar.css" rel="stylesheet" type="text/css"/>
   
     
	<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>
    <link rel="stylesheet" href="../FontAwesome/css/font-awesome.min.css">
     <meta charset="utf-8">
</head>
     <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
      <div class="alert alert-danger" role="alert">
        

<left>
      <asp:Image ID="Image1"  runat="server" ImageUrl="~/images/upt6.png" width="50" height="50"/>
     <center>
    <strong> Sistema de Gestión Integrado</strong>
         </center>
</left> 
          <center>
     <strong> Programa Control de Avance Prográmatico</strong>

</center> 
</div>
<body>
    <form id="form1" runat="server">
    <div>
        <br>
         <div class="form-group">
              <label for="nameField" class="col-xs-2">Programa Educativo</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLProgramaEdu" runat="server"  AutoPostBack="True" Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                  </asp:DropDownList>
    </div>
          </div>
        
         <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Asignatura</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLAsignatura" runat="server"  Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                  </asp:DropDownList>
                     </div> 

                  
    </div><br>
        <div class="form-group">
             <label   for="nameField" class="col-xs-2" >Periodo</label> 
                     <div class="col-xs-10"> <asp:DropDownList ID="DropDLPeriodo" runat="server"  Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                  </asp:DropDownList>
    </div>
          </div>
         <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Profesor/a</label> 
                 <div class="col-xs-10"> <asp:TextBox ID="txtProfesor" runat="server" class="form-control" placeholder="Nombre" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
    </div>
          </div>
        <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Grupo</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLGrupo" runat="server"  Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1">
                  </asp:DropDownList>
          </div> 
        </div>
        <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Horas Totales Presenciales</label> 
                 <div class="col-xs-10"> <asp:TextBox ID="txtHorasTP" runat="server" class="form-control" placeholder="Horas Totales" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
    </div>
          </div>
        <br>
            </div>
         
      <center>
              
 <div class="EU_TableScroll" id="showData" style="display: block">
              <h1 >    <i class="fa fa-street-view" aria-hidden="true"><asp:Label ID="lblEstado" runat="server" ><span class="label label-danger"> </span></asp:Label></i>  
                  
                  </h1>    
             <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="True" CssClass="gridview"  CellPadding="4"  ForeColor="#333333" GridLines="None"    rowheadercolumn="CustomerID">
    <AlternatingRowStyle BackColor="White" ForeColor="#284775"  />
                  </asp:GridView>
                  
             <br />
            </center>
    </div>
       <br>
        <br/>
          <%--AREA DE LAS FIRMAS--%>

           <div class="form-group">
       

               <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
               
           </div>
        <table>

   <tr>

       <td>   <asp:Image ID="ImgFirmaAlumno" runat="server" /></td>

       <td>  <asp:Image Istyle="padding-left:150px;" D="ImgFirmaProfesor" runat="server" /></td>
       <td>  <asp:Image Istyle="padding-left:200px;" D="ImgFirmaCoordinador" runat="server" /> </td>
       <td>  <asp:Image Istyle="padding-left:200px;" D="ImgFirmaDirector" runat="server" /> </td>

   </tr>

   <tr align="center">

       <td >  <label for="nameField" class="col-xs-6">Jefe/a de Grupo Nombre y firma</label>  </td>
       <td><label for="nameField" class="col-xs-4">Profesor/a Nombre y firma</label> </td>
          <td><label   for="nameField" class="col-xs-14">Coordinador de Programa Educativo Nombre y firma</label>  </td>
          <td> <label   for="nameField" class="col-xs-8">Director de Divición Nombre y firma</label> </td>

   </tr>
</table>
         
    </form>
     <br/>
    <br/>
       <div class="panel-footer panel-primary">
          © Universidad Politécnica de Tulancingo.  Calle Ingenierías # 100. Col. Huapalcalco, Tulancingo, Hidalgo, México. C.P. 43629, Teléfono: 01(775) 75 5 82 02, Fax: 01(775) 75 5 83 21.
      </div>
</body>
</html>
