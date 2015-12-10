using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS478_RelayEngine
{
    public partial class Organization_Security_Code_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();

            string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            string selstring = "SELECT ADMIN_SECURITYCODE FROM ADMINISTRATOR WHERE USER_ID = 0";
            SqlDataSource db = new SqlDataSource(connstring, selstring);
            DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);

            string code;
            try
            {
                code = (string)dv.Table.Rows[0][0];
            }
            catch (Exception)
            {
                code = "No Code Set";
            }


            Label2.Text = "Current Code: " + code;
            
            

            dv.Dispose();
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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("OrganizationManagement.aspx");
        }

        protected void SaveChangesButton_Click(object sender, EventArgs e)
        {
            string securitycode;
            string connstring;
            string selstring;
            string updatestring;
            SqlDataSource db;

            if (RadioButtonList.SelectedValue == "Activated")
            {
                
                securitycode = TextBox1.Text;

                connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
                updatestring = string.Format("UPDATE ADMINISTRATOR SET ADMIN_SECURITYCODE = '{0}' WHERE USER_ID = 0", securitycode);
                db = new SqlDataSource(connstring, selstring);
                db.UpdateCommand = updatestring;
                db.Update();
            }
            else if (RadioButtonList.SelectedValue == "Deactivated")
            {
                securitycode = "No Code Set";

                connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
                updatestring = string.Format("UPDATE ADMINISTRATOR SET ADMIN_SECURITYCODE = '{0}' WHERE USER_ID = 0", securitycode);
                db = new SqlDataSource(connstring, selstring);
                db.UpdateCommand = updatestring;
                db.Update();
            }
            else
            {
            }

            Server.Transfer("OrganizationManagement.aspx");
        }
    }
}