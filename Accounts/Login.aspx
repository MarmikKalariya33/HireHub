<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="Job_Portal.Accounts.Login" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HireHub - Login</title>

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1" />

    <!-- Bootstrap -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />

    <!-- Login CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Admincss/login.css") %>" />

</head>

<body>

<form id="form1" runat="server">

    <div class="login-page">


        <!-- =========================================
             LEFT SIDE
        ========================================= -->

        <div class="login-left">

            <div class="brand-area">

                <img src="<%= ResolveUrl("~/Assets/images/logo.png") %>"
                     class="hirehub-logo"
                     alt="HireHub" />

            </div>


            <div class="left-content">

                <h1>
                    Build Your Career.<br />
                    Shape Your Future.
                </h1>

                <p>
                    Explore trusted job opportunities, connect with
                    leading companies, and find the right path for
                    your career.
                </p>

                <div class="left-features">

                    Find jobs
                    <span>•</span>
                    Apply Easily
                    <span>•</span>
                    Grow Professionally

                </div>

            </div>

        </div>


        <!-- =========================================
             RIGHT SIDE
        ========================================= -->

        <div class="login-right">

            <div class="login-box">


                <!-- =========================================
                     WELCOME
                ========================================= -->

                <div class="welcome-section">

                    <h2>
                        Welcome
                    </h2>

                    <p>
                        Select your role and enter your details to sign in
                    </p>

                </div>


                <!-- =========================================
                     ROLE TABS
                ========================================= -->

                <div class="role-tabs">

                    <button
                        type="button"
                        class="role-tab active"
                        data-role="Admin">

                        Admin

                    </button>


                    <button
                        type="button"
                        class="role-tab"
                        data-role="Employer">

                        Employer

                    </button>


                    <button
                        type="button"
                        class="role-tab"
                        data-role="Job Seeker">

                        Job Seeker

                    </button>

                </div>


                <!-- =========================================
                     LOGIN FORM
                ========================================= -->

                <div class="login-form">


                    <!-- =========================================
                         EMAIL
                    ========================================= -->

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
                                CssClass="login-input"
                                TextMode="Email"
                                placeholder="Enter your email"
                                Text="admin@gmail.com">
                            </asp:TextBox>

                        </div>


                        <!-- Email Required Message -->

                        <asp:RequiredFieldValidator
                            ID="rfvEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required."
                            ForeColor="Red"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>


                        <!-- Email Format Validation -->

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


                    <!-- =========================================
                         PASSWORD
                    ========================================= -->

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
                                CssClass="login-input password-input"
                                TextMode="Password"
                                placeholder="Enter your password"
                                Text="admin123">
                            </asp:TextBox>


                            <!-- PASSWORD SHOW/HIDE -->

                            <button
                                type="button"
                                class="password-toggle"
                                id="passwordToggle">

                                <i
                                    class="bi bi-eye"
                                    id="passwordIcon">
                                </i>

                            </button>

                        </div>


                        <!-- Password Required Message -->

                        <asp:RequiredFieldValidator
                            ID="rfvPassword"
                            runat="server"
                            ControlToValidate="txtPassword"
                            ErrorMessage="Password is required."
                            ForeColor="Red"
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- =========================================
                         LOGIN OPTIONS
                    ========================================= -->

                    <div class="login-options">

                        <label class="remember-option">

                            <input
                                type="checkbox"
                                id="rememberMe" />

                            <span class="custom-checkbox"></span>

                            <span class="remember-text">
                                Keep me signed in
                            </span>

                        </label>


                        <a
                            href="NewPassword.aspx"
                            class="forgot-link">

                            Forgot Password?

                        </a>

                    </div>


                    <!-- =========================================
                         LOGIN BUTTON
                    ========================================= -->

                    <asp:Button
                        ID="btnLogin"
                        runat="server"
                        Text="Login to Account"
                        CssClass="login-button"
                        CausesValidation="true"
                        UseSubmitBehavior="false"
                        OnClientClick="return validateLogin();" />


                    <!-- =========================================
                         REGISTRATION LINK
                    ========================================= -->

                    <div class="register-section">

                        <span>
                            Don't have an account?
                        </span>

                        <a
                            href="Registration.aspx"
                            class="register-link">

                            Register Now

                        </a>

                    </div>


                </div>

            </div>

        </div>

    </div>

