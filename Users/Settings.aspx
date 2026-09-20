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



                <!-- ==================================
                     CURRENT PASSWORD
                =================================== -->

                <div class="form-group">

                    <label for="<%= txtCurrentPassword.ClientID %>">

                        Current Password
                        <span class="required-star">*</span>

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


                    <!-- REQUIRED VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvCurrentPassword"
                        runat="server"
                        ControlToValidate="txtCurrentPassword"
                        ErrorMessage="Current Password is Required"
                        CssClass="validation-error"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>


                </div>



                <!-- ==================================
                     NEW PASSWORD
                =================================== -->

                <div class="form-group">

                    <label for="<%= txtNewPassword.ClientID %>">

                        New Password
                        <span class="required-star">*</span>

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


                    <!-- REQUIRED VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvNewPassword"
                        runat="server"
                        ControlToValidate="txtNewPassword"
                        ErrorMessage="New Password is Required"
                        CssClass="validation-error"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>


                    <!-- PASSWORD LENGTH VALIDATION -->

                    <asp:RegularExpressionValidator
                        ID="revNewPassword"
                        runat="server"
                        ControlToValidate="txtNewPassword"
                        ValidationExpression="^.{6,}$"
                        ErrorMessage="Password must contain at least 6 characters"
                        CssClass="validation-error"
                        Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>


                </div>



                <!-- ==================================
                     CONFIRM PASSWORD
                =================================== -->

                <div class="form-group">

                    <label for="<%= txtConfirmPassword.ClientID %>">

                        Confirm Password
                        <span class="required-star">*</span>

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


                    <!-- REQUIRED VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ErrorMessage="Confirm Password is Required"
                        CssClass="validation-error"
                        Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>


                    <!-- PASSWORD MATCH VALIDATION -->

                    <asp:CompareValidator
                        ID="cvConfirmPassword"
                        runat="server"
                        ControlToValidate="txtConfirmPassword"
                        ControlToCompare="txtNewPassword"
                        Operator="Equal"
                        Type="String"
                        ErrorMessage="New Password and Confirm Password must be same"
                        CssClass="validation-error"
                        Display="Dynamic" ForeColor="Red"></asp:CompareValidator>


                </div>



                <!-- ==================================
                     UPDATE PASSWORD BUTTON
                =================================== -->

               <asp:Button
    ID="btnUpdatePassword"
    runat="server"
    Text="Update Password"
    CssClass="update-password-btn"
    CausesValidation="true"
    OnClick="btnUpdatePassword_Click" />


            </div>
            <!-- END CHANGE PASSWORD CARD -->



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
                    PostBackUrl="~/Accounts/Login.aspx" />



                    <!-- DELETE ACCOUNT -->

                    <asp:Button
                        ID="btnDeleteAccount"
                        runat="server"
                        Text="Delete Account"
                        CssClass="delete-account-btn"
                        CausesValidation="false"
                        PostBackUrl="~/Accounts/Login.aspx"/>


                </div>


            </div>
            <!-- END ACCOUNT ACTIONS CARD -->


        </div>
        <!-- END SETTINGS GRID -->


    </div>
    <!-- END SETTINGS PAGE -->



    <!-- ==========================================
         PASSWORD SHOW / HIDE
    =========================================== -->

    <script type="text/javascript">

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

    </script>


</asp:Content>