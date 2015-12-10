\<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update Logo Page.aspx.cs" Inherits="CS478_RelayEngine.Update_Logo_Page" %>

<!DOCTYPE html><html xmlns="http://www.w3.org/1999/xhtml"><head runat="server"><title></title></head><body><form id="form1" runat="server">
    <div>
    
    </div>
    <div>
    
        <asp:Panel ID="Panel1" runat="server" style="text-align: center">
            <asp:Image ID="LogoImage" runat="server" ImageUrl="~/Content/evansville_day_school.jpg" />
            &nbsp;<br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Upload a new photo to use as the website logo above."></asp:Label>
            <br />
            <br />
        </asp:Panel>
    
    </div>
        <asp:Panel ID="Panel2" runat="server" CssClass="textAlertListPanelClass" style="text-align: center">
            &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="378px" accept="image/*"/>
        </asp:Panel>
        <asp:Panel ID="Panel3" runat="server" Wrap="False" style ="text-align:center">
            <br />
            <asp:Button ID="UploadNewLogoButton" runat="server" Text="Upload New Logo" OnClick="UploadNewLogoButton_Click" />
            <br />
        </asp:Panel>
        <asp:Panel ID="Panel4" runat="server" style="text-align: center; height: 64px">
            <br />
            <asp:Button ID="CancelButton" runat="server" Text="Cancel" OnClick="CancelButton_Click" />
        </asp:Panel>
    </form>
</body>
</html>
