using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS478_RelayEngine
{
    public partial class regConf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["areaCode"].ToString();
            Label4.Text = Session["firstCell"].ToString();
            Label5.Text = Session["lastCell"].ToString();
            Label2.Text = Session["firstName"].ToString();
            Label3.Text = Session["lastName"].ToString();

            //if (Page.PreviousPage != null)
            //{
            //    TextBox SourceTextBox =
            //        (TextBox)Page.PreviousPage.FindControl("cellphone");
            //    if (SourceTextBox != null)
            //    {
            //        Label1.Text = SourceTextBox.Text;
            //    }
            //}
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TextAlertRegistration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // send info to database from label1, label2 & label3
            Response.Redirect("TextAlertRegistration.aspx");
        }
    }
}
