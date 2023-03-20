<%@ Page Title="" Language="C#" MasterPageFile="~/Client/ClientMasterPage.master" AutoEventWireup="true" CodeFile="ShowProject.aspx.cs" Inherits="Client_ShowProject" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%" >
    <tr>
        <td class="header" bgcolor="Maroon" colspan="2">
            <asp:Label ID="Label3" runat="server" Font-Size="X-Large" ForeColor="White" 
                                            Text="Project List" Width="200px"></asp:Label>
        </td>
    </tr>
    <tr >
        <td colspan="2">
            <asp:Panel ID="Panel1" runat="server" Width="100%"  ScrollBars="Vertical">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    CellPadding="4" DataKeyNames="pid" DataSourceID="SqlDataGetProjectList" 
                    ForeColor="#333333" GridLines="None" Width="100%" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>
                     <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="Button1" runat="server" Text="Payment" 
                Visible='<%# checkStatus((String)Eval("status")) %>' 
                CommandName="Select"/>
            </ItemTemplate>
        </asp:TemplateField>

                        
                        <asp:BoundField DataField="pid" HeaderText="pid" ReadOnly="True" 
                            SortExpression="pid" />
                        <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
                        <asp:BoundField DataField="technology" HeaderText="technology" 
                            SortExpression="technology" />
                        <asp:BoundField DataField="status" HeaderText="status" 
                            SortExpression="status" />
                        <asp:BoundField DataField="startdate" HeaderText="startdate" 
                            SortExpression="startdate" />
                        <asp:BoundField DataField="enddate" HeaderText="enddate" 
                            SortExpression="enddate" />
                        <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataGetProjectList" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:EMPConnectionString %>" 
                    SelectCommand="SELECT [pid], [pname], [technology], [status], [startdate], [enddate], [cost] FROM [ProjectReg] WHERE (([status] = @status) OR ([status] = @status2) OR ([status] = @status3))">
                    <SelectParameters>
                        <asp:Parameter DefaultValue="Pending" Name="status" Type="String" />
                        <asp:Parameter DefaultValue="Active" Name="status2" Type="String" />
                        <asp:Parameter DefaultValue="PaymentPending" Name="status3" Type="String" />
                        
                    </SelectParameters>
                </asp:SqlDataSource>
            </asp:Panel>
        </td>
    </tr>
    <tr>
        <td colspan="2">
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

