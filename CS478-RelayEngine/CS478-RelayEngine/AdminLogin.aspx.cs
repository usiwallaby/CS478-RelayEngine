using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS478_RelayEngine
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Looks at the Admin Login Information the User enters.
        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string AdminUsername = Login1.UserName;
            string AdminPassword = Login1.Password;

                //Compare AdminUsername to database
                //Compare AdminPassword to database

            Login1.DestinationPageUrl = "OrgMgmt.aspx";

            
        }
    }
}