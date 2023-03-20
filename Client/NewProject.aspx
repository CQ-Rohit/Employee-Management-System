<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="true" CodeFile="NewProject.aspx.cs" Inherits="Client_NewProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="login-tbl" >
    <tr>
        <td class="header" bgcolor="Maroon" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="New Project" Width="200px"></asp:Label>
        </td>
    </tr>
    <tr >
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server" Width="100%"  ScrollBars="Vertical">
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Project Name</td>
        <td>
            <asp:TextBox ID="txtProject" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Description</td>
        <td>
            <asp:TextBox ID="txtDesc" runat="server" Height="62px" TextMode="MultiLine" 
                Width="233px"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Technology</td>
        <td>
            <asp:TextBox ID="txtTech" runat="server"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
            Choose File</td>
        <td>
            <asp:FileUpload ID="fuphoto" runat="server" />
        </td>
    </tr>
    <tr>
        <td style="color: #FFFFFF">
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
            <asp:Button ID="btnSubmit" runat="server" Text="Submit" 
                class="hvr-wobble-vertical btn-style" onclick="btnSubmit_Click" />
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
                <asp:Label ID="lblmsg" runat="server" Font-Bold="True" ForeColor="Yellow"></asp:Label>
        </td>
    </tr>
    <tr>
        <td>
                &nbsp;</td>
        <td>
                &nbsp;</td>
    </tr>
</table>
</asp:Content>

