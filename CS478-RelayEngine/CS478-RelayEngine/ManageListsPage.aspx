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
        .auto-style3 {
            width: 381px;
            height: 118px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="text-align: center">
    
        <asp:Image ID="Image1" runat="server" ImageUrl="evansville_day_school.jpg" class="auto-style3"/>
        <br />
        <br />
        Alert Lists</div>
        <p class="auto-style1">
&nbsp;&nbsp; &nbsp;New List&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" Width="478px"></asp:TextBox>
&nbsp;
            <asp:Button ID="Button1" runat="server" Text="Save" Width="75px" />
        </p>
        <p style="text-align: left">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Current Lists&nbsp;</p>
        <p style="text-align: center">
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2">
                <Columns>
                    <asp:BoundField DataField="LIST_NAME" HeaderText="LIST_NAME" SortExpression="LIST_NAME" />
                    <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Manage" ShowHeader="True" Text="Delete" />
                </Columns>
            </asp:GridView>
        </p>
        <p style="text-align: left">
            <asp:Button ID="Button2" runat="server" Text="Delete" Width="67px" CssClass="auto-style2" />
        </p>
        <p style="text-align: center">
            <asp:HyperLink ID="Return" runat="server" NavigateUrl="~/OrgMgmt.aspx">Return to Organization Management Page</asp:HyperLink>
        </p>
    </form>
</body>
</html>
