<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AccountInformationPage.aspx.cs" Inherits="CS478_RelayEngine.AccountInformationPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
        .auto-style3 {
            width: 381px;
            height: 118px;
        }
        .auto-style4 {
            width: 100%;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" class="auto-style3" ImageUrl="evansville_day_school.jpg" />
        <br />
        <br />
        Custom URL:&nbsp; <asp:Label ID="Label2" runat="server" Text="https://www.notarealwebsite/CS478"></asp:Label>
        &nbsp;&nbsp;&nbsp;
    
    </div>
        <p>
            &nbsp;</p>
        <p class="auto-style2">
&nbsp;Tokens:&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="Label1" runat="server" Text="tokens"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AddTokens.aspx">Buy More</asp:HyperLink>
        </p>
        <p style="text-align: left">
            &nbsp;</p>
        <p class="auto-style2">
&nbsp;Rec&nbsp;Recent Messages</p>
        <table class="auto-style4">
            <tr>
                <td><b>DATE</b></td>
                <td><b>TIME</b></td>
                <td><b>LIST</b></td>
                <td><b>SENDER</b></td>
                <td><b>RECIPIENTS</b></td>
                <td><b>MSG</b></td>
            </tr>
            <tr>
                <td>11/2/15</td>
                <td>8:00am</td>
                <td>Upper School Sports</td>
                <td><a href="mailto:coach@email.edu">coach@email.edu</a></td>
                <td>25</td>
                <td>MSG</td>
            </tr>
            <tr>
                <td>11/5/15</td>
                <td>4:32pm</td>
                <td>Lower School Sports</td>
                <td><a href="mailto:coach@email.edu">coach@email.edu</a></td>
                <td>30</td>
                <td>MSG</td>
            </tr>
            <tr>
                <td>11/12/15</td>
                <td>10:00am</td>
                <td>Upper School Announcements</td>
                <td><a href="mailto:admin@email.edu">admin@email.edu</a></td>
                <td>50</td>
                <td>MSG</td>
            </tr>
        </table>
        <p>
            <asp:HyperLink ID="Return" runat="server" NavigateUrl="~/OrgMgmt.aspx">Return to Organization Management Page</asp:HyperLink>
        </p>
    </form>
</body>
</html>
