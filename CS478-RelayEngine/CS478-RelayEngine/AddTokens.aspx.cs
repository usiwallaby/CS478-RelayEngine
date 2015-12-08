using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CS478_RelayEngine
{
    public partial class AddTokens : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           // Label1.Text = UserTokenCount;
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

                    

                    //AddFinalTokenCount to database
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