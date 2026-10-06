<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="NewPassword.aspx.cs"
    Inherits="Job_Portal.Accounts.NewPassword" %>

<!DOCTYPE html>

<html>
<head runat="server">

    <title>HireHub - New Password</title>

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

        <!-- =====================================================
             LEFT SIDE
        ====================================================== -->

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
                    Create a new password and secure your
                    HireHub account.
                </p>

                <div class="left-features">

                    Secure Account
                    <span>•</span>

                    Easy Access
                    <span>•</span>

                    Find Jobs

                </div>

            </div>

        </div>


        <!-- =====================================================
             RIGHT SIDE
        ====================================================== -->

        <div class="forgot-right">

            <div class="forgot-box"
                 style="width: 100%; max-width: 505px;">


                <!-- =================================================
                     HEADER
                ================================================== -->

                <div class="forgot-header">

                    <div class="forgot-icon">

                        <i class="bi bi-shield-lock"></i>

                    </div>

                    <h2>
                        Create New Password
                    </h2>

                    <p>
                        Enter your new password below.
                    </p>

                </div>


                <!-- =================================================
                     NEW PASSWORD
                ================================================== -->

                <div class="form-group">

                    <label>
                        New Password
                        <span style="color: red;">*</span>
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock input-icon"></i>


                        <asp:TextBox
                            ID="txtNewPassword"
                            runat="server"
                            CssClass="forgot-input"
                            TextMode="Password"
                            placeholder="Enter new password">
                        </asp:TextBox>

                    </div>


                    <!-- REQUIRED -->

                    <asp:RequiredFieldValidator
                        ID="rfvNewPassword"
                        runat="server"
                        ControlToValidate="txtNewPassword"
                        ErrorMessage="New Password is required."
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>


                    <!-- MINIMUM 8 CHARACTERS -->

                    <asp:RegularExpressionValidator
                        ID="revNewPassword"
                        runat="server"
                        ControlToValidate="txtNewPassword"
                        ValidationExpression="^.{8,}$"
                        ErrorMessage="Password must be at least 8 characters."
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =================================================
                     CONFIRM PASSWORD
                ================================================== -->

                <div class="form-group">

                    <label>
                        Confirm Password
                        <span style="color: red;">*</span>
                    </label>


                    <div class="input-wrapper">

                        <i class="bi bi-lock-fill input-icon"></i>


                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="forgot-input"
                            TextMode="Password"
                            placeholder="Confirm new password">
                        </asp:TextBox>

                    </div>


                    <!-- REQUIRED -->

                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Confirm Password is required."
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>


                    <!-- PASSWORD MATCH -->

                    <asp:CompareValidator
                        ID="cvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtNewPassword"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="Passwords do not match."
                        Display="Dynamic"
                        ForeColor="Red">
                    </asp:CompareValidator>

                </div>


                <!-- =================================================
                     RESET BUTTON
                ================================================== -->

                <asp:Button
                    ID="btnReset"
                    runat="server"
                    Text="Reset Password"
                    CssClass="reset-button"
                    PostBackUrl="~/Accounts/Login.aspx" />


                <!-- =================================================
                     BACK TO LOGIN
                ================================================== -->

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