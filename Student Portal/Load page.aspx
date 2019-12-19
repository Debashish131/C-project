<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Load page.aspx.cs" Inherits="HomeTry_App.Load_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            text-align: center;
        }
        .auto-style4 {
            font-size: x-large;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="auto-style3">
            <div class="auto-style3">
                <asp:Panel ID="Panel2" runat="server">
                    <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/Student portal.png" Width="237px" />
                </asp:Panel>
            </div>
            <div class="auto-style3">
                <asp:Label ID="Label2" runat="server" CssClass="auto-style4" Text="Log is as"></asp:Label>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
            </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Student" />
            <asp:Button ID="Button2" runat="server" Text="Teacher" OnClick="Button2_Click" />
        </div>
    </form>
</body>
</html>
