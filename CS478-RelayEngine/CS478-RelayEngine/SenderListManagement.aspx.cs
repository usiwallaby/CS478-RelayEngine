using System;

namespace RelayEngineWebsite
{
    public partial class SenderListManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = (String)Session["email"];
        }
    }
}