using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Job_Portal.Users
{
    public partial class Settings : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnUpdatePassword_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Users/Dashboard.aspx");
        }
        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Accounts/Login.aspx");
        }
        protected void btnDeleteAccount_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Accounts/Login.aspx");
        }
    }
}