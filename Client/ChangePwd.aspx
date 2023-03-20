<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="true" CodeFile="ChangePwd.aspx.cs" Inherits="Client_ChangePwd" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:Label ID="Label2" runat="server" Font-Names="Pristina" Font-Size="X-Large" 
        ForeColor="#006699" Text="Change Password"></asp:Label>
    <hr color="orange" />
    <table style="width: 100%;">
        <tr>
            <td>
                Old Password</td>
            <td>
                <asp:TextBox ID="txtOld" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtOld" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                New Password</td>
            <td>
                <asp:TextBox ID="txtNew" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtNew" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                Confirm</td>
            <td>
                <asp:TextBox ID="txtConfirm" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtConfirm" ErrorMessage="RequiredFieldValidator">*</asp:RequiredFieldValidator>
                &nbsp;<asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="txtNew" ControlToValidate="txtConfirm" 
                    ErrorMessage="CompareValidator">Not Matching</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                <asp:Button ID="btnChange" runat="server" onclick="btnChange_Click" 
                    Text="Change Password" Width="126px" />
            </td>
        </tr>
    </table>
    <hr color="orange" />
    <asp:Label ID="lblmsg" runat="server" Font-Names="Courier New" ForeColor="Red"></asp:Label>
    <asp:SqlDataSource ID="sqlpwd" runat="server" 
        ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
        DeleteCommand="DELETE FROM [ClientReg] WHERE [empid] = @empid" 
        InsertCommand="INSERT INTO [ClientReg] ([empid], [username], [pwd]) VALUES (@empid, @username, @pwd)" 
        SelectCommand="SELECT [empid], [username], [pwd] FROM [ClientReg]" 
        UpdateCommand="UPDATE [ClientReg] SET [pwd] = @pwd WHERE [username] = @username">
        <DeleteParameters>
            <asp:Parameter Name="empid" Type="Int32" />
        </DeleteParameters>
        <UpdateParameters>
            <asp:SessionParameter Name="username" SessionField="userid" Type="String" />
            <asp:ControlParameter ControlID="txtNew" Name="pwd" PropertyName="Text" 
                Type="String" />
        </UpdateParameters>
        <InsertParameters>
            <asp:Parameter Name="empid" Type="Int32" />
            <asp:Parameter Name="username" Type="String" />
            <asp:Parameter Name="pwd" Type="String" />
        </InsertParameters>
    </asp:SqlDataSource>
</asp:Content>

