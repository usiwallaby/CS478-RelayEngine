<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="text-message-page.aspx.cs" Inherits="CS478_RelayEngine.text_message_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body style="height: 385px">
    <form id="form1" runat="server">
        
    <div style="width: 960px">
    
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            <br />
    
        <asp:Label ID="Label1" runat="server" Text="User:"></asp:Label>
        &nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label3" runat="server" Text="Tokens Remaining:          "></asp:Label>
        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
        <br />
        <br />
    
    </div>
        <div style="height: 320px">
            <asp:Label ID="Label4" runat="server" Text="Lists" style="font-weight: 700; text-decoration: underline"></asp:Label>
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" OnCheckedChanged="CheckBox1_CheckedChanged" Text="School Cancellation/Delays" Visible="False" />
            <br />
            <asp:CheckBox ID="CheckBox2" runat="server" OnCheckChange="CheckBox2_CheckChanged" Text="Upper School Sports" Visible="False" />
            <br />
            <asp:CheckBox ID="CheckBox3" runat="server" OnCheckChange="CheckBox3_CheckChanged" Text="Lower School Sports" Visible="False" />
            <br />
            <asp:CheckBox ID="CheckBox4" runat="server" OnCheckChange="CheckBox4_CheckChanged" Text="Upper School Announcements" Visible="False" />
            <br />
            <asp:CheckBox ID="CheckBox5" runat="server" OnCheckChange="CheckBox5_CheckChanged" Text="Lower School Announcements" Visible="False" />
            <br />
            <br />
            <asp:Label ID="Label7" runat="server" Text="Message (160 Characters Max)"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="117px" Rows="5" TextMode="MultiLine" Width="383px" OnTextChanged="TextBox1_TextChanged" AutoPostBack="true"></asp:TextBox>
        </div>
        <asp:Label ID="Label8" runat="server" ForeColor="Red" Text="Label" Visible="False"></asp:Label>
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="text-align: left" Text="Submit" />
&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Cancel" />
    </form>
</body>
</html>
