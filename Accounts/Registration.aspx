<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Job_Portal.Accounts.Registration" %>


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
          href="../Assets/css/register.css" />

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

                        <div class="account-tab">
                            Admin
                        </div>

                        <div class="account-tab">
                            Employer
                        </div>

                        <div class="account-tab active">
                            Job Seeker
                        </div>

                    </div>


                    <!-- =================================================
                         FULL NAME
                    ================================================== -->

                    <div class="form-group">

                        <label>
                            Full Name
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-person input-icon"></i>

                            <input type="text"
                                   class="form-input"
                                   placeholder="e.g. sumit kumar" />

                        </div>

                    </div>


                    <!-- =================================================
                         EMAIL
                    ================================================== -->

                    <div class="form-group">

                        <label>
                            Email Address
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-envelope input-icon"></i>

                            <input type="email"
                                   class="form-input"
                                   placeholder="sumitkumar12@gmail.com" />

                        </div>

                    </div>


                    <!-- =================================================
                         PHONE
                    ================================================== -->

                    <div class="form-group">

                        <label>
                            Phone Number
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-telephone-inbound input-icon"></i>

                            <input type="text"
                                   class="form-input"
                                   placeholder="+91 1234567899" />

                        </div>

                    </div>


                    <!-- =================================================
                         PASSWORD
                    ================================================== -->

                    <div class="form-group">

                        <label>
                            Password
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-lock input-icon"></i>

                            <input type="password"
                                   id="password"
                                   class="form-input password-input"
                                   placeholder="Minimum 8 characters" />

                            <i class="bi bi-eye password-eye"
                               onclick="togglePassword('password', this)">
                            </i>

                        </div>

                    </div>


                    <!-- =================================================
                         CONFIRM PASSWORD
                    ================================================== -->

                    <div class="form-group">

                        <label>
                            Confirm Password
                        </label>

                        <div class="input-wrapper">

                            <i class="bi bi-lock input-icon"></i>

                            <input type="password"
                                   id="confirmPassword"
                                   class="form-input password-input"
                                   placeholder="Re-enter your password" />

                            <i class="bi bi-eye password-eye"
                               onclick="togglePassword('confirmPassword', this)">
                            </i>

                        </div>

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

                    <button type="button"
                            class="register-button">

                        Register Account

                    </button>


                    <!-- =================================================
                         LOGIN
                    ================================================== -->

                    <div class="login-section">

                        <span>
                            Already have an account?
                        </span>

                        <a href="#">
                            Login
                        </a>

                    </div>

                </div>

            </div>

        </div>

    </form>


    <!-- =========================================================
         PASSWORD SHOW / HIDE
    ========================================================== -->

    <script>

        function togglePassword(inputId, icon) {

            var input = document.getElementById(inputId);

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

    </script>

</body>

</html>
