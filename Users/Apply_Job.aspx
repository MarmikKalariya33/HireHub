<%@ Page Title="Apply for Job"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Apply_Job.aspx.cs"
    Inherits="Job_Portal.Users.Apply_Job" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Userscss/apply_job.css") %>" />

</asp:Content>



<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="apply-page">


        <a class="back-job-link"
           href="javascript:history.back();">

            <span class="back-arrow">←</span>

            Back to Job Details

        </a>


        <div class="apply-header">

            <h1>
                Apply for Senior React Developer
            </h1>

            <p>
                TCS • Mumbai, Maharashtra
            </p>

        </div>



        <!-- =================================================
             APPLICATION FORM
        ================================================== -->

        <div class="application-card">


            <!-- =================================================
                 ROW 1
            ================================================== -->

            <div class="form-row">


                <!-- FULL NAME -->

                <div class="form-group">

                    <label>
                        Full Name
                    </label>

                    <asp:TextBox
                        ID="txtFullName"
                        runat="server"
                        CssClass="form-control"
                        Text="Rahul Sharma">
                    </asp:TextBox>

                </div>



                <!-- EMAIL -->

                <div class="form-group">

                    <label>
                        Email Address
                    </label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="form-control"
                        Text="rahul@email.com"
                        TextMode="Email">
                    </asp:TextBox>

                </div>

            </div>



            <!-- =================================================
                 ROW 2
            ================================================== -->

            <div class="form-row">


                <!-- PHONE -->

                <div class="form-group">

                    <label>
                        Phone Number
                    </label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="form-control"
                        Text="+91 98765 43210">
                    </asp:TextBox>

                </div>



                <!-- EXPECTED SALARY -->

                <div class="form-group">

                    <label>
                        Expected Salary (LPA)
                    </label>

                    <asp:TextBox
                        ID="txtSalary"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. 15 LPA">
                    </asp:TextBox>

                </div>

            </div>



            <!-- =================================================
                 AVAILABLE START DATE
            ================================================== -->

            <div class="form-group full-width">

                <label>
                    Available Start Date
                </label>

                <asp:TextBox
                    ID="txtStartDate"
                    runat="server"
                    CssClass="form-control"
                    placeholder="DD/MM/YYYY">
                </asp:TextBox>

            </div>



            <!-- =================================================
                 COVER LETTER
            ================================================== -->

            <div class="form-group full-width">

                <label>
                    Cover Letter
                </label>

                <asp:TextBox
                    ID="txtCoverLetter"
                    runat="server"
                    CssClass="form-control cover-letter"
                    TextMode="MultiLine"
                    placeholder="Write your cover letter here to introduce yourself to the hiring team...">
                </asp:TextBox>

            </div>



            <!-- =================================================
                 RESUME UPLOAD
            ================================================== -->

            <div class="form-group full-width">

                <label>
                    Resume Upload
                </label>


                <div class="resume-upload-box">

                    <div class="upload-icon">
                        ☁
                    </div>


                    <asp:FileUpload
                        ID="fuResume"
                        runat="server"
                        CssClass="resume-file" />


                    <label
                        for="<%= fuResume.ClientID %>"
                        class="upload-label">

                        <span class="upload-title">
                            Upload file
                        </span>

                        <span class="upload-info">
                            Supported formats: PDF, DOC, DOCX (Max 5MB)
                        </span>

                    </label>

                </div>

            </div>



            <!-- =================================================
                 DIVIDER
            ================================================== -->

            <div class="form-divider">
            </div>



            <!-- =================================================
                 ACTION BUTTONS
            ================================================== -->

            <div class="application-actions">


                <!-- SUBMIT -->

                <asp:Button
                    ID="btnSubmitApplication"
                    runat="server"
                    Text="Submit Application"
                    CssClass="submit-application-btn"
                    OnClientClick="btnSubmitApplications_Click" />


                <!-- CANCEL -->

                <asp:Button
                    ID="btnCancel"
                    runat="server"
                    Text="Cancel"
                    CssClass="cancel-application-btn"
                    CausesValidation="false"
                    OnClientClick="history.back(); return false;" />

            </div>


        </div>

    </div>



    <!-- =====================================================
         JAVASCRIPT
    ====================================================== -->

    <script type="text/javascript">

        function submitApplication() {

            var name =
                document.getElementById('<%= txtFullName.ClientID %>').value.trim();

            var email =
                document.getElementById('<%= txtEmail.ClientID %>').value.trim();

            var phone =
                document.getElementById('<%= txtPhone.ClientID %>').value.trim();

            var salary =
                document.getElementById('<%= txtSalary.ClientID %>').value.trim();

            var startDate =
                document.getElementById('<%= txtStartDate.ClientID %>').value.trim();

            var coverLetter =
                document.getElementById('<%= txtCoverLetter.ClientID %>').value.trim();


            /* Full Name */

            if (name === "") {

                alert("Please enter your full name.");

                return false;

            }


            /* Email */

            if (email === "") {

                alert("Please enter your email address.");

                return false;

            }


            /* Phone */

            if (phone === "") {

                alert("Please enter your phone number.");

                return false;

            }


            /* Salary */

            if (salary === "") {

                alert("Please enter your expected salary.");

                return false;

            }


            /* Start Date */

            if (startDate === "") {

                alert("Please enter your available start date.");

                return false;

            }


            /* Cover Letter */

            if (coverLetter === "") {

                alert("Please enter your cover letter.");

                return false;

            }


            /* Resume */

            var fileInput =
                document.getElementById('<%= fuResume.ClientID %>');


            if (fileInput.files.length === 0) {

                alert("Please upload your resume.");

                return false;

            }


            var file =
                fileInput.files[0];


            /* Maximum 5 MB */

            if (file.size > 5 * 1024 * 1024) {

                alert("Resume size must be less than 5MB.");

                return false;

            }


            /* Allowed extensions */

            var fileName =
                file.name.toLowerCase();


            var allowed =
                fileName.endsWith(".pdf") ||
                fileName.endsWith(".doc") ||
                fileName.endsWith(".docx");


            if (!allowed) {

                alert("Please upload PDF, DOC or DOCX file.");

                return false;

            }


            /*
                Frontend only:
                Prevent postback because there is no backend/database yet.
            */

            alert("Application submitted successfully!");

            return false;

        }

    </script>


</asp:Content>