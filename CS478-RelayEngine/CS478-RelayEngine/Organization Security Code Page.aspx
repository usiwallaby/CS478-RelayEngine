<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Organization Security Code Page.aspx.cs" Inherits="CS478_RelayEngine.Organization_Security_Code_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            &nbsp;<br />
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="textAlertListPanelClass" style="text-align: center">
            <br />
            Here you can decide whether or not people will need to enter a security code in order to sign up for alerts.<br />
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Text="Current Code: "></asp:Label>
            <br />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Wrap="False" style ="text-align:center">
            <br />
            <asp:RadioButtonList ID="RadioButtonList" runat="server" Font-Size="Larger" align="center">
                <asp:ListItem Value="Activated">Activate security code. Users will need a code to register for alerts.</asp:ListItem>
                <asp:ListItem Value="Deactivated">Deactivate security code. Users will be able to freely register for alerts.</asp:ListItem>
            </asp:RadioButtonList>
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel5" runat="server" style="text-align: center; height: 64px">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Organization Security Code:"></asp:Label>
            &nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="185px" AutoPostBack="True"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="text-align: center; " Height="64px">
            <br />
            <asp:Button ID="SaveChangesButton" runat="server" Text="Save Changes" Width="100px" OnClick="SaveChangesButton_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" Width="100px" OnClick="CancelButton_Click" />
        </asp:Panel>
    </form>
</body>
</html>
