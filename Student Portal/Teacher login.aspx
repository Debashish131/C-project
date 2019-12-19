<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teacher login.aspx.cs" Inherits="HomeTry_App.Teacher_login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            font-size: xx-large;
        }
        .auto-style3 {
            height: 361px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" class="auto-style3">
        <div class="auto-style1">
    <div class="auto-style1">
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" OnClick="ImageButton1_Click" Width="237px" />
        <br />
        <br />
        <br />
    
        <asp:Label ID="Label1" runat="server" BackColor="Black" CssClass="auto-style2" ForeColor="#FFFF66" Text="Student Portal As A Teacher"></asp:Label>
    
    </div>
            <asp:Panel ID="Panel1" runat="server" Height="16px">
            </asp:Panel>
            <asp:Label ID="Label2" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:Panel ID="Panel3" runat="server">
            </asp:Panel>
            <br />
            <asp:Button ID="Button3" runat="server" BackColor="#009933" ForeColor="White" OnClick="Button3_Click" Text="Login" />
            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" OnClick="Button2_Click" Text="Reset" />
        </div>
    </form>
</body>
</html>
