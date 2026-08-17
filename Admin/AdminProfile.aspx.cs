using System;

namespace Job_Portal.Admin
{
    public partial class AdminProfile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Admin profile data can be loaded from database here later.
            }
        }


        protected void btnEditProfile_Click(object sender, EventArgs e)
        {
            Response.Redirect("Edit_Admin_Profile.aspx");
        }
    }
}