</form>


<!-- =========================================
     LOGIN SCRIPT
========================================= -->

<script>

    document.addEventListener("DOMContentLoaded", function () {


        /* =========================================
           GET ELEMENTS
        ========================================= */

        const roleTabs =
            document.querySelectorAll(".role-tab");

        const emailInput =
            document.getElementById("<%= txtEmail.ClientID %>");

        const passwordInput =
            document.getElementById("<%= txtPassword.ClientID %>");

        const passwordToggle =
            document.getElementById("passwordToggle");

        const passwordIcon =
            document.getElementById("passwordIcon");


        /* =========================================
           DEFAULT ROLE
        ========================================= */

        let selectedRole = "Admin";


        /* =========================================
           ROLE TAB CLICK
        ========================================= */

        roleTabs.forEach(function (tab) {

            tab.addEventListener("click", function () {


                /* Remove active from all */

                roleTabs.forEach(function (item) {

                    item.classList.remove("active");

                });


                /* Add active to clicked role */

                tab.classList.add("active");


                /* Get selected role */

                selectedRole =
                    tab.getAttribute("data-role");


                /* =========================================
                   SET DEFAULT LOGIN DETAILS
                ========================================= */

                if (selectedRole === "Admin") {

                    emailInput.value =
                        "admin@gmail.com";

                    passwordInput.value =
                        "admin123";

                }


                else if (selectedRole === "Employer") {

                    emailInput.value =
                        "employer@gmail.com";

                    passwordInput.value =
                        "employer123";

                }


                else if (selectedRole === "Job Seeker") {

                    emailInput.value =
                        "user@gmail.com";

                    passwordInput.value =
                        "user123";

                }

            });

        });


        /* =========================================
           SHOW / HIDE PASSWORD
        ========================================= */

        passwordToggle.addEventListener("click", function () {

            if (passwordInput.type === "password") {

                passwordInput.type = "text";

                passwordIcon.classList.remove("bi-eye");

                passwordIcon.classList.add("bi-eye-slash");

            }

            else {

                passwordInput.type = "password";

                passwordIcon.classList.remove("bi-eye-slash");

                passwordIcon.classList.add("bi-eye");

            }

        });


        /* =========================================
           LOGIN ROLE FUNCTION
        ========================================= */

        window.validateLogin = function () {

            /*
               First run ASP.NET Toolbox validation
            */

            if (typeof Page_ClientValidate === "function") {

                if (!Page_ClientValidate()) {

                    return false;

                }

            }


            const email =
                emailInput.value.trim();

            const password =
                passwordInput.value.trim();


            /* =========================================
               ADMIN LOGIN
            ========================================= */

            if (selectedRole === "Admin") {

                if (
                    email === "admin@gmail.com" &&
                    password === "admin123"
                ) {

                    window.location.href =
                        '<%= ResolveUrl("~/Admin/Dashboard.aspx") %>';

                    return false;

                }

                else {

                    alert(
                        "Invalid Admin Email or Password."
                    );

                    return false;

                }

            }


            /* =========================================
               EMPLOYER LOGIN
            ========================================= */

            else if (selectedRole === "Employer") {

                if (
                    email === "employer@gmail.com" &&
                    password === "employer123"
                ) {

                    window.location.href =
                        '<%= ResolveUrl("~/Employee/Dashboard.aspx") %>';

                    return false;

                }

                else {

                    alert(
                        "Invalid Employer Email or Password."
                    );

                    return false;

                }

            }


            /* =========================================
               JOB SEEKER LOGIN
            ========================================= */

            else if (selectedRole === "Job Seeker") {

                if (
                    email === "user@gmail.com" &&
                    password === "user123"
                ) {

                    window.location.href =
                        '<%= ResolveUrl("~/Users/Dashboard.aspx") %>';

                    return false;

                }

                else {

                    alert(
                        "Invalid Job Seeker Email or Password."
                    );

                    return false;

                }

            }


            return false;

        };

    });

</script>

</body>
</html>