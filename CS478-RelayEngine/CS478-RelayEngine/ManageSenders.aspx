<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ManageSenders.aspx.cs" Inherits="RelayEngineWebsite.ManageSenders" %>

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
    <link href="~/Content/DylanSite.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Panel ID="Panel3" runat="server" CssClass="logoPanelClass">
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            &nbsp;</asp:Panel>
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server">
            Sender Management<br /> <br />
            <asp:Panel ID="Panel2" runat="server" CssClass="panel2Class">
                New/Edit<br />
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                Email Address<br />
                <asp:TextBox ID="pinTextBox" runat="server" MaxLength="5" Width="54px"></asp:TextBox>
                &nbsp;5 Digit PIN&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="generateButton" runat="server" Text="Generate" OnClick="generateButtonClick" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="saveButton" runat="server" Text="Save" OnClick="saveButtonClick" />
            </asp:Panel>
            <br />
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel4" runat="server">
            Current Senders<br />
            <br />
            <asp:Panel ID="Panel5" runat="server" CssClass="panel2Class">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvansvilleDaySchoolDatabaseConnectionString %>" SelectCommand="SELECT [SENDER_EMAIL] FROM [SENDER]"></asp:SqlDataSource>
                <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlDataSource1">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="editButton" OnClick="editButtonClick" runat="server" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="SENDER_EMAILLabel" runat="server" Text='<%# Eval("SENDER_EMAIL") %>' />
                            </td>
                            <td>
                                <asp:Button ID="deleteButton" OnClick="deleteButtonClick" runat="server" Text="Delete" />
                            </td>
                            <td>
                                <asp:Button ID="listsButton" OnClick="listButtonClick" runat="server" Text="Lists" />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                            </td>
                            <td>
                                <asp:TextBox ID="SENDER_EMAILTextBox" runat="server" Text='<%# Bind("SENDER_EMAIL") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>No data was returned.</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                            </td>
                            <td>
                                <asp:TextBox ID="SENDER_EMAILTextBox" runat="server" Text='<%# Bind("SENDER_EMAIL") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="editButton" OnClick="editButtonClick" runat="server" Text="Edit" />
                            </td>
                            <td>
                                <asp:Label ID="SENDER_EMAILLabel" runat="server" Text='<%# Eval("SENDER_EMAIL") %>' />
                            </td>
                            <td>
                                <asp:Button ID="deleteButton" OnClick="deleteButtonClick" runat="server" Text="Delete" />
                            </td>
                            <td>
                                <asp:Button ID="listsButton" OnClick="listButtonClick" runat="server" Text="Lists" />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style=""></td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Label ID="SENDER_EMAILLabel" runat="server" Text='<%# Eval("SENDER_EMAIL") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
            </asp:Panel>
        </asp:Panel>
        <asp:Panel ID="Panel6" runat="server" style="text-align: center">
            <a href="OrganizationManagement.aspx">Return to Organization Management page</a>
        </asp:Panel>
    </form>
</body>
</html>
