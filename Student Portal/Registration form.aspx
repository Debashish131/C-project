<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration form.aspx.cs" Inherits="HomeTry_App.Registration_form" %>

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
    <div style="text-align: center">
    
    </div>
        <div class="auto-style1">
        </div>
        <div class="auto-style1">
            <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required Field Validator" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required Field Validator" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <div class="auto-style1">
            <asp:Label ID="Label4" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required Field Validator" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
        <p class="auto-style1">
            <asp:Label ID="Label5" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required Field Validator" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <p class="auto-style1">
            <asp:Label ID="Label6" runat="server" Text="Re-enter Password"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"  OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required Field Validator" ForeColor="Red"></asp:RequiredFieldValidator>
        </p>
        <div class="auto-style1">
            <asp:Button ID="Button1" runat="server" BackColor="#33CC33" OnClick="Button1_Click" Text="Sign up" />
            <asp:Button ID="Button2" runat="server" BackColor="#0099FF" OnClick="Button2_Click" Text="Home" />
        </div>
        </div>
    </form>
</body>
</html>
