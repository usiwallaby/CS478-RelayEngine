<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddTokens.aspx.cs" Inherits="CS478_RelayEngine.AddTokens" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 444px;
        }
        .auto-style3 {
            text-align: left;
        }
        .auto-style4 {
            font-size: medium;
        }
        .auto-style5 {
            margin-left: 0px;
        }
        .auto-style6 {
            text-align: left;
            width: 86px;
        }
        .auto-style7 {
            width: 381px;
            height: 118px;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    
        <asp:Image ID="Image1" runat="server" class="auto-style7" ImageUrl="evansville_day_school.jpg" />
        <br />
        <br />
        Tokens:&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" Text="tokens"></asp:Label>
        <br />
        <br />
        Choose Token Amount<br />
        <br />
        <table align="left" class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;</td>
                <td class="auto-style6">
                    <asp:CheckBoxList ID="CheckBoxList3" runat="server" CssClass="auto-style5" Height="267px" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged" Width="109px">
                        <asp:ListItem>100</asp:ListItem>
                        <asp:ListItem>250</asp:ListItem>
                        <asp:ListItem>500</asp:ListItem>
                        <asp:ListItem>1,000</asp:ListItem>
                        <asp:ListItem>2,000</asp:ListItem>
                        <asp:ListItem>5,000</asp:ListItem>
                        <asp:ListItem>10,000</asp:ListItem>
                    </asp:CheckBoxList>
                </td>
                <td class="auto-style3"><span class="auto-style4">$10.00 ($.10 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$20.00 ($.08 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$35.00 ($.07 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$60.00 ($.06 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$110.00($.055 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$250.00 ($.05 each)</span><br class="auto-style4" />
                    <br class="auto-style4" />
                    <span class="auto-style4">$450.00 ($.045 each</span></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            &nbsp;</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Purchase" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" Width="83px" />
        </p>
    </form>
</body>
</html>
