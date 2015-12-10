using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace CS478_RelayEngine
{
    public partial class AddTokens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Load_Logo();
            //string loggedin = Session["username"].ToString();
            //Get usernames tokens from database = label1

            string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
            string selstring = "SELECT * FROM ADMINISTRATOR";
            SqlDataSource db = new SqlDataSource(connstring, selstring);
            DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);
            int tokens = (int)dv.Table.Rows[0][1];
            Label1.Text = Convert.ToString(tokens);
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

        //Buying more Tokens
        protected void Button1_Click(object sender, EventArgs e)
        {

            int temp1 = 0, temp2 = 0, FinalTokenCount = 0;

            //Finds which checkboxes are chosen
            foreach (ListItem item in CheckBoxList3.Items)
            {
                if (item.Selected)
                {
                    if (item.Value == "100")
                    {
                        temp1 = 100;
                    }

                    else if (item.Value == "250")
                    {
                        temp1 = 250;
                    }

                    else if (item.Value == "500")
                    {
                        temp1 = 500;
                    }

                    else if (item.Value == "1,000")
                    {
                        temp1 = 1000;
                    }

                    else if (item.Value == "2,000")
                    {
                        temp1 = 2000;
                    }

                    else if (item.Value == "5,000")
                    {
                        temp1 = 5000;
                    }

                    else if (item.Value == "10,000")
                    {
                        temp1 = 10000;

                    }

                    else { }


                    //Adds all the checkboxes together
                    FinalTokenCount = temp1 + temp2;
                    temp2 = temp1 + temp2;
                    temp1 = 0;

                    string connstring = "Server=tcp:evansvilledayschoolserver.database.windows.net,1433;Database=EvansvilleDaySchoolDatabase;User ID=Usiwallabies@evansvilledayschoolserver;Password=Quokka12;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
                    string selstring = "SELECT * FROM ADMINISTRATOR";
                    SqlDataSource db = new SqlDataSource(connstring, selstring);
                    DataView dv = (DataView)db.Select(DataSourceSelectArguments.Empty);
                    int dbTokens = (int)dv.Table.Rows[0][1];
                    FinalTokenCount = FinalTokenCount + dbTokens;
                    string updatestring = String.Format("UPDATE ADMINISTRATOR SET ADMIN_TOKENS = {0}", FinalTokenCount);
                    string finalTokens = Convert.ToString(FinalTokenCount);
                    db.UpdateCommand = updatestring;
                    db.Update();

                    Response.Redirect("AddTokens.aspx");
                    //AddFinalTokenCount to database
                    //Change token count on label 1
                }
            }
        }

        //Cancel buying tokens
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrgMgmt.aspx");
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
