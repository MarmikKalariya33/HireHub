<%@ Page Title="Edit Admin Profile"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Admin_Profile.aspx.cs"
    Inherits="Job_Portal.Admin.Edit_Admin_Profile" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/edit_admin_profile.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="admin-profile-page">


        <div class="profile-page-header">

            <h1>
                Edit Admin Profile
            </h1>

        </div>


        <div class="profile-card">


            <!-- PROFILE PHOTO -->

            <div class="profile-header">

                <div class="profile-avatar">
                    A
                </div>

                <div class="profile-heading">

                    <h2>
                        Profile Photo
                    </h2>

                    <div class="profile-photo-actions">

                        <asp:Button
                            ID="btnChangePhoto"
                            runat="server"
                            Text="Change Photo"
                            CssClass="change-photo-btn"
                            CausesValidation="false" />

                        <asp:Button
                            ID="btnRemovePhoto"
                            runat="server"
                            Text="Remove"
                            CssClass="remove-photo-btn"
                            CausesValidation="false" />

                    </div>

                </div>

            </div>


            <div class="profile-divider"></div>


            <!-- PROFILE FORM -->

            <div class="profile-information">


                <!-- FORM ROW 1 -->

                <div class="profile-form-row">


                    <!-- FULL NAME -->

                    <div class="profile-form-group">

                        <label>
                            Full Name
                            <span class="required">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="profile-input"
                            Text="Super Admin">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvFullName"
                            runat="server"
                            ControlToValidate="txtFullName"
                            ErrorMessage="Full name is required."
                            ValidationGroup="ProfileValidation"
                            Display="Dynamic"
                            CssClass="validation-error">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- EMAIL -->

                    <div class="profile-form-group">

                        <label>
                            Email Address
                            <span class="required">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="profile-input"
                            Text="admin@hirehub.com">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email address is required."
                            ValidationGroup="ProfileValidation"
                            Display="Dynamic"
                            CssClass="validation-error">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revEmail"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Enter a valid email address."
                            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                            ValidationGroup="ProfileValidation"
                            Display="Dynamic"
                            CssClass="validation-error">
                        </asp:RegularExpressionValidator>

                    </div>


                </div>


                <!-- FORM ROW 2 -->

                <div class="profile-form-row">


                    <!-- PHONE -->

                    <div class="profile-form-group">

                        <label>
                            Phone Number
                        </label>

                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="profile-input"
                            Text="+91 99887 76655">
                        </asp:TextBox>

                        <asp:RegularExpressionValidator
                            ID="revPhone"
                            runat="server"
                            ControlToValidate="txtPhone"
                            ErrorMessage="Enter a valid phone number."
                            ValidationExpression="^[0-9+\-\s()]{10,20}$"
                            ValidationGroup="ProfileValidation"
                            Display="Dynamic"
                            CssClass="validation-error">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- ROLE -->

                    <div class="profile-form-group">

                        <label>
                            Role/Position
                            <span class="required">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtRole"
                            runat="server"
                            CssClass="profile-input"
                            Text="Super Admin">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvRole"
                            runat="server"
                            ControlToValidate="txtRole"
                            ErrorMessage="Role/Position is required."
                            ValidationGroup="ProfileValidation"
                            Display="Dynamic"
                            CssClass="validation-error">
                        </asp:RequiredFieldValidator>

                    </div>


                </div>


            </div>


            <div class="profile-bottom-divider"></div>


            <!-- ACTION BUTTONS -->

            <div class="profile-actions">

                <asp:Button
                    ID="btnCancel"
                    runat="server"
                    Text="Cancel"
                    CssClass="cancel-btn"
                    CausesValidation="false"
                    PostBackUrl="~/Admin/AdminProfile.aspx" />

                <asp:Button
                    ID="btnSaveChanges"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-changes-btn"
                    ValidationGroup="ProfileValidation"
                    PostBackUrl="~/Admin/AdminProfile.aspx" />

            </div>


        </div>


    </div>

</asp:Content>