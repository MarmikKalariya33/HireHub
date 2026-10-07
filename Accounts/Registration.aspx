<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs"
    Inherits="Job_Portal.Accounts.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Create Account - HireHub</title>

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />

    <link rel="stylesheet"
          type="text/css"
          href="../Assets/Admincss/register.css" />

</head>

<body>

<form id="form1" runat="server">

<div class="register-page">

    <!-- =====================================================
         LEFT SIDE - FIXED / NO SCROLL
    ====================================================== -->

    <div class="left-section">

        <div class="logo-section">

            <img src="../Assets/images/logo.png"
                 class="hirehub-logo"
                 alt="HireHub" />

        </div>


        <div class="left-content">

            <div class="small-badge">

                <i class="bi bi-stars"></i>

                Start your journey

            </div>


            <h1>

                Build Your Career.<br />

                Shape Your Future.

            </h1>


            <p>

                Explore trusted job opportunities, connect with
                leading companies, and find the right path for
                your career.

            </p>


            <div class="features">

                <span>Find Jobs</span>

                <b>•</b>

                <span>Apply Easily</span>

                <b>•</b>

                <span>Grow Professionally</span>

            </div>

        </div>


        <div class="left-footer">

            © 2026 HireHub • Career & Job Portal

        </div>

    </div>


    <!-- =====================================================
         RIGHT SIDE - SCROLLABLE
    ====================================================== -->

    <div class="right-section">

        <div class="register-container">


            <!-- =================================================
                 HEADING
            ================================================== -->

            <div class="heading-section">

                <div class="heading-icon">

                    <i class="bi bi-person-plus"></i>

                </div>


                <div>

                    <h2 id="formTitle">
                        Create a job seeker account
                    </h2>


                    <p id="formSubtitle">

                        Sign up to start matching with top vacancies today.

                    </p>

                </div>

            </div>


            <!-- =================================================
                 ACCOUNT TYPE
            ================================================== -->

            <div class="account-tabs">

                <div class="account-tab"
                     id="employeeTab"
                     onclick="selectAccountType('employee')">

                    <i class="bi bi-building"></i>

                    <span>Employee</span>

                </div>


                <div class="account-tab active"
                     id="jobSeekerTab"
                     onclick="selectAccountType('jobseeker')">

                    <i class="bi bi-person"></i>

                    <span>Job Seeker</span>

                </div>

            </div>


            <!-- =================================================
                 FORM GRID
            ================================================== -->

            <div class="form-grid">


                <!-- =================================================
                     COMPANY NAME
                ================================================== -->

                <div class="form-group employee-only"
                     style="display:none;">

                    <label>

                        COMPANY NAME

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-building input-icon"></i>


                        <asp:TextBox
                            ID="txtCompanyName"
                            runat="server"
                            CssClass="form-input"
                            placeholder="Enter company name">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvCompanyName"
                        runat="server"
                        ControlToValidate="txtCompanyName"
                        ErrorMessage="Company Name is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =================================================
                     FULL NAME / CONTACT PERSON
                ================================================== -->

                <div class="form-group">

                    <label id="nameLabel">

                        FULL NAME

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-person input-icon"></i>


                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="form-input"
                            placeholder="Enter full name">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvFullName"
                        runat="server"
                        ControlToValidate="txtFullName"
                        ErrorMessage="Full Name is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =================================================
                     PROFILE / COMPANY IMAGE
                ================================================== -->

                <div class="form-group">

                    <label id="pictureLabel">

                        PROFILE PICTURE

                    </label>


                    <div class="upload-box">

                        <div class="upload-icon">

                            <i class="bi bi-person-circle"></i>

                        </div>


                        <div class="upload-content">

                            <asp:FileUpload
                                ID="fuProfilePicture"
                                runat="server"
                                CssClass="file-input" />

                            <small>
                                JPG, JPEG or PNG
                            </small>

                        </div>

                    </div>

                </div>


                <!-- =================================================
                     EMAIL
                ================================================== -->

                <div class="form-group">

                    <label>

                        EMAIL ADDRESS

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-envelope input-icon"></i>


                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="form-input"
                            TextMode="Email"
                            placeholder="example@gmail.com">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Enter a valid email address."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =================================================
                     PHONE
                ================================================== -->

                <div class="form-group">

                    <label>

                        PHONE NUMBER

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-telephone input-icon"></i>


                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="form-input"
                            placeholder="9876543210"
                            MaxLength="10">
                        </asp:TextBox>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone Number is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Enter valid 10 digit number."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =================================================
                     LOCATION
                ================================================== -->

                <div class="form-group">

                    <label>
                        LOCATION
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-geo-alt input-icon"></i>


                        <asp:TextBox
                            ID="txtLocation"
                            runat="server"
                            CssClass="form-input"
                            placeholder="City, State">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- =================================================
                     INDUSTRY
                ================================================== -->

                <div class="form-group employee-only"
                     style="display:none;">

                    <label>

                        INDUSTRY

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-diagram-3 input-icon"></i>


                        <asp:DropDownList
                            ID="ddlIndustry"
                            runat="server"
                            CssClass="form-input select-input">

                            <asp:ListItem Value="">
                                -- Select Industry --
                            </asp:ListItem>

                            <asp:ListItem Value="IT & Software">
                                IT &amp; Software
                            </asp:ListItem>

                            <asp:ListItem Value="Finance & Banking">
                                Finance &amp; Banking
                            </asp:ListItem>

                            <asp:ListItem Value="Healthcare">
                                Healthcare
                            </asp:ListItem>

                            <asp:ListItem Value="Education">
                                Education
                            </asp:ListItem>

                            <asp:ListItem Value="Manufacturing">
                                Manufacturing
                            </asp:ListItem>

                            <asp:ListItem Value="Retail">
                                Retail
                            </asp:ListItem>

                            <asp:ListItem Value="Construction">
                                Construction
                            </asp:ListItem>

                            <asp:ListItem Value="Marketing">
                                Marketing
                            </asp:ListItem>

                            <asp:ListItem Value="Other">
                                Other
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>


                <!-- =================================================
                     COMPANY SIZE
                ================================================== -->

                <div class="form-group employee-only"
                     style="display:none;">

                    <label>

                        COMPANY SIZE

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-people input-icon"></i>


                        <asp:DropDownList
                            ID="ddlCompanySize"
                            runat="server"
                            CssClass="form-input select-input">

                            <asp:ListItem Value="">
                                -- Select Company Size --
                            </asp:ListItem>

                            <asp:ListItem Value="1-10">
                                1 - 10 employees
                            </asp:ListItem>

                            <asp:ListItem Value="11-50">
                                11 - 50 employees
                            </asp:ListItem>

                            <asp:ListItem Value="51-200">
                                51 - 200 employees
                            </asp:ListItem>

                            <asp:ListItem Value="201-500">
                                201 - 500 employees
                            </asp:ListItem>

                            <asp:ListItem Value="501-1000">
                                501 - 1000 employees
                            </asp:ListItem>

                            <asp:ListItem Value="1000+">
                                1000+ employees
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                </div>


                <!-- =================================================
                     WEBSITE
                ================================================== -->

                <div class="form-group employee-only"
                     style="display:none;">

                    <label>

                        WEBSITE

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-globe2 input-icon"></i>


                        <asp:TextBox
                            ID="txtWebsite"
                            runat="server"
                            CssClass="form-input"
                            placeholder="www.company.com">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- =================================================
                     REGISTRATION DATE
                ================================================== -->

                <div class="form-group">

                    <label>

                        REGISTRATION DATE

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-calendar3 input-icon"></i>


                        <asp:TextBox
                            ID="txtRegistrationDate"
                            runat="server"
                            CssClass="form-input"
                            TextMode="Date">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- =================================================
                     PASSWORD
                ================================================== -->

                <div class="form-group">

                    <label>

                        PASSWORD

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock input-icon"></i>


                        <asp:TextBox
                            ID="txtPassword"
                            runat="server"
                            CssClass="form-input password-input"
                            TextMode="Password"
                            placeholder="Minimum 8 characters">
                        </asp:TextBox>


                        <button type="button"
                                class="password-toggle"
                                onclick="togglePassword('<%= txtPassword.ClientID %>', 'passwordIcon')">

                            <i class="bi bi-eye"
                               id="passwordIcon">
                            </i>

                        </button>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ErrorMessage="Password is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revPassword"
                        runat="server"
                        ControlToValidate="txtPassword"
                        ValidationExpression="^.{8,}$"
                        ErrorMessage="Minimum 8 characters."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =================================================
                     CONFIRM PASSWORD
                ================================================== -->

                <div class="form-group">

                    <label>

                        CONFIRM PASSWORD

                        <span class="required-star">*</span>

                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock input-icon"></i>


                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="form-input password-input"
                            TextMode="Password"
                            placeholder="Re-enter password">
                        </asp:TextBox>


                        <button type="button"
                                class="password-toggle"
                                onclick="togglePassword('<%= txtConfirmPassword.ClientID %>', 'confirmPasswordIcon')">

                            <i class="bi bi-eye"
                               id="confirmPasswordIcon">
                            </i>

                        </button>

                    </div>


                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Confirm Password is required."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:CompareValidator
                        ID="cvPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtPassword"
                        Operator="Equal"
                        ErrorMessage="Passwords do not match."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:CompareValidator>

                </div>

            </div>


            <!-- =================================================
                 INFORMATION
            ================================================== -->

            <div class="information-section">


                <!-- JOB SEEKER -->

                <div id="userInformation">

                    <h3>
                        Personal Information
                    </h3>


                    <asp:TextBox
                        ID="txtPersonalInformation"
                        runat="server"
                        CssClass="information-input"
                        TextMode="MultiLine"
                        placeholder="Tell us something about yourself...">
                    </asp:TextBox>

                </div>


                <!-- EMPLOYEE -->

                <div id="employeeInformation"
                     style="display:none;">

                    <h3>
                        About Company
                    </h3>


                    <asp:TextBox
                        ID="txtCompanyInformation"
                        runat="server"
                        CssClass="information-input"
                        TextMode="MultiLine"
                        placeholder="Tell us about your company, services, culture and business...">
                    </asp:TextBox>

                </div>

            </div>


            <!-- =================================================
                 TERMS
            ================================================== -->

            <div class="terms-section">

                <label class="checkbox-container">

                    <input type="checkbox"
                           checked="checked"
                           id="termsCheckbox" />


                    <span class="custom-checkbox">

                        <i class="bi bi-check"></i>

                    </span>


                    <span class="terms-text">

                        I agree to the

                        <a href="#">
                            Terms of Service
                        </a>

                        and

                        <a href="#">
                            Privacy Policy
                        </a>

                    </span>

                </label>

            </div>


            <!-- =================================================
                 REGISTER
            ================================================== -->

            <asp:Button
                ID="btnRegister"
                runat="server"
                Text="Create Account"
                CssClass="register-button"
                CausesValidation="true"
                UseSubmitBehavior="false"
                OnClientClick="if (Page_ClientValidate()) { window.location.href='login.aspx'; return false; } return false;" />


            <!-- =================================================
                 LOGIN
            ================================================== -->

            <div class="login-section">

                <span>
                    Already have an account?
                </span>


                <a href="login.aspx">
                    Login
                </a>

            </div>


        </div>

    </div>

