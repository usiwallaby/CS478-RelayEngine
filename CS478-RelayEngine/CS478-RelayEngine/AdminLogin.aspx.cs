using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Looks at the Admin Login Information the User enters.
        protected void Button1_Click(object sender, EventArgs e)
        {
           // string AdminUsername = TextBox1.Text;
           // string AdminPassword = TextBox2.Text;


            //string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            //string selstring = "SELECT * FROM ADMINISTRATOR";
            //SqlDataSource db = new SqlDataSource(connstring, selstring);
            //DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);
            //string admin = (string)dv.Table.Rows[0][4];
            //string password = (string)dv.Table.Rows[0][5];

            ////if (admin == AdminUsername && password == AdminPassword)
            ////{
            ////    Session["username"] = AdminUsername;

            ////    Response.Redirect("OrgMgmt.aspx");
            ////}

            //else
            //{
            //    Response.Redirect("AdminLogin.aspx");
            //}
        }
    }
}
