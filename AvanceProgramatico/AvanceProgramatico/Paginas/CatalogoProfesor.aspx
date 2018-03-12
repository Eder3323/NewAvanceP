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
    <h1>&nbsp&nbsp&nbsp Universidad Politécnica de Tulancingo </h1>
      </div>
      <div class="alert alert-danger" role="alert">
        

<left>
     
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
        <asp:ScriptManager ID="ScriptManager1" runat="server">
                              </asp:ScriptManager>
         <asp:UpdatePanel ID="UpdatePanel1" runat="server">
               <ContentTemplate>
                   
         <div class="form-group">
            

              
              <label for="nameField" class="col-xs-2">Programa Educativo</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLProgramaEdu" runat="server"  AutoPostBack="True" Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLProgramaEdu_SelectedIndexChanged1">
                  </asp:DropDownList>
    </div>
          </div>
        <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Grado</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLGrado" runat="server" AutoPostBack="True" Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLGrado_SelectedIndexChanged1">
                    
                     
                  </asp:DropDownList>
          </div> 
        </div>
        <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Grupo</label> 
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLGrupo" runat="server" Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLGrupo_SelectedIndexChanged1">
                  </asp:DropDownList>&nbsp&nbsp&nbsp<asp:Label ID="lblGrupo" AutoPostBack="True" Text="" runat="server" ForeColor="Red" />
          </div> 
                     
        </div>
         <br>
                 <
                     
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Asignatura</label> 
            
                 <div class="col-xs-10"> <asp:DropDownList ID="DropDLAsignatura" runat="server"   Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLAsignatura_SelectedIndexChanged1">
                  </asp:DropDownList> &nbsp&nbsp&nbsp<asp:Label ID="lblAsig" Text="" runat="server" ForeColor="Red" />
                     <asp:DropDownList ID="DropDLAsignatura2" runat="server"  AutoPostBack="True" Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLAsignatura2_SelectedIndexChanged1">
                  </asp:DropDownList> &nbsp&nbsp&nbsp
                     </div> 
           
                    
    </div><br>
        <div class="form-group">
             <label   for="nameField" class="col-xs-2" >Periodo</label> 
                     <div class="col-xs-10"> <asp:DropDownList ID="DropDLPeriodo"  runat="server"  Css="form-control" Height="30px" Width="300px" OnSelectedIndexChanged="DropDLPeriodo_SelectedIndexChanged1">
                  </asp:DropDownList>
                         
    </div>
             </ContentTemplate>
            </asp:UpdatePanel>
          </div>
         <br>
        <div class="form-group">
              <label for="nameField" class="col-xs-2">Matricula Profesor/a</label> 
                 <div class="col-xs-10"> <asp:TextBox ID="txtProfesor" runat="server" class="form-control" placeholder="Matricula" Height="30px" Width="300px" aria-describedby="sizing-addon3"></asp:TextBox>
    </div>
          </div>
        <br>
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
                  <br>
            <asp:Button ID="btn_guardar" runat="server" OnClick="btn_guardar_Click" Text="GUARDAR"  class="btn btn-success" Height="50px" Width="200px"/>
           <br><br />
<center><asp:Button ID="Regresar" runat="server" Text="Regresar" class="btn btn-warning" Height="50px" Width="200px" OnClick="Regresar_Click"></asp:Button></center>
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
           <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />
                  <asp:Label ID="LblEdu" runat="server" Text="Label"></asp:Label>
                  &nbsp&nbsp<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
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
