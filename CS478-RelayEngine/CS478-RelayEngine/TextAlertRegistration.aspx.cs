using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RelayEngineWebsite
{
    public partial class TextAlertRegistration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // give values from textboxes
            Session["areaCode"] = TextBox1.Text;
            Session["firstCell"] = TextBox2.Text;
            Session["lastCell"] = TextBox3.Text;
            Session["firstName"] = TextBox4.Text;
            Session["lastName"] = TextBox5.Text;
            Session["orgSecCode"] = TextBox6.Text;
            Response.Redirect("regConf.aspx");
        }
        public String AreaCode
        {
            get
            {
                return TextBox1.Text;
            }
        }
        public String FirstCellphone
        {
            get
            {
                return TextBox2.Text;
            }
        }
        public String LastCellphone
        {
            get
            {
                return TextBox3.Text;
            }
        }
        public String FirstName
        {
            get
            {
                return TextBox4.Text;
            }
        }
        public String LastName
        {
            get
            {
                return TextBox5.Text;
            }
        }
        public String OrgSecCode
        {
            get
            {
                return TextBox6.Text;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }
    }
}