<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CatalogoProfesor.aspx.cs" Inherits="AvanceProgramatico.Paginas.CatalogoProfesor" %>

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
                     <asp:ListItem>F11</asp:ListItem>
                     <asp:ListItem>F12</asp:ListItem>
                     <asp:ListItem>F13</asp:ListItem>
                     <asp:ListItem>F14</asp:ListItem>
                     <asp:ListItem>F15</asp:ListItem>
                     <asp:ListItem>F21</asp:ListItem>
                     <asp:ListItem>F22</asp:ListItem>
                     <asp:ListItem>F23</asp:ListItem>
                     <asp:ListItem>F24</asp:ListItem>
                     <asp:ListItem>F25</asp:ListItem>
                     <asp:ListItem>F31</asp:ListItem>
                     <asp:ListItem>F32</asp:ListItem>
                  </asp:DropDownList>
          </div> 
        </div>
        
        
        <br>
            </div>
         
      <center>
              
 <div class="EU_TableScroll" id="showData" style="display: block">
              <div>
          <asp:GridView ID="dtgPlanAcademico" runat="server" AutoGenerateColumns="false" CellPadding="3">
        <Columns>
           
            <asp:TemplateField HeaderText="Semanas" >
                <ItemTemplate>
                    <asp:TextBox ReadOnly="true" Text='<%# (Container.DataItemIndex+1) %>'  ID="txtSemana" runat="server" ></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Temas o prácticas planeadas">
                <ItemTemplate>
                    <asp:TextBox ID="txtTemas" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="H/T">
                <ItemTemplate>
                    <asp:TextBox ID="txtHt" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="H/P">
                <ItemTemplate>
                    <asp:TextBox ID="txtHp" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="BIBL">
                <ItemTemplate>
                    <asp:TextBox ID="txtBibl" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Actividad">
                <ItemTemplate>
                    <asp:TextBox ID="txtActividad" runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
             <asp:TemplateField HeaderText="Fecha">
                <ItemTemplate>
                    <asp:TextBox ID="txtFecha"   runat="server"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
          
             <asp:TemplateField HeaderText="FIRMA">
                <ItemTemplate>
                  <asp:Image ID="Image2" runat="server"></asp:Image>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
            <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="GUARDAR"  class="btn btn-success" Height="50px" Width="200px"/>
           <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
           <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />

        
            
        </div> 
             
                  
             <br />
            </center>
    
        <div/>
          <%--AREA DE LAS FIRMAS--%>

      
         
    </form>
     <br/>
    <br/>
       <div class="panel-footer panel-primary">
          © Universidad Politécnica de Tulancingo.  Calle Ingenierías # 100. Col. Huapalcalco, Tulancingo, Hidalgo, México. C.P. 43629, Teléfono: 01(775) 75 5 82 02, Fax: 01(775) 75 5 83 21.
      </div>
</body>
</html>
