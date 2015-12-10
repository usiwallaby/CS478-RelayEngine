<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SenderListManagement.aspx.cs" Inherits="RelayEngineWebsite.SenderListManagement" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align:center">
        <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" ImageAlign="AbsMiddle" />
    
        <br />
&nbsp;&nbsp;&nbsp;
    
        Sender:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="SENDER" CssClass="listCheckBox"></asp:Label>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" HorizontalAlign="Center">
            Alert Lists<br /> <br />
            <div style="text-align:center">
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="LIST_NAME" DataValueField="LIST_NAME" align="center">
                </asp:RadioButtonList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;" SelectCommand="SELECT [LIST_NAME] FROM [LIST]"></asp:SqlDataSource>
                </div>
        </asp:Panel>
    
    
        <asp:Panel ID="Panel2" runat="server" style="text-align: center">
            <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Button1_Click" />
            <br />
            <br />
            <a href="ManageSenders.aspx">Return to Manage Senders page</a>
            <br />
            <a href="OrganizationManagement.aspx">Return to Organization Management page</a>
        </asp:Panel>
        </div>
    </form>
</body>
</html>
