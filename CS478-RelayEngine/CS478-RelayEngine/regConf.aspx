<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="regConf.aspx.cs" Inherits="CS478_RelayEngine.regConf" %>
<%@ PreviousPageType VirtualPath="~/TextAlertRegistration.aspx" %>
<!DOCTYPE html>

<script runat="server">

    void PageLoad(Object sender, EventArgs e)
    {
       
            
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 381px;
            height: 118px;
        }
        .auto-style2 {
            width: 100%;
        }
        .auto-style3 {
            width: 225px;
        }
        .auto-style4 {}
        .auto-style5 {
            width: 248px;
        }
        .auto-style6 {
            width: 232px;
        }
        .auto-style7 {
            width: 326px;
        }
    </style>
      <!--<link href="Content/DylanSite.css" rel="stylesheet" type="text/css" /> -->
</head>
<body>
        <form id="form1" runat="server">
            <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            &nbsp;<br />
        </asp:Panel>
    
    </div>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3">Cellphone Number</td>
                    <td class="auto-style7">(<asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                        )
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        -<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                    </td>
                    <td rowspan="4">Please note: you cannot respond to alert messages. There is no one to receive replies to text message alerts.</td>
                </tr>
                <tr>
                    <td class="auto-style3">First Name</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Last Name</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">Alerts Subscribed</td>
                    <td class="auto-style7">
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                    </td>
                </tr>
            </table>
        <table class="auto-style1">
            </table>
            <asp:Panel ID="Panel2" runat="server" style="text-align: center">
            <p>We've sent a confirmation code to your cellphone. To complete registration, enter this code and hit submit. You must complete this step to be registered.</p>
            </asp:Panel>
            <table class="auto-style2">
                <tr>
                    <td class="auto-style5">Confirmation Code</td>
                    <td class="auto-style6">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4" colspan="2">I change my mind!</td>
                    <td class="auto-style4">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
                    </td>
                </tr>
            </table>
    </form>
</body>
</html>
