using System;
using System.Web.UI;

namespace Job_Portal.Admin
{
    public partial class Final_Edit_Employer : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            Response.Redirect("Employer_Details.aspx");
        }
    }
}
