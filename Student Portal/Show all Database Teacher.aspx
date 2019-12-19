<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Show all Database Teacher.aspx.cs" Inherits="HomeTry_App.Show_Database_Teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="auto-style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" Width="237px" />
    
    </div>
        <div>
            <div class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="Student_id" HeaderText="Student_id" SortExpression="Student_id" />
                        <asp:BoundField DataField="Course_name" HeaderText="Course_name" SortExpression="Course_name" />
                        <asp:BoundField DataField="Semister" HeaderText="Semister" SortExpression="Semister" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
                <br />
                <br />
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:HomeTryappConnectionString2 %>" SelectCommand="SELECT [Course_name], [Semister], [Student_id] FROM [Course_database] WHERE ([Student_id] = @Student_id)">
                    <SelectParameters>
                        <asp:Parameter Name="Student_id" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeTryappConnectionString2 %>" SelectCommand="SELECT [Student_id], [Course_name], [Semister] FROM [Course_database] ORDER BY [Student_id], [Semister], [Course_name]" OnSelecting="SqlDataSource1_Selecting"></asp:SqlDataSource>
            </div>
        </div>
    </form>
</body>
</html>
