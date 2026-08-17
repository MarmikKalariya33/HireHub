using System;

namespace Job_Portal.Admin
{
    public partial class Categories : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Later database data will be loaded here.
            }
        }


        protected void btnAddCategory_Click(object sender, EventArgs e)
        {
            // Add Category page
            Response.Redirect("Add_Category.aspx");
        }


        protected void btnEditIT_Click(object sender, EventArgs e)
        {
            // Edit IT & Software
        }


        protected void btnDeleteIT_Click(object sender, EventArgs e)
        {
            // Delete IT & Software
        }
    }
}