using System;
using System.Web.UI;

namespace Job_Portal.Admin
{
    public partial class Companies : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Static page.
                // Database will be connected later.
            }
        }
    }
}