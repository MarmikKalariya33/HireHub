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

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/css/login.css") %>" />

</head>

<body>

<form id="form1" runat="server">

    <div class="login-page">

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
                    Find jobs <span>•</span> Apply Easily <span>•</span> Grow Professionally
                </div>

            </div>

        </div>


        <div class="login-right">

            <div class="login-box">

                <div class="welcome-section">

                    <h2>Welcome</h2>

                    <p>
                        Select your role and enter your details to sign in
                    </p>

                </div>


                <div class="role-tabs">

                    <button type="button"
                            class="role-tab active"
                            data-role="Admin">
                        Admin
                    </button>

                    <button type="button"
                            class="role-tab"
                            data-role="Employer">
                        Employer
                    </button>

                    <button type="button"
                            class="role-tab"
                            data-role="Job Seeker">
                        Job Seeker
                    </button>

                </div>


                <div class="login-form">

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
                                value="sumitkumar12@gmail.com"
                                autocomplete="email" />

                        </div>

                    </div>


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
                                value="Password123"
                                autocomplete="current-password" />

                            <button
                                type="button"
                                class="password-toggle"
                                id="passwordToggle">

                                <i class="bi bi-eye"
                                   id="passwordIcon"></i>

                            </button>

                        </div>

                    </div>


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


                        <a href="#"
                           class="forgot-link">
                            Forgot Password?
                        </a>

                    </div>


                    <button
    type="button"
    class="login-button"
    onclick="window.location.href='<%= ResolveUrl("~/Admin/Dashboard.aspx") %>'">

    Login to Account

</button>

                </div>

            </div>

        </div>

    </div>

</form>


<script>

    document.addEventListener("DOMContentLoaded", function () {

        const roleTabs =
            document.querySelectorAll(".role-tab");

        const password =
            document.getElementById("password");

        const passwordToggle =
            document.getElementById("passwordToggle");

        const passwordIcon =
            document.getElementById("passwordIcon");

        const loginButton =
            document.getElementById("loginButton");


        roleTabs.forEach(function (tab) {

            tab.addEventListener("click", function () {

                roleTabs.forEach(function (item) {
                    item.classList.remove("active");
                });

                tab.classList.add("active");

            });

        });


        passwordToggle.addEventListener("click", function () {

            if (password.type === "password") {

                password.type = "text";

                passwordIcon.classList.remove("bi-eye");

                passwordIcon.classList.add("bi-eye-slash");

            }
            else {

                password.type = "password";

                passwordIcon.classList.remove("bi-eye-slash");

                passwordIcon.classList.add("bi-eye");

            }

        });


        loginButton.addEventListener("click", function () {

            const email =
                document.getElementById("email").value.trim();

            const passwordValue =
                password.value.trim();

            if (email === "") {

                alert("Please enter your email address.");

                document.getElementById("email").focus();

                return;

            }

            if (passwordValue === "") {

                alert("Please enter your password.");

                password.focus();

                return;

            }

            alert("Login functionality will be connected to the backend later.");

        });

    });

</script>

</body>
</html>