<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminLogin.aspx.cs" Inherits="CS478_RelayEngine.AdminLogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server" HorizontalAlign="Center">
            <asp:Label ID="Label1" runat="server" Text="Log into the admin account."></asp:Label>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" HorizontalAlign="Center">
            <br />
            Username:
            <asp:TextBox ID="usernametextbox" runat="server"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" HorizontalAlign="Center">
            Password:
            <asp:TextBox ID="passwordtextbox" runat="server"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" HorizontalAlign="Center">
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            &nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
        </asp:Panel>
    </form>
</body>
</html>
