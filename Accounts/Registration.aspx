<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Registration.aspx.cs"
    Inherits="Job_Portal.Accounts.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1.0" />

    <title>Create an Account - HireHub</title>

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />

    <!-- Custom CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="../Assets/Admincss/register.css" />

    <style>

        /* Required Star */
        .required-star {
            color: red;
            font-weight: bold;
        }

        /* Validation Message */
        .validation-message {
            color: red;
            font-size: 13px;
            display: block;
            margin-top: 4px;
        }

    </style>

</head>

<body>

<form id="form1" runat="server">

    <div class="register-page">

        <!-- =====================================================
             LEFT SECTION
        ====================================================== -->

        <div class="left-section">

            <!-- Logo -->
            <div class="logo-section">

                <img src="../Assets/images/logo.png"
                     alt="HireHub Logo"
                     class="hirehub-logo" />

            </div>


            <!-- Left Content -->
            <div class="left-content">

                <h1>
                    Build Your Career.<br />
                    Shape Your Future.
                </h1>

                <p class="description">
                    Explore trusted job opportunities, connect with
                    leading companies, and find the right path for
                    your career.
                </p>

                <p class="features">
                    Find jobs
                    <span>•</span>
                    Apply Easily
                    <span>•</span>
                    Grow Professionally
                </p>

            </div>

        </div>


        <!-- =====================================================
             RIGHT SECTION
        ====================================================== -->

        <div class="right-section">

            <div class="register-container">

                <!-- Heading -->
                <div class="heading-section">

                    <h2>
                        Create an account
                    </h2>

                    <p>
                        Sign up to start matching with top vacancies today
                    </p>

                </div>


                <!-- =================================================
                     USER TYPE TABS
                ================================================== -->

                <div class="account-tabs">

                    <div class="account-tab active"
                         onclick="selectAccountType(this)">
                        Employee
                    </div>

                    <div class="account-tab"
                         onclick="selectAccountType(this)">
                        Job Seeker
                    </div>

                </div>


                <!-- =================================================
                     FULL NAME
                ================================================== -->

                <div class="form-group">

                    <label>

                        Full Name

                        <asp:RequiredFieldValidator
                            ID="rfvFullNameStar"
                            runat="server"
                            ControlToValidate="txtFullName"
                            Text="*"
                            ErrorMessage="Full Name is required."
                            ForeColor="Red"
                            CssClass="required-star"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </label>

                    <div class="input-wrapper">

                        <i class="bi bi-person input-icon"></i>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="form-input"
                            placeholder="e.g. sumit kumar">
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
                     EMAIL
                ================================================== -->

                <div class="form-group">

                    <label>

                        Email Address

                        <asp:RequiredFieldValidator
                            ID="rfvEmailStar"
                            runat="server"
                            ControlToValidate="txtEmail"
                            Text="*"
                            ErrorMessage="Email is required."
                            ForeColor="Red"
                            CssClass="required-star"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </label>

                    <div class="input-wrapper">

                        <i class="bi bi-envelope input-icon"></i>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="form-input"
                            TextMode="Email"
                            placeholder="sumitkumar12@gmail.com">
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

                        Phone Number

                        <asp:RequiredFieldValidator
                            ID="rfvPhoneStar"
                            runat="server"
                            ControlToValidate="txtPhone"
                            Text="*"
                            ErrorMessage="Phone Number is required."
                            ForeColor="Red"
                            CssClass="required-star"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </label>

                    <div class="input-wrapper">

                        <i class="bi bi-telephone-inbound input-icon"></i>

                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="form-input"
                            placeholder="+91 1234567899"
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
                        ErrorMessage="Enter a valid 10 digit phone number."
                        ForeColor="Red"
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =================================================
                     PASSWORD
                ================================================== -->

                <div class="form-group">

                    <label>

                        Password

                        <asp:RequiredFieldValidator
                            ID="rfvPasswordStar"
                            runat="server"
                            ControlToValidate="txtPassword"
                            Text="*"
                            ErrorMessage="Password is required."
                            ForeColor="Red"
                            CssClass="required-star"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

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
                        ErrorMessage="Password must be at least 8 characters."
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

                        Confirm Password

                        <asp:RequiredFieldValidator
                            ID="rfvConfirmPasswordStar"
                            runat="server"
                            ControlToValidate="txtConfirmPassword"
                            Text="*"
                            ErrorMessage="Confirm Password is required."
                            ForeColor="Red"
                            CssClass="required-star"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </label>

                    <div class="input-wrapper">

                        <i class="bi bi-lock input-icon"></i>

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="form-input password-input"
                            TextMode="Password"
                            placeholder="Re-enter your password">
                        </asp:TextBox>

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


                <!-- =================================================
                     TERMS
                ================================================== -->

                <div class="terms-section">

                    <label class="checkbox-container">

                        <input type="checkbox"
                               checked="checked" />

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
                     REGISTER BUTTON
                ================================================== -->
<asp:Button 
    ID="btnRegister"
    runat="server"
    Text="Register Account"
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


<!-- =========================================================
     ACCOUNT TYPE TAB SCRIPT
========================================================== -->

<script>

    function selectAccountType(selectedTab) {

        var tabs = document.querySelectorAll(".account-tab");

        tabs.forEach(function (tab) {

            tab.classList.remove("active");

        });

        selectedTab.classList.add("active");

    }

</script>

</body>

</html>
