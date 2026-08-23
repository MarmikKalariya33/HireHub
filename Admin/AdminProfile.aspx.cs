using System;

namespace Job_Portal.Admin
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit_Admin_Profile.aspx");
        }
    }
}