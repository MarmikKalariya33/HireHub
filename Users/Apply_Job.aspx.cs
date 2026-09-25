using System;
using System.Data.SqlClient;
using System.Web.UI;

namespace Job_Portal.Users
{
    public partial class Apply_Job : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnSubmitApplication_Click(object sender, EventArgs e)
        {
            string connectionString = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\marmik\\source\\repos\\Job_Portal\\App_Data\\jobportal.mdf;Integrated Security=True";

            SqlConnection con = new SqlConnection(connectionString);

            con.Open();

            string query = "INSERT INTO [job information] VALUES ('"
                + txtFullName.Text + "','"
                + txtEmail.Text + "','"
                + txtPhone.Text + "','"
                + txtSalary.Text + "','"
                + txtStartDate.Text + "','"
                + txtCoverLetter.Text + "','"
                + fuResume.FileName + "')";

            SqlCommand cmd = new SqlCommand(query, con);

            cmd.ExecuteNonQuery();

            con.Close();
            ScriptManager.RegisterStartupScript(
                           this,
                           this.GetType(),
                           "alert",
                           "alert('Data insert successfully');",
                           true
                           );



        }
    }
}