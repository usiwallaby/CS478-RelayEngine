<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminSignIn.aspx.cs" Inherits="CS478_RelayEngine.adminSignIn" %>

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
<body style="height: 127px">
    <form id="form1" runat="server">
    <div class="auto-style1">
        <asp:Image ID="Image1" runat="server" Height="123px" Width="430px" />
        <br />
        <br />
        <strong>Administrator Log In<br />
        </strong></div>
        
        <div style="text-align: center;">
            <div style="width: 179px; margin-left: auto; margin-right: auto;">
            <asp:Login ID="Login1" runat="server" style="margin-right: 2px" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" DisplayRememberMe="False" OnAuthenticate="Login1_Authenticate" RememberMeText="">
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
            </asp:Login>
            </div>
        </div>

        
    </form>
</body>
</html>
