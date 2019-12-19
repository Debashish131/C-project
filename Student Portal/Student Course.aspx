<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Student Course.aspx.cs" Inherits="HomeTry_App.Student_Course" %>

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
            <div class="auto-style2">
                <div>
    <div>
    
        <asp:ImageButton ID="ImageButton1" runat="server" Height="85px" ImageUrl="~/image/Student portal.png" OnClick="ImageButton1_Click" Width="237px" />
    
    </div>
                    <div>
                        <p class="auto-style2">
                            <asp:Label ID="Label1" runat="server" CssClass="auto-style1" Text="Student Portal"></asp:Label>
                        </p>
                    </div>
                </div>
                <asp:Panel ID="Panel1" runat="server">
                </asp:Panel>
                <asp:Label ID="Label2" runat="server" Text="Student ID   "></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Panel ID="Panel3" runat="server">
                </asp:Panel>
            </div>
            <asp:Label ID="Label3" runat="server" Text="Semister   "></asp:Label>
            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Height="21px" Width="118px">
                <asp:ListItem>  </asp:ListItem>
                <asp:ListItem>1st</asp:ListItem>
                <asp:ListItem>2nd</asp:ListItem>
                <asp:ListItem>3rd</asp:ListItem>
                <asp:ListItem>4th</asp:ListItem>
                <asp:ListItem>5th</asp:ListItem>
                <asp:ListItem>6th</asp:ListItem>
            </asp:DropDownList>
            <asp:Panel ID="Panel4" runat="server">
            </asp:Panel>
        </div>
            <asp:Label ID="Label4" runat="server" Text="Course      "></asp:Label>
            <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True">
                <asp:ListItem></asp:ListItem>
                <asp:ListItem>.net Programming</asp:ListItem>
                <asp:ListItem>Theory of computing</asp:ListItem>
                <asp:ListItem>Software Security</asp:ListItem>
                <asp:ListItem>System analysis</asp:ListItem>
            </asp:DropDownList>
            <asp:Panel ID="Panel2" runat="server">
            </asp:Panel>
        </div>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" BackColor="#009933" ForeColor="White" />
            <asp:Button ID="Button2" runat="server" BackColor="Red" ForeColor="White" OnClick="Button2_Click" Text="Back" />
        </div>
    </form>
</body>
</html>
