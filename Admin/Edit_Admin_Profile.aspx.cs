using System;

namespace Job_Portal.Admin
{
    public partial class Edit_Admin_Profile : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Load admin profile data here
            }
        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminProfile.aspx");
        }


        protected void btnSaveChanges_Click(object sender, EventArgs e)
        {
            string fullName = txtFullName.Text.Trim();
            string email = txtEmail.Text.Trim();
            string phone = txtPhone.Text.Trim();
            string role = txtRole.Text.Trim();


            // Database update code here


            Response.Redirect("AdminProfile.aspx");
        }
    }
}