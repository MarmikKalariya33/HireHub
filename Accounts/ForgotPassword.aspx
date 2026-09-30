<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="ForgotPassword.aspx.cs"
    Inherits="Job_Portal.Accounts.ForgotPassword" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HireHub - Forgot Password</title>

    <meta charset="utf-8" />

    <meta name="viewport"
          content="width=device-width, initial-scale=1" />

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" />

    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.css" />

    <link rel="stylesheet"
          href="<%= ResolveUrl("~/Assets/Admincss/forgotpassword.css") %>" />

</head>

<body>

<form id="form1" runat="server">

    <div class="forgot-page">

        <!-- LEFT SIDE -->

        <div class="forgot-left">

            <div class="brand-area">

                <img
                    src="<%= ResolveUrl("~/Assets/images/logo.png") %>"
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


        <!-- RIGHT SIDE -->

        <div class="forgot-right">

            <div class="forgot-box">

                <div class="forgot-header">

                    <div class="forgot-icon">

                        <i class="bi bi-lock"></i>

                    </div>

                    <h2>
                        Forgot Password?
                    </h2>

                    <p>
                        Enter your registered email address
                        to continue.
                    </p>

                </div>


                <!-- EMAIL -->

                <div class="form-group">

                    <label>
                        Email Address
                    </label>

                    <div class="input-wrapper">

                        <i class="bi bi-envelope input-icon"></i>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="forgot-input"
                            placeholder="Enter your email address">
                        </asp:TextBox>

                    </div>

                </div>


                <!-- CONTINUE -->

                <asp:Button
                    ID="btnContinue"
                    runat="server"
                    Text="Continue"
                    CssClass="reset-button"
                    PostBackUrl="~/Accounts/NewPassword.aspx" />


                <!-- BACK TO LOGIN -->

                <asp:HyperLink
                    ID="lnkBackLogin"
                    runat="server"
                    NavigateUrl="~/Accounts/Login.aspx"
                    CssClass="back-login">

                    <i class="bi bi-arrow-left"></i>

                    Back to Login

                </asp:HyperLink>

            </div>

        </div>

    </div>

</form>

</body>
</html>