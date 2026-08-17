using System;
using System.IO;

namespace Job_Portal.Admin
{
    public partial class Application_Details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Later you can load application details from database here.
            }
        }


        protected void btnShortlist_Click(object sender, EventArgs e)
        {
            // Later:
            // Update application status = Shortlisted
        }


        protected void btnReject_Click(object sender, EventArgs e)
        {
            // Later:
            // Update application status = Rejected
        }


        protected void btnDownloadResume_Click(object sender, EventArgs e)
        {
            // Example resume path
            string filePath = Server.MapPath(
                "~/Uploads/Rahul_Sharma_Resume.pdf"
            );

            if (File.Exists(filePath))
            {
                Response.Clear();

                Response.ContentType = "application/pdf";

                Response.AppendHeader(
                    "Content-Disposition",
                    "attachment; filename=Rahul_Sharma_Resume.pdf"
                );

                Response.TransmitFile(filePath);

                Response.End();
            }
        }
    }
}