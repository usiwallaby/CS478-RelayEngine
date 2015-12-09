using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class regConf : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();

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

        private void Load_Logo()
        {
            string connectionstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\EvansvilleDaySchoolDatabase.mdf;Integrated Security=True";
            string selectstring = "SELECT ADMIN_LOGONAME FROM ADMINISTRATOR WHERE USER_ID = 0";

            SqlDataSource database = new SqlDataSource(connectionstring, selectstring);
            DataView dv = (DataView)database.Select(DataSourceSelectArguments.Empty);
            string filename = (string)dv.Table.Rows[0][0];

            if (System.IO.File.Exists(Server.MapPath("~/Content/") + filename) == true)
            {
                LogoImage.ImageUrl = "~/Content/" + filename;
            }
            else
            {
                LogoImage.ImageUrl = "~/Content/" + "evansville_day_school.jpg";

                string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Project_Database.mdf;Integrated Security=True";
                string selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
                string updatestring = "UPDATE ADMINISTRATOR SET ADMIN_LOGONAME = 'evansville_day_school.jpg' WHERE USER_ID = 0";
                SqlDataSource db = new SqlDataSource(connstring, selstring);
                db.UpdateCommand = updatestring;
                db.Update();
            }

            dv.Dispose();
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
