using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class Update_Logo_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();
        }

        private void Load_Logo()
        {
            string connectionstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Project_Database.mdf;Integrated Security=True";
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

        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Server.Transfer("Organization Management Page.aspx");
        }

        protected void UploadNewLogoButton_Click(object sender, EventArgs e)
        {
            string filename = FileUpload1.FileName;

            string connstring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\Project_Database.mdf;Integrated Security=True";
            string selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
            string updatestring = string.Format("UPDATE ADMINISTRATOR SET ADMIN_LOGONAME = '{0}' WHERE USER_ID = 0", filename);
            SqlDataSource db = new SqlDataSource(connstring, selstring);
            db.UpdateCommand = updatestring;
            db.Update();

            string rootpath = Server.MapPath("~/");
            FileUpload1.PostedFile.SaveAs(rootpath + "/Content/" + filename);
            LogoImage.ImageUrl = ("~/Content/" + filename);

        }
    }
}