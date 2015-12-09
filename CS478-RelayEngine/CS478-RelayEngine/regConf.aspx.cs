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
            Label6.Text = Session["lists"].ToString();
            //Label1.Text = "812";
            //Label2.Text = "Jane";
            //Label3.Text = "Doe";
            //Label4.Text = "555";
            //Label5.Text = "5555";

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("TextAlertRegistration.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            string selstring = "SELECT * FROM SUBSCRIPTION JOIN USERS ON USERS.USER_ID = SUBSCRIPTION.USER_ID JOIN LIST ON SUBSCRIPTION.LIST_ID =  LIST.LIST_ID";
            string insertstring = "INSERT INTO USERS VALUES (@fName, @lName @phone)";
            SqlDataSource db = new SqlDataSource(connstring, selstring);
            DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);
            string FirstName = (string)dv.Table.Rows[0][4];
            string LastName = (string)dv.Table.Rows[0][5];
            string Phone = (string)dv.Table.Rows[0][6];
            int userID = (int)dv.Table.Rows[0][0];
            string updatestring = String.Format("UPDATE USERS SET USER_FNAME={0}Label2.Text, USER_LNAME={1}Label3.Text, USER_PHONE={2}Label1.Text+Label4.Text+Label5.Text WHERE USER_ID={3};"), fname, lname, phone, userid;
            db.UpdateCommand = updatestring;
            db.InsertCommand = insertstring;
            db.UpdateParameters.Add("@fName", Label2.Text);
            db.UpdateParameters.Add("@lName", Label3.Text);
            db.UpdateParameters.Add("@phone", Label1.Text + Label4.Text + Label5.Text);
                   


            if (FirstName == Label2.Text && LastName == Label3.Text) 
            {
                string firstUpdateString = String.Format("UPDATE USERS SET USER_FNAME={0}Label2.Text, USER_LNAME={1}Label3.Text, USER_PHONE={2}Label1.Text+Label4.Text+Label5.Text WHERE USER_ID={3};", fname, lname, phone, userid);
                db.UpdateCommand = updatestring;
                db.Update();
            }
            else
            {
                db.InsertParameters.Add("@fName", Label2.Text);
                db.InsertParameters.Add("@lName", Label3.Text);
                db.InsertParameters.Add("@phone", Label1.Text + Label4.Text + Label5.Text);
                db.Insert();
                insertstring = "INSERT INTO SUBSCRIPTION VALUES (@lists)";
                db.InsertCommand = insertstring;
                db.InsertParameters.Add("@lists", Label6.Text);
                db.Insert();
            }





            // send info to database
            // Label1.Text+Label4.Text+Label5.Text is the cell number
            // Label2.Text is the first name
            // Label3.Text is the last name
            // Label6.Text is a string containing all the subscribed lists from previous page separated by /s
            

            Response.Redirect("TextAlertRegistration.aspx");

        }
    }
}
