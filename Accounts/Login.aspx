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

    <style>

        /* =========================================
           REGISTRATION LINK
        ========================================= */

        .register-section {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #777;
        }

        .register-link {
            margin-left: 5px;
            color: #456276;
            font-weight: 600;
            text-decoration: none;
            transition: all 0.3s ease;
        }

        .register-link:hover {
            color: #6096BA;
            text-decoration: underline;
        }

    </style>

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


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label for="email">
                            Email Address
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-envelope input-icon"></i>

                            <input
                                type="email"
                                id="email"
                                class="login-input"
                                placeholder="Enter your email"
                                value="admin@gmail.com"
                                autocomplete="email" />

                        </div>

                    </div>


                    <!-- PASSWORD -->

                    <div class="form-group">

                        <label for="password">
                            Password
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-lock input-icon"></i>

                            <input
                                type="password"
                                id="password"
                                class="login-input password-input"
                                placeholder="Enter your password"
                                value="admin123"
                                autocomplete="current-password" />


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
                            href="ForgotPassword.aspx"
                            class="forgot-link">

                            Forgot Password?

                        </a>

                    </div>


                    <!-- =========================================
                         LOGIN BUTTON
                    ========================================= -->

                    <button
                        type="button"
                        id="loginButton"
                        class="login-button">

                        Login to Account

                    </button>


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
            document.getElementById("email");

        const passwordInput =
            document.getElementById("password");

        const passwordToggle =
            document.getElementById("passwordToggle");

        const passwordIcon =
            document.getElementById("passwordIcon");

        const loginButton =
            document.getElementById("loginButton");


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
           LOGIN BUTTON
        ========================================= */

        loginButton.addEventListener("click", function () {


            const email =
                emailInput.value.trim();

            const password =
                passwordInput.value.trim();


            /* =========================================
               EMAIL VALIDATION
            ========================================= */

            if (email === "") {

                alert("Please enter your email address.");

                emailInput.focus();

                return;

            }


            /* =========================================
               PASSWORD VALIDATION
            ========================================= */

            if (password === "") {

                alert("Please enter your password.");

                passwordInput.focus();

                return;

            }


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

                }

                else {

                    alert(
                        "Invalid Admin Email or Password."
                    );

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

                }

                else {

                    alert(
                        "Invalid Employer Email or Password."
                    );

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

                }

                else {

                    alert(
                        "Invalid Job Seeker Email or Password."
                    );

                }

            }

        });

    });

</script>


</body>
</html>