<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageListsPage.aspx.cs" Inherits="CS478_RelayEngine.ManageListsPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            text-align: center;
        }
        .auto-style2 {
            margin-left: 674px;
        }
        </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
        <br />
        <br />
        Alert Lists</div>
        <p class="auto-style1">
&nbsp;&nbsp; &nbsp;New List&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="478px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" Width="75px" />
        </p>
        <p style="text-align: center">
            Current Lists</p>
        <p style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" align="center">
                <Columns>
                    <asp:BoundField DataField="LIST_NAME" HeaderText="LIST_NAME" SortExpression="LIST_NAME" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvansvilleDaySchoolDatabaseConnectionString %>" SelectCommand="SELECT [LIST_NAME] FROM [LIST]"></asp:SqlDataSource>
        </p>
        <p style="text-align: left">
            <asp:Button ID="Button2" runat="server" Text="Delete" Width="67px" CssClass="auto-style2" align="center"/>
        </p>
        <p style="text-align: center">
            <asp:HyperLink ID="Return" runat="server" NavigateUrl="~/OrgMgmt.aspx">Return to Organization Management Page</asp:HyperLink>
        </p>
    </form>
</body>
</html>