</div>

</form>


<script>

    /* =========================================================
       ACCOUNT TYPE
    ========================================================= */

    function selectAccountType(type) {

        var employeeTab =
            document.getElementById("employeeTab");

        var jobSeekerTab =
            document.getElementById("jobSeekerTab");

        var employeeFields =
            document.querySelectorAll(".employee-only");

        var userInformation =
            document.getElementById("userInformation");

        var employeeInformation =
            document.getElementById("employeeInformation");

        var formTitle =
            document.getElementById("formTitle");

        var formSubtitle =
            document.getElementById("formSubtitle");

        var nameLabel =
            document.getElementById("nameLabel");

        var pictureLabel =
            document.getElementById("pictureLabel");


        /* =====================================================
           EMPLOYEE
        ===================================================== */

        if (type === "employee") {

            employeeTab.classList.add("active");

            jobSeekerTab.classList.remove("active");


            employeeFields.forEach(function (field) {

                field.style.display = "block";

            });


            userInformation.style.display = "none";

            employeeInformation.style.display = "block";


            formTitle.innerText =
                "Create an employee account";


            formSubtitle.innerText =
                "Register your company and connect with talented candidates.";


            nameLabel.childNodes[0].textContent =
                "CONTACT PERSON ";


            pictureLabel.innerText =
                "COMPANY / PROFILE PICTURE";

        }


        /* =====================================================
           JOB SEEKER
        ===================================================== */

        else {

            jobSeekerTab.classList.add("active");

            employeeTab.classList.remove("active");


            employeeFields.forEach(function (field) {

                field.style.display = "none";

            });


            userInformation.style.display = "block";

            employeeInformation.style.display = "none";


            formTitle.innerText =
                "Create a job seeker account";


            formSubtitle.innerText =
                "Sign up to start matching with top vacancies today.";


            nameLabel.childNodes[0].textContent =
                "FULL NAME ";


            pictureLabel.innerText =
                "PROFILE PICTURE";

        }

    }


    /* =========================================================
       PASSWORD SHOW / HIDE
    ========================================================= */

    function togglePassword(inputId, iconId) {

        var input =
            document.getElementById(inputId);

        var icon =
            document.getElementById(iconId);


        if (input.type === "password") {

            input.type = "text";

            icon.classList.remove("bi-eye");

            icon.classList.add("bi-eye-slash");

        }

        else {

            input.type = "password";

            icon.classList.remove("bi-eye-slash");

            icon.classList.add("bi-eye");

        }

    }


    /* =========================================================
       DEFAULT
    ========================================================= */

    document.addEventListener("DOMContentLoaded", function () {

        selectAccountType("jobseeker");

    });

</script>

</body>

</html>