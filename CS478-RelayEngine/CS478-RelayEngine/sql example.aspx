<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sql example.aspx.cs" Inherits="CS478_RelayEngine.sql_example" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="USER_ID" DataSourceID="SqlDataSource1">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_TOKENSLabel" runat="server" Text='<%# Eval("ADMIN_TOKENS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_LOGONAMELabel" runat="server" Text='<%# Eval("ADMIN_LOGONAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_SECURITYCODELabel" runat="server" Text='<%# Eval("ADMIN_SECURITYCODE") %>' />
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
                        <asp:Label ID="USER_IDLabel1" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_TOKENSTextBox" runat="server" Text='<%# Bind("ADMIN_TOKENS") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_LOGONAMETextBox" runat="server" Text='<%# Bind("ADMIN_LOGONAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_SECURITYCODETextBox" runat="server" Text='<%# Bind("ADMIN_SECURITYCODE") %>' />
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
                        <asp:TextBox ID="USER_IDTextBox" runat="server" Text='<%# Bind("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_TOKENSTextBox" runat="server" Text='<%# Bind("ADMIN_TOKENS") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_LOGONAMETextBox" runat="server" Text='<%# Bind("ADMIN_LOGONAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="ADMIN_SECURITYCODETextBox" runat="server" Text='<%# Bind("ADMIN_SECURITYCODE") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_TOKENSLabel" runat="server" Text='<%# Eval("ADMIN_TOKENS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_LOGONAMELabel" runat="server" Text='<%# Eval("ADMIN_LOGONAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_SECURITYCODELabel" runat="server" Text='<%# Eval("ADMIN_SECURITYCODE") %>' />
                    </td>
                </tr>
            </ItemTemplate>
            <LayoutTemplate>
                <table runat="server">
                    <tr runat="server">
                        <td runat="server">
                            <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                <tr runat="server" style="">
                                    <th runat="server">USER_ID</th>
                                    <th runat="server">ADMIN_TOKENS</th>
                                    <th runat="server">ADMIN_LOGONAME</th>
                                    <th runat="server">ADMIN_SECURITYCODE</th>
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
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_TOKENSLabel" runat="server" Text='<%# Eval("ADMIN_TOKENS") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_LOGONAMELabel" runat="server" Text='<%# Eval("ADMIN_LOGONAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="ADMIN_SECURITYCODELabel" runat="server" Text='<%# Eval("ADMIN_SECURITYCODE") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\EvansvilleDaySchoolDatabase.mdf;Integrated Security=True" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [ADMINISTRATOR]"></asp:SqlDataSource>
    </form>
</body>
</html>
