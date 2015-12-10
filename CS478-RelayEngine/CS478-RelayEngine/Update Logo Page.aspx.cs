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

        protected void UploadNewLogoButton_Click(object sender, EventArgs e)
        {
            string filename = FileUpload1.FileName;
            string extension = "";

            if (FileUpload1.HasFile == true)
            {
                extension = filename.Substring(filename.Length - 4);
            }

            if (extension == ".jpg" || extension == ".png" || extension == ".gif" & FileUpload1.HasFile == true)
            {
                string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                string selstring = "SELECT * FROM ADMINISTRATOR WHERE USER_ID = 0";
                string updatestring = string.Format("UPDATE ADMINISTRATOR SET ADMIN_LOGONAME = '{0}' WHERE USER_ID = 0", filename);
                SqlDataSource db = new SqlDataSource(connstring, selstring);
                db.UpdateCommand = updatestring;
                db.Update();

                string rootpath = Server.MapPath("~/");

                FileUpload1.PostedFile.SaveAs(rootpath + "/Content/" + filename);

                LogoImage.ImageUrl = ("~/Content/" + filename);

                Server.Transfer("OrganizationManagement.aspx");
            }
            else if (FileUpload1.HasFile == false)
            {
                Label1.Text = "No file chosen.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                Label1.Text = "ERROR: IMAGE MUST BE .JPG, .PNG, OR .GIF.";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}