<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cata.aspx.cs" Inherits="AvanceProgramatico.Paginas.Cata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           
            <asp:GridView ID="dtgPlanAcademico" runat="server" ShowFooter="true" DataKeyNames="pk_PlanAcademico" 
                CellPadding="4" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"
                 OnRowCancelingEdit="dtgPlanAcademico_RowCancelingEdit" OnRowCommand="dtgPlanAcademico_RowCommand" 
                OnRowEditing="dtgPlanAcademico_RowEditing" OnRowUpdating="dtgPlanAcademico_RowUpdating" ShowHeaderWhenEmpty="true" OnRowDeleting="dtgPlanAcademico_RowDeleting">

                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderText="Semanas">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Semana") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtSemana" Text='<%# Eval("Semana") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtSemanaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Temas o prácticas planeadas">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Tema") %>' runat="server" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:TextBox ID="txtTema" Text='<%# Eval("Tema") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtTemaFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="H/T">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Ht") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtHt" Text='<%# Eval("Ht") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtHtFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="H/P">
                        <ItemTemplate>
                            <asp:Label Text='<%# Eval("Hp") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtHp" Text='<%# Eval("Hp") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtHpFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="BIBL">
                          <ItemTemplate>
                            <asp:Label Text='<%# Eval("Bibl") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtBibl" Text='<%# Eval("Bibl") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtBiblFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Actividad">
                           <ItemTemplate>
                            <asp:Label Text='<%# Eval("Actividad") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtActividad" Text='<%# Eval("Actividad") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtActividadFooter" runat="server" />
                        </FooterTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Fecha">
                           <ItemTemplate>
                            <asp:Label Text='<%# Eval("Fecha") %>' runat="server" />
                        </ItemTemplate>
                         <EditItemTemplate>
                            <asp:TextBox ID="txtFecha" Text='<%# Eval("Fecha") %>' runat="server" />
                        </EditItemTemplate>
                        <FooterTemplate>
                            <asp:TextBox ID="txtFechaFooter" runat="server" />
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
                <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
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
        </div>
    </form>
</body>
</html>
