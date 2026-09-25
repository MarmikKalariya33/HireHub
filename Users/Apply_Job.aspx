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

    <style>

        /* Red * beside required field */

        .required-star {
            color: red;
            font-weight: bold;
            margin-left: 3px;
        }

        /* Validation message */

        .validation-error {
            color: red;
            font-size: 13px;
            display: block;
            margin-top: 5px;
        }

    </style>

</asp:Content>



<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="apply-page">


        <!-- ==============================
             BACK TO JOB DETAILS
        =============================== -->

        <a class="back-job-link"
           href="javascript:history.back();">

            <span class="back-arrow">←</span>

            Back to Job Details

        </a>



        <!-- ==============================
             HEADER
        =============================== -->

        <div class="apply-header">

            <h1>
                Apply for Senior React Developer
            </h1>

            <p>
                TCS • Mumbai, Maharashtra
            </p>

        </div>



        <!-- ==============================
             APPLICATION FORM
        =============================== -->

        <div class="application-card">


            <!-- ==============================
                 ROW 1
            =============================== -->

            <div class="form-row">


                <!-- ==============================
                     FULL NAME
                =============================== -->

                <div class="form-group">

                    <label>
                        Full Name
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtFullName"
                        runat="server"
                        CssClass="form-control"
                        Text="Rahul Sharma">
                    </asp:TextBox>


                    <!-- RequiredFieldValidator -->

                    <asp:RequiredFieldValidator
                        ID="namevalidate"
                        runat="server"
                        ControlToValidate="txtFullName"
                        Text="Name is Required"
                        ErrorMessage="Name is Required"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- Name Format -->

                    <asp:RegularExpressionValidator
                        ID="NameFormatValidator"
                        runat="server"
                        ControlToValidate="txtFullName"
                        ValidationExpression="^[a-zA-Z ]+$"
                        Text="Name can contain letters and spaces only"
                        ErrorMessage="Name can contain letters and spaces only"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>



                <!-- ==============================
                     EMAIL
                =============================== -->

                <div class="form-group">

                    <label>
                        Email Address
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="form-control"
                        Text="rahul@email.com"
                        TextMode="Email">
                    </asp:TextBox>


                    <!-- RequiredFieldValidator -->

                    <asp:RequiredFieldValidator
                        ID="EmailRequiredValidator"
                        runat="server"
                        ControlToValidate="txtEmail"
                        Text="Email is Required"
                        ErrorMessage="Email is Required"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- Email Format -->

                    <asp:RegularExpressionValidator
                        ID="EmailFormatValidator"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                        Text="Please enter a valid email address"
                        ErrorMessage="Please enter a valid email address"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

            </div>



            <!-- ==============================
                 ROW 2
            =============================== -->

            <div class="form-row">


                <!-- ==============================
                     PHONE
                =============================== -->

                <div class="form-group">

                    <label>
                        Phone Number
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="form-control"
                        Text="9876543210"
                        MaxLength="10">
                    </asp:TextBox>


                    <!-- RequiredFieldValidator -->

                    <asp:RequiredFieldValidator
                        ID="PhoneRequiredValidator"
                        runat="server"
                        ControlToValidate="txtPhone"
                        Text="Phone Number is Required"
                        ErrorMessage="Phone Number is Required"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- 10 Digit Validation -->

                    <asp:RegularExpressionValidator
                        ID="PhoneFormatValidator"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ValidationExpression="^[6-9][0-9]{9}$"
                        Text="Enter a valid 10 digit phone number"
                        ErrorMessage="Enter a valid 10 digit phone number"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>



                <!-- ==============================
                     EXPECTED SALARY
                =============================== -->

                <div class="form-group">

                    <label>
                        Expected Salary (LPA)
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtSalary"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. 15">
                    </asp:TextBox>


                    <!-- RequiredFieldValidator -->

                    <asp:RequiredFieldValidator
                        ID="SalaryRequiredValidator"
                        runat="server"
                        ControlToValidate="txtSalary"
                        Text="Salary is Required"
                        ErrorMessage="Salary is Required"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- Number Validation -->

                    <asp:RegularExpressionValidator
                        ID="SalaryNumberValidator"
                        runat="server"
                        ControlToValidate="txtSalary"
                        ValidationExpression="^[0-9]+$"
                        Text="Please enter numbers only"
                        ErrorMessage="Please enter numbers only"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

            </div>



            <!-- ==============================
                 AVAILABLE START DATE
            =============================== -->

            <div class="form-group full-width">

                <label>
                    Available Start Date
                    <span class="required-star">*</span>
                </label>

                <asp:TextBox
                    ID="txtStartDate"
                    runat="server"
                    CssClass="form-control"
                    placeholder="DD/MM/YYYY">
                </asp:TextBox>


                <asp:RequiredFieldValidator
                    ID="StartDateRequiredValidator"
                    runat="server"
                    ControlToValidate="txtStartDate"
                    Text="Start Date is Required"
                    ErrorMessage="Start Date is Required"
                    ForeColor="Red"
                    CssClass="validation-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>



            <!-- ==============================
                 COVER LETTER
            =============================== -->

            <div class="form-group full-width">

                <label>
                    Cover Letter
                    <span class="required-star">*</span>
                </label>

                <asp:TextBox
                    ID="txtCoverLetter"
                    runat="server"
                    CssClass="form-control cover-letter"
                    TextMode="MultiLine"
                    placeholder="Write your cover letter here to introduce yourself to the hiring team...">
                </asp:TextBox>


                <asp:RequiredFieldValidator
                    ID="CoverLetterRequiredValidator"
                    runat="server"
                    ControlToValidate="txtCoverLetter"
                    Text="Cover Letter is Required"
                    ErrorMessage="Cover Letter is Required"
                    ForeColor="Red"
                    CssClass="validation-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>



            <!-- ==============================
                 RESUME UPLOAD
            =============================== -->

            <div class="form-group full-width">

                <label>
                    Resume Upload
                    <span class="required-star">*</span>
                </label>


                <div class="resume-upload-box">


                    <div class="upload-icon">
                        ☁
                    </div>


                    <asp:FileUpload
                        ID="fuResume"
                        runat="server"
                        CssClass="resume-file" />


                    <asp:RequiredFieldValidator
                        ID="ResumeRequiredValidator"
                        runat="server"
                        ControlToValidate="fuResume"
                        Text="Resume is Required"
                        ErrorMessage="Resume is Required"
                        ForeColor="Red"
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


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



            <!-- ==============================
                 DIVIDER
            =============================== -->

            <div class="form-divider">
            </div>



            <!-- ==============================
                 ACTION BUTTONS
            =============================== -->

            <div class="application-actions">


               <asp:Button
    ID="btnSubmitApplication"
    runat="server"
    Text="Submit Application"
    CssClass="submit-application-btn"
    CausesValidation="true"
    PostBackUrl="~/Users/Applications.aspx" OnClick="btnSubmitApplication_Click" />


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


</asp:Content>