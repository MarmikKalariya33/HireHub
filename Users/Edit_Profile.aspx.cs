using System;

namespace Job_Portal.Users
{
    public partial class Edit_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            // Check all ASP.NET validators
            if (Page.IsValid)
            {
                // Profile data save logic can be added here later.

                // Redirect to Profile page
                Response.Redirect("~/Users/Profile.aspx");
            }
        }
    }
}