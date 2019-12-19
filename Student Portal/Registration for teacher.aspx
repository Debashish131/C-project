<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration for teacher.aspx.cs" Inherits="HomeTry_App.Registration_for_teacher" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
        .auto-style2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style2">
            <div class="auto-style2">
                <div class="auto-style2">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" Width="237px" />
    <div>
    
    </div>
                    <asp:Label ID="Label1" runat="server" BackColor="#0099CC" CssClass="auto-style1" ForeColor="White" Text="Registration For Teacher"></asp:Label>
                </div>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel2" runat="server">
                </asp:Panel>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel3" runat="server">
                </asp:Panel>
                <br />
                <asp:Label ID="Label4" runat="server" Text="User name"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel4" runat="server">
                </asp:Panel>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel5" runat="server">
                </asp:Panel>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Sign up" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Home" />
        </div>
    </form>
</body>
</html>
