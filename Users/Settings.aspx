<%@ Page Title="Settings"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Settings.aspx.cs"
    Inherits="Job_Portal.Users.Settings" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css" />

    <!-- Settings CSS -->
    <link href="<%= ResolveUrl("~/Assets/Userscss/settings.css") %>"
          rel="stylesheet"
          type="text/css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ==========================================
         SETTINGS PAGE
    =========================================== -->

    <div class="settings-page">


        <!-- ==========================================
             PAGE HEADER
        =========================================== -->

        <div class="settings-header">

            <h1>Settings</h1>

        </div>


        <!-- ==========================================
             SETTINGS GRID
        =========================================== -->

        <div class="settings-grid">


            <!-- ======================================
                 CHANGE PASSWORD CARD
            ======================================= -->

            <div class="settings-card password-card">


                <h2>Change Password</h2>


                <!-- CURRENT PASSWORD -->

                <div class="form-group">

                    <label for="<%= txtCurrentPassword.ClientID %>">
                        Current Password
                    </label>

                    <div class="password-input-wrapper">

                        <asp:TextBox
                            ID="txtCurrentPassword"
                            runat="server"
                            CssClass="settings-input"
                            TextMode="Password"
                            placeholder="Enter current password">
                        </asp:TextBox>

                        <button
                            type="button"
                            class="password-eye"
                            onclick="togglePassword('<%= txtCurrentPassword.ClientID %>', this)">

                            <i class="bi bi-eye"></i>

                        </button>

                    </div>

                </div>


                <!-- NEW PASSWORD -->

                <div class="form-group">

                    <label for="<%= txtNewPassword.ClientID %>">
                        New Password
                    </label>

                    <div class="password-input-wrapper">

                        <asp:TextBox
                            ID="txtNewPassword"
                            runat="server"
                            CssClass="settings-input"
                            TextMode="Password"
                            placeholder="Enter new password">
                        </asp:TextBox>

                        <button
                            type="button"
                            class="password-eye"
                            onclick="togglePassword('<%= txtNewPassword.ClientID %>', this)">

                            <i class="bi bi-eye"></i>

                        </button>

                    </div>

                </div>


                <!-- CONFIRM PASSWORD -->

                <div class="form-group">

                    <label for="<%= txtConfirmPassword.ClientID %>">
                        Confirm Password
                    </label>

                    <div class="password-input-wrapper">

                        <asp:TextBox
                            ID="txtConfirmPassword"
                            runat="server"
                            CssClass="settings-input"
                            TextMode="Password"
                            placeholder="Confirm new password">
                        </asp:TextBox>

                        <button
                            type="button"
                            class="password-eye"
                            onclick="togglePassword('<%= txtConfirmPassword.ClientID %>', this)">

                            <i class="bi bi-eye"></i>

                        </button>

                    </div>

                </div>


                <!-- UPDATE PASSWORD -->

                <asp:Button
                    ID="btnUpdatePassword"
                    runat="server"
                    Text="Update Password"
                    CssClass="update-password-btn"
                    OnClientClick="return validatePassword();" />


            </div>



            <!-- ======================================
                 ACCOUNT ACTIONS CARD
            ======================================= -->

            <div class="settings-card account-card">


                <h2>Account Actions</h2>


                <div class="account-buttons">


                    <!-- LOGOUT -->

                    <asp:Button
                        ID="btnLogout"
                        runat="server"
                        Text="Logout"
                        CssClass="logout-btn"
                        CausesValidation="false"
                        OnClientClick="return confirmLogout();" />


                    <!-- DELETE ACCOUNT -->

                    <asp:Button
                        ID="btnDeleteAccount"
                        runat="server"
                        Text="Delete Account"
                        CssClass="delete-account-btn"
                        CausesValidation="false"
                        OnClientClick="return confirmDeleteAccount();" />


                </div>


            </div>


        </div>


    </div>



    <!-- ==========================================
         JAVASCRIPT
    =========================================== -->

    <script type="text/javascript">

        // ==========================================
        // SHOW / HIDE PASSWORD
        // ==========================================

        function togglePassword(inputId, button) {

            var input = document.getElementById(inputId);

            var icon = button.querySelector("i");


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



        // ==========================================
        // PASSWORD VALIDATION
        // ==========================================

        function validatePassword() {

            var currentPassword =
                document.getElementById(
                    "<%= txtCurrentPassword.ClientID %>"
                ).value;

            var newPassword =
                document.getElementById(
                    "<%= txtNewPassword.ClientID %>"
                ).value;

            var confirmPassword =
                document.getElementById(
                    "<%= txtConfirmPassword.ClientID %>"
                ).value;


            if (currentPassword.trim() === "") {

                alert("Please enter your current password.");

                return false;

            }


            if (newPassword.trim() === "") {

                alert("Please enter your new password.");

                return false;

            }


            if (newPassword.length < 6) {

                alert("New password must contain at least 6 characters.");

                return false;

            }


            if (confirmPassword.trim() === "") {

                alert("Please confirm your new password.");

                return false;

            }


            if (newPassword !== confirmPassword) {

                alert("New password and confirm password do not match.");

                return false;

            }


            return true;

        }



        // ==========================================
        // LOGOUT CONFIRMATION
        // ==========================================

        function confirmLogout() {

            return confirm(
                "Are you sure you want to logout?"
            );

        }



        // ==========================================
        // DELETE ACCOUNT CONFIRMATION
        // ==========================================

        function confirmDeleteAccount() {

            return confirm(
                "Are you sure you want to delete your account? This action cannot be undone."
            );

        }

    </script>


</asp:Content>