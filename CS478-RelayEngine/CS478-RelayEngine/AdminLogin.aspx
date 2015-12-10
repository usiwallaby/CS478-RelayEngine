 Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CS478_RelayEngine.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            text-align: center;
        }
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Admin Sign In</div>
        <div class="auto-style1">
&nbsp;&nbsp; Username:
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style2" Width="169px"></asp:TextBox>
            &nbsp;&nbsp;<br />
            Password:&nbsp; <asp:TextBox ID="TextBox2" runat="server" Width="169px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Log In" />
        </div>
    </form>
</body>
</html>
