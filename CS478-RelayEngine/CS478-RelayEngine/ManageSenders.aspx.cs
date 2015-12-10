using System;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RelayEngineWebsite
{
    public partial class ManageSenders : System.Web.UI.Page
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void generateButtonClick(object sender, EventArgs e)
        {
            Random r = new Random();

            String random_pin = "";

            for(int i = 0; i < 5; i++)
                random_pin += r.Next(0, 9);

            pinTextBox.Text = random_pin;
        }

        protected void saveButtonClick(object sender, EventArgs e)
        {
            String email = emailTextBox.Text;
            String id = pinTextBox.Text;
            String insertCommand = "INSERT INTO SENDER (SENDER_ID, SENDER_EMAIL) VALUES ('" + id + "', '" + email + "')";

            SqlDataSource1.InsertCommand = insertCommand;

            SqlDataSource1.Insert();
        }

        protected void editButtonClick(object sender, EventArgs e)
        {
            var clickedButton = (Button)sender;
            var item = (ListViewItem)clickedButton.NamingContainer;
            var email = (Label)item.FindControl("SENDER_EMAILLabel");

            emailTextBox.Text = email.Text;
        }

        protected void deleteButtonClick(object sender, EventArgs e)
        {
            var clickedButton = (Button)sender;
            var item = (ListViewItem)clickedButton.NamingContainer;
            var email = (Label)item.FindControl("SENDER_EMAILLabel");

            String deleteCommand = "DELETE FROM AUTHORIZATIONS WHERE SENDER_ID = (SELECT SENDER_ID FROM SENDER WHERE SENDER_EMAIL = '" + email.Text + "'); DELETE FROM SENDER WHERE SENDER_EMAIL = '" + email.Text + "'";

            SqlDataSource1.DeleteCommand = deleteCommand;

            SqlDataSource1.Delete();
        }

        protected void listButtonClick(object sender, EventArgs e)
        {
            var clickedButton = (Button)sender;
            var item = (ListViewItem)clickedButton.NamingContainer;
            var email = (Label)item.FindControl("SENDER_EMAILLabel");

            Session["email"] = email.Text;

            Response.Redirect("SenderListManagement.aspx");
        }
    }
}