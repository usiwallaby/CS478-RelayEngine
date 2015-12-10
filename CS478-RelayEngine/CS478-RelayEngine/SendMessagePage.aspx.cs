using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class SendMessagePage : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();
        }

        private void Load_Logo()
        {
            string connectionstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
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

                string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                string selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
                string updatestring = "UPDATE ADMINISTRATOR SET ADMIN_LOGONAME = 'evansville_day_school.jpg' WHERE USER_ID = 0";
                SqlDataSource db = new SqlDataSource(connstring, selstring);
                db.UpdateCommand = updatestring;
                db.Update();
            }

            dv.Dispose();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            // verify login credentials
            string EmailAddress = TextBox1.Text;
            string Password = TextBox2.Text;


            string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            string selstring = "SELECT * FROM SENDER";
            SqlDataSource db = new SqlDataSource(connstring, selstring);
            DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);
            int count = dv.Table.Rows.Count;
            string email = (string)dv.Table.Rows[0][1];
            string password = (string)dv.Table.Rows[0][2];
            int i = 0;
            bool status = false;
            while (i < count)
            {
                email = (string)dv.Table.Rows[i][1];
                password = (string)dv.Table.Rows[i][2];
                if (EmailAddress == email && Password == password)
                {
                    Session["username"] = EmailAddress;
                    Response.Redirect("text-message-page.aspx");
                    status = true;
                }
                else status = false;
                i++;
            }
            if (status == false)
            {
                Response.Redirect("SendMessagePage.aspx");
            }

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
