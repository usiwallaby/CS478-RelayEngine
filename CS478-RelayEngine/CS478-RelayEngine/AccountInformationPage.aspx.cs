using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class AccountInformationPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            string connectionstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            string selectstring = "SELECT ADMIN_TOKENS FROM ADMINISTRATOR";

            SqlDataSource database = new SqlDataSource(connectionstring, selectstring);
            DataView dv = (DataView)database.Select(DataSourceSelectArguments.Empty);
            string tokens = (string)dv.Table.Rows[0][0];
            Label1.Text = tokens;
            Label2.Text = "https://www.notarealwebsite/CS478";


        }

        protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //ListBox1.Text = MessagesUser
        }
    }
}