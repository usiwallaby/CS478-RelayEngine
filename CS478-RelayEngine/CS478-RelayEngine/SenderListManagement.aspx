<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SenderListManagement.aspx.cs" Inherits="RelayEngineWebsite.SenderListManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="~/Content/DylanSite.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <br />
&nbsp;&nbsp;&nbsp;
    
        Sender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="SENDER" CssClass="listCheckBox"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" CssClass="alertListsPanelClass">
            Alert Lists<br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource1" CssClass="listCheckBox" DataTextField="LIST_NAME" DataValueField="LIST_NAME" Width="628px">
            </asp:CheckBoxList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvansvilleDaySchoolDatabaseConnectionString %>" SelectCommand="SELECT [LIST_NAME] FROM [LIST]"></asp:SqlDataSource>
            <br />
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Text="Update" />
            <br />
            <a href="ManageSenders.aspx">Return to Manage Senders page</a>
            <br />
            <a href="OrganizationManagement.aspx">Return to Organization Management page</a>
        </asp:Panel>
    </form>
</body>
</html>
