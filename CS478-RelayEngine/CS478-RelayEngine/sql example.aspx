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
        <asp:ListView ID="ListView1" runat="server" DataKeyNames="USER_ID" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
            <AlternatingItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_FNAMELabel" runat="server" Text='<%# Eval("USER_FNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_LNAMELabel" runat="server" Text='<%# Eval("USER_LNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_PHONELabel" runat="server" Text='<%# Eval("USER_PHONE") %>' />
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
                        <asp:TextBox ID="USER_FNAMETextBox" runat="server" Text='<%# Bind("USER_FNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="USER_LNAMETextBox" runat="server" Text='<%# Bind("USER_LNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="USER_PHONETextBox" runat="server" Text='<%# Bind("USER_PHONE") %>' />
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
                        <asp:TextBox ID="USER_FNAMETextBox" runat="server" Text='<%# Bind("USER_FNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="USER_LNAMETextBox" runat="server" Text='<%# Bind("USER_LNAME") %>' />
                    </td>
                    <td>
                        <asp:TextBox ID="USER_PHONETextBox" runat="server" Text='<%# Bind("USER_PHONE") %>' />
                    </td>
                </tr>
            </InsertItemTemplate>
            <ItemTemplate>
                <tr style="">
                    <td>
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_FNAMELabel" runat="server" Text='<%# Eval("USER_FNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_LNAMELabel" runat="server" Text='<%# Eval("USER_LNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_PHONELabel" runat="server" Text='<%# Eval("USER_PHONE") %>' />
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
                                    <th runat="server">USER_ID</th>
                                    <th runat="server">USER_FNAME</th>
                                    <th runat="server">USER_LNAME</th>
                                    <th runat="server">USER_PHONE</th>
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
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                        <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                        <asp:Label ID="USER_IDLabel" runat="server" Text='<%# Eval("USER_ID") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_FNAMELabel" runat="server" Text='<%# Eval("USER_FNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_LNAMELabel" runat="server" Text='<%# Eval("USER_LNAME") %>' />
                    </td>
                    <td>
                        <asp:Label ID="USER_PHONELabel" runat="server" Text='<%# Eval("USER_PHONE") %>' />
                    </td>
                </tr>
            </SelectedItemTemplate>
        </asp:ListView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [USERS] WHERE [USER_ID] = @original_USER_ID AND [USER_FNAME] = @original_USER_FNAME AND [USER_LNAME] = @original_USER_LNAME AND [USER_PHONE] = @original_USER_PHONE" InsertCommand="INSERT INTO [USERS] ([USER_ID], [USER_FNAME], [USER_LNAME], [USER_PHONE]) VALUES (@USER_ID, @USER_FNAME, @USER_LNAME, @USER_PHONE)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [USER_ID], [USER_FNAME], [USER_LNAME], [USER_PHONE] FROM [USERS]" UpdateCommand="UPDATE [USERS] SET [USER_FNAME] = @USER_FNAME, [USER_LNAME] = @USER_LNAME, [USER_PHONE] = @USER_PHONE WHERE [USER_ID] = @original_USER_ID AND [USER_FNAME] = @original_USER_FNAME AND [USER_LNAME] = @original_USER_LNAME AND [USER_PHONE] = @original_USER_PHONE">
            <DeleteParameters>
                <asp:Parameter Name="original_USER_ID" Type="Int32" />
                <asp:Parameter Name="original_USER_FNAME" Type="String" />
                <asp:Parameter Name="original_USER_LNAME" Type="String" />
                <asp:Parameter Name="original_USER_PHONE" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="USER_ID" Type="Int32" />
                <asp:Parameter Name="USER_FNAME" Type="String" />
                <asp:Parameter Name="USER_LNAME" Type="String" />
                <asp:Parameter Name="USER_PHONE" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="USER_FNAME" Type="String" />
                <asp:Parameter Name="USER_LNAME" Type="String" />
                <asp:Parameter Name="USER_PHONE" Type="String" />
                <asp:Parameter Name="original_USER_ID" Type="Int32" />
                <asp:Parameter Name="original_USER_FNAME" Type="String" />
                <asp:Parameter Name="original_USER_LNAME" Type="String" />
                <asp:Parameter Name="original_USER_PHONE" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
