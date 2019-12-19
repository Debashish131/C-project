<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login Form Student.aspx.cs" Inherits="HomeTry_App.Login_Form" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 209px;
        }
        .auto-style1 {
            font-size: x-large;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" Width="237px" />
    
        <asp:Panel ID="Panel1" runat="server" Height="16px">
            <asp:Label ID="Label3" runat="server" Text="Log in As Student" BackColor="Yellow" CssClass="auto-style1" ForeColor="Black"></asp:Label>
            <br />
            <br />
        </asp:Panel>
        </div>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="User Name  "></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Password    "></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
        </p>
        <p>
        <asp:Button ID="Button1" runat="server" Text="Log in" BackColor="#009900" ForeColor="White" OnClick="Button1_Click1" />
        <asp:Button ID="Button2" runat="server" Text="Reset" BackColor="Red" ForeColor="White" OnClick="Button2_Click" style="margin-top: 48px" />
            <asp:Button ID="Button3" runat="server" BackColor="#0066FF" ForeColor="White" OnClick="Button3_Click" Text="Sign up" />
            </p>
    </form>
</body>
</html>
