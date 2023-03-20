<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="true" CodeFile="EditProfile.aspx.cs" Inherits="Client_EditProfile" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style4
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="login-tbl" >
        <tr>
            <td class="header" bgcolor="Maroon" colspan="2">
                <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Edit Details" Width="200px"></asp:Label>
            </td>
        </tr>
        <tr >
            <td colspan="2">
             <asp:Panel ID="Panel1" runat="server" Width="100%"  ScrollBars="Vertical">
                 <asp:DetailsView ID="DetailsView1" runat="server" 
    AutoGenerateRows="False" CellPadding="4" DataSourceID="SqlDataSource1" 
    ForeColor="#333333" GridLines="None" Height="172px" Width="221px" DataKeyNames="cid">
                     <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                     <CommandRowStyle BackColor="#E2DED6" Font-Bold="True" />
                     <EditRowStyle BackColor="#999999" />
                     <FieldHeaderStyle BackColor="#E9ECF1" Font-Bold="True" />
                     <Fields>
                         <asp:BoundField DataField="cid" HeaderText="cid" SortExpression="cid" 
                             ReadOnly="True" />
                         <asp:BoundField DataField="name" HeaderText="name" 
            SortExpression="name" />
                         <asp:BoundField DataField="address" HeaderText="address" 
            SortExpression="address" />
                         <asp:BoundField DataField="emailid" HeaderText="emailid" 
            SortExpression="emailid" />
                         <asp:BoundField DataField="mobile" HeaderText="mobile" 
                             SortExpression="mobile" />
                         <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                     </Fields>
                     <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                     <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                     <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                 </asp:DetailsView>
                 <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                     ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                     DeleteCommand="DELETE FROM [ClientReg] WHERE [cid] = @cid" 
                     InsertCommand="INSERT INTO [ClientReg] ([cid], [name], [address], [emailid], [mobile]) VALUES (@cid, @name, @address, @emailid, @mobile)" 
                     SelectCommand="SELECT [cid], [name], [address], [emailid], [mobile] FROM [ClientReg] WHERE ([username] = @username)" 
                     UpdateCommand="UPDATE [ClientReg] SET [name] = @name, [address] = @address, [emailid] = @emailid, [mobile] = @mobile WHERE [cid] = @cid">
                     <DeleteParameters>
                         <asp:Parameter Name="cid" Type="Int32" />
                     </DeleteParameters>
                     <InsertParameters>
                         <asp:Parameter Name="cid" Type="Int32" />
                         <asp:Parameter Name="name" Type="String" />
                         <asp:Parameter Name="address" Type="String" />
                         <asp:Parameter Name="emailid" Type="String" />
                         <asp:Parameter Name="mobile" Type="String" />
                     </InsertParameters>
                     <SelectParameters>
                         <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
                     </SelectParameters>
                     <UpdateParameters>
                         <asp:Parameter Name="name" Type="String" />
                         <asp:Parameter Name="address" Type="String" />
                         <asp:Parameter Name="emailid" Type="String" />
                         <asp:Parameter Name="mobile" Type="String" />
                         <asp:Parameter Name="cid" Type="Int32" />
                     </UpdateParameters>
                 </asp:SqlDataSource>
                </asp:Panel>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

