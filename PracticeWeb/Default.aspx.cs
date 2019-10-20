using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PracticeWeb
{
    public partial class _Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtEmail.Text.Equals("Admin") && TxtPass.Text.Equals("123"))
            {
                Response.Redirect("Home.aspx");
            }
            else
            {
                TxtPass.Text = null;
                txtEmail.Text = "Some Error";
            }
        }

    }
}
    
