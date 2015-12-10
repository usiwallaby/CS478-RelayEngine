using System;

namespace CS478_RelayEngine
{
    public partial class text_message_confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("text-message-page.aspx");
        }
    }
}