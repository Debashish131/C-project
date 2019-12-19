<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher Course view.aspx.cs" Inherits="HomeTry_App.Teacher_Course_view" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style1">
            <div class="auto-style1">
    <div class="auto-style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" Width="237px" />
        <br />
        <br />
    
    </div>
                <asp:Label ID="Label1" runat="server" CssClass="auto-style2" ForeColor="#006600" Text="WelCome Sir"></asp:Label>
                <br />
            </div>
            <asp:Button ID="Button1" runat="server" BackColor="#99CC00" Height="33px" OnClick="Button1_Click" Text="Show Course" Width="98px" />
            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" OnClick="Button2_Click" style="height: 26px" Text="Back" />
        </div>
        <p class="auto-style1">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Student Course View" />
        </p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HomeTryappConnectionString %>" SelectCommand="SELECT [Student_id], [Course_name], [Semister] FROM [Course_database]"></asp:SqlDataSource>
    </form>
</body>
</html>
