using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS478_RelayEngine
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();

            SqlDataSource1.ConnectionString = "Server = tcp:evansvilledayschoolserver.database.windows.net,1433; Database = EvansvilleDaySchoolDatabase; User ID = Usiwallabies@evansvilledayschoolserver; Password = Quokka12; Encrypt = True; TrustServerCertificate = False; Connection Timeout = 30;";

            SqlDataSource1.SelectCommand = string.Format("SELECT LIST_ID FROM LIST WHERE LIST_NAME ='{0}'", (string)Session["managedlistname"]);
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string listid = Convert.ToString(dv.Table.Rows[0][0]);
            TextBox1.Text = (string)Session["managedlistname"];

            SqlDataSource1.SelectCommand = string.Format("SELECT COUNT(SUB_ID) FROM SUBSCRIPTION WHERE LIST_ID={0}", listid);
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            Label1.Text = Convert.ToString(dv.Table.Rows[0][0]);

            SqlDataSource1.SelectCommand = string.Format("SELECT USER_FNAME,USER_LNAME,USER_PHONE FROM USERS JOIN SUBSCRIPTION ON USERS.USER_ID = SUBSCRIPTION.USER_ID WHERE SUBSCRIPTION.LIST_ID = {0}",listid);
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            SqlDataSource1.SelectCommand = string.Format("SELECT LIST_ID FROM LIST WHERE LIST_NAME ='{0}'", (string)Session["managedlistname"]);
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string listid = Convert.ToString(dv.Table.Rows[0][0]);

            GridViewRow row = GridView1.Rows[e.RowIndex];
            string fname = row.Cells[1].Text;
            string lname = row.Cells[2].Text;

            SqlDataSource1.SelectCommand = string.Format("SELECT USER_ID FROM USERS WHERE USER_FNAME='{0}' AND USER_LNAME='{1}'", fname, lname);
            dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string userid = Convert.ToString(dv.Table.Rows[0][0]);

            SqlDataSource1.DeleteCommand = string.Format("DELETE FROM SUBSCRIPTION WHERE USER_ID={0} AND LIST_ID={1}", userid, listid);
            SqlDataSource1.Delete();

            Page_Load(sender, e);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlDataSource1.SelectCommand = string.Format("SELECT LIST_ID FROM LIST WHERE LIST_NAME ='{0}'", (string)Session["managedlistname"]);
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string listid = Convert.ToString(dv.Table.Rows[0][0]);
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            SqlDataSource1.UpdateCommand = string.Format("UPDATE LIST SET LIST_NAME WHERE LIST_ID={0}",listid);
            SqlDataSource1.Update();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = string.Format("SELECT LIST_ID FROM LIST WHERE LIST_NAME ='{0}'", (string)Session["managedlistname"]);
            DataView dv = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            string listid = Convert.ToString(dv.Table.Rows[0][0]);
            if (TextBox3.Text == "987")
            {
                SqlDataSource1.DeleteCommand = string.Format("DELETE FROM SUBSCRIPTION WHERE LIST_ID={0}", listid);
                SqlDataSource1.Delete();
            }

            Server.Transfer("SenderListManagement.aspx");
        }
    }
}