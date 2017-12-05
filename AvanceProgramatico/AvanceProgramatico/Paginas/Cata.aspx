﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cata.aspx.cs" Inherits="AvanceProgramatico.Paginas.Cata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <%--<script type="text/javascript" src="../Bootstrap/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="../Bootstrap/css/bootstrap.min.css"/>
	<script type="text/javascript"src="../Bootstrap/js/jquery-3.1.1.min.js"></script>--%>

    

    <link href="../Estilos/calendarshow.css" rel="stylesheet" />
</head>
      <div class="jumbotron" > 
    <center>
    <h1>Universidad Politécnica de Tulancingo </h1>
      </div>
     

      <div class="alert alert-danger" role="alert">
<center> <strong><h3> Registro de plan academico</h3></strong> </center> 
</div>
    <br>
<body>
    <form id="form1" runat="server">
        <div>
         
            <asp:GridView ID="dtgPlanAcademico" runat="server" ShowFooter="True" DataKeyNames="pk_PlanAcademico" ShowHeaderWhenEmpty="True" AutoGenerateColumns="False" 
                RowStyle-CssClass="GvGrid" PagerStyle-CssClass="pgr" AlternatingRowStyle-CssClass="alt" CssClass="mGrid"  

                OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                 OnRowCancelingEdit="dtgPlanAcademico_RowCancelingEdit" OnRowCommand="dtgPlanAcademico_RowCommand" 
                OnRowEditing="dtgPlanAcademico_RowEditing" OnRowUpdating="dtgPlanAcademico_RowUpdating"  
                OnRowDeleting="dtgPlanAcademico_RowDeleting" CellPadding="4" ForeColor="#333333" GridLines="None" >

                

<AlternatingRowStyle CssClass="alt" BackColor="White"></AlternatingRowStyle>

                

                <Columns >
                    <asp:TemplateField HeaderText="Semanas" >
                        <ItemTemplate>
                            <asp:Label  Width="120px" Text='<%# Eval("Semana") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="120px" ID="txtSemana" Text='<%# Eval("Semana") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="120px" ID="txtSemanaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Temas o prácticas planeadas">
                        <ItemTemplate>
                            <asp:Label Width="400px" Text='<%# Eval("Tema") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox Width="400px" ID="txtTema" Text='<%# Eval("Tema") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="400px" ID="txtTemaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="H/T" >
                        <ItemTemplate>
                            <asp:Label Width="50px" Text='<%# Eval("Ht") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtHt" Text='<%# Eval("Ht") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="50px" ID="txtHtFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="H/P">
                        <ItemTemplate>
                            <asp:Label Width="50px" Text='<%# Eval("Hp") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtHp" Text='<%# Eval("Hp") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="50px" ID="txtHpFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BIBL">
                          <ItemTemplate>
                            <asp:Label Width="50px" Text='<%# Eval("Bibl") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox Width="50px" ID="txtBibl" Text='<%# Eval("Bibl") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="50px" ID="txtBiblFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actividad">
                           <ItemTemplate>
                            <asp:Label Width="400px" Text='<%# Eval("Actividad") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox Width="400px" ID="txtActividad" Text='<%# Eval("Actividad") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox Width="400px" ID="txtActividadFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha" >
                           <ItemTemplate>
                            <asp:Label Text='<%# Eval("Fecha") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtFecha"  CssClass="mTextFecha"  AutoPostBack="true" Text='<%# Eval("Fecha") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFechaFooter" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Calendario" >
                     <ItemTemplate>   
                         <asp:ImageButton OnClick="ImageButton1_Click" ImageUrl="~/images/ImagesPlanAcademico/calendar.png" runat="server" CommandName="Calendar" ToolTip="Calendar" Width="20px" Height="20px"/>
                      <asp:Calendar Visible="false" CssClass="mCalendar" ID="calendar"  runat="server" OnSelectionChanged="Cal1_SelectionChanged" 
                          BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
                          </asp:Calendar>  
                          
                     </ItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton OnClick="ImageButton2_Click" ImageUrl="~/images/ImagesPlanAcademico/calendar.png" runat="server" CommandName="Calendar" ToolTip="Calendar" Width="20px" Height="20px"/>
                      <asp:Calendar Visible="false" CssClass="mCalendar" ID="calendar2"  runat="server" OnSelectionChanged="Cal2_SelectionChanged"
                                  BackColor="White" BorderColor="White" BorderWidth="1px" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" Height="190px" NextPrevFormat="FullMonth" Width="350px">
            <DayHeaderStyle Font-Bold="True" Font-Size="8pt" />
            <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" VerticalAlign="Bottom" />
            <OtherMonthDayStyle ForeColor="#999999" />
            <SelectedDayStyle BackColor="#333399" ForeColor="White" />
            <TitleStyle BackColor="White" BorderColor="Black" BorderWidth="4px" Font-Bold="True" Font-Size="12pt" ForeColor="#333399" />
            <TodayDayStyle BackColor="#CCCCCC" />
                          </asp:Calendar>   
                        </FooterTemplate>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Grupo" >
                           <ItemTemplate>
                            <asp:Label Text='<%# Eval("Grupo") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtGrupo"    Text='<%# Eval("Grupo") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFechaGrupo" runat="server" />
                        </FooterTemplate>

                    </asp:TemplateField>

                    <asp:TemplateField>
                        <ItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/ImagesPlanAcademico/edit.png" runat="server" CommandName="Edit" ToolTip="Edit" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/images/ImagesPlanAcademico/delete.png" runat="server" CommandName="Delete" ToolTip="Delete" Width="20px" Height="20px"/>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:ImageButton ImageUrl="~/images/ImagesPlanAcademico/save.png" runat="server" CommandName="Update" ToolTip="Update" Width="20px" Height="20px"/>
                            <asp:ImageButton ImageUrl="~/images/ImagesPlanAcademico/cancel.png" runat="server" CommandName="Cancel" ToolTip="Cancel" Width="20px" Height="20px"/>
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:ImageButton ImageUrl="~/images/ImagesPlanAcademico/addnew.png" runat="server" CommandName="AddNew" ToolTip="Add New" Width="20px" Height="20px"/>
                        </FooterTemplate>
                       
                    </asp:TemplateField>
                </Columns>
                <FooterStyle BackColor="#B40404" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#B40404" Font-Bold="True" ForeColor="White" />
                <PagerStyle CssClass="pgr" BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                <SortedAscendingCellStyle BackColor="#FDF5AC" />
                <SortedAscendingHeaderStyle BackColor="#4D0000" />
                <SortedDescendingCellStyle BackColor="#FCF6C0" />
                <SortedDescendingHeaderStyle BackColor="#820000" />
            </asp:GridView>
           <br />
            <asp:Label ID="lblSuccessMessage" Text="" runat="server" ForeColor="Green" />
           <br />
            <asp:Label ID="lblErrorMessage" Text="" runat="server" ForeColor="Red" />
            <br />

        
            
        </div>
        
    </form>
</body>
</html>
