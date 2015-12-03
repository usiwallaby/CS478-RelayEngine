<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TextAlertRegistration.aspx.cs" Inherits="RelayEngineWebsite.TextAlertRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 381px;
            height: 118px;
        }
    </style>
    <link href="Content/DylanSite.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <img alt="" class="auto-style1" src="evansville_day_school.jpg" />
            <br />
            <br />
            Select each list for which you wish to receive alerts. You may select more than one list.<br />
            <br />
            To update your lists, just come back to this page and reregister. Your new selections will replace your old selections.<br />
            <br />
            To remove yourself from these lists, just come back to this page and enter your cell phone number and click &quot;Remove All.&quot; This will remove you from all lists.
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="textAlertListPanelClass" style="text-decoration: underline">
            SMS Text Alert Lists<br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                <asp:ListItem>School Cancellations/Delays</asp:ListItem>
                <asp:ListItem>Upper School Sports</asp:ListItem>
                <asp:ListItem>Lower School Sports</asp:ListItem>
                <asp:ListItem>Upper School General Announcements</asp:ListItem>
                <asp:ListItem>Lower School General Announcements</asp:ListItem>
            </asp:CheckBoxList>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Wrap="False">
            Cell Phone Number
            <asp:TextBox ID="TextBox1" runat="server" MaxLength="3" Width="46px"></asp:TextBox>
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="3" Width="46px"></asp:TextBox>
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="4" Width="62px"></asp:TextBox>
            <br />
            First Name&nbsp;
            <asp:TextBox ID="TextBox4" runat="server" CssClass="textBox"></asp:TextBox>
            <br />
            Last Name&nbsp;
            <asp:TextBox ID="TextBox5" runat="server" CssClass="textBox" Wrap="False"></asp:TextBox>
            <br />
            Organization Security Code
            <asp:TextBox ID="TextBox6" runat="server" MaxLength="5" Width="72px"></asp:TextBox>
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="text-align: center; height: 64px">
            <br />
            <asp:Button ID="submitButton" runat="server" Text="Submit" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Remove All" OnClick="Button2_Click" />
            <asp:Button ID="Button3" runat="server" Text="Cancel" OnClick="Button3_Click" />
            <br />
            <a href="~/SendMessage.aspx">Sender</a>
            <a href="~/AdminSignIn.aspx">Admin</a>
            <br />
        </asp:Panel>
    </form>
</body>
</html>
