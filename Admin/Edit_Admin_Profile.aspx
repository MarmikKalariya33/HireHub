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
        href="<%= ResolveUrl("~/Assets/css/edit_admin_profile.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="admin-profile-page">


        <!-- ==============================
             PAGE HEADER
        ============================== -->

        <div class="profile-page-header">

            <h1>
                Edit Admin Profile
            </h1>

        </div>


        <!-- ==============================
             EDIT PROFILE CARD
        ============================== -->

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
                            CssClass="change-photo-btn" />


                        <asp:Button
                            ID="btnRemovePhoto"
                            runat="server"
                            Text="Remove"
                            CssClass="remove-photo-btn" />


                    </div>

                </div>


            </div>


            <!-- DIVIDER -->

            <div class="profile-divider"></div>


            <!-- ==============================
                 PROFILE FORM
            ============================== -->

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

                    </div>


                </div>


            </div>


            <!-- BOTTOM DIVIDER -->

            <div class="profile-bottom-divider"></div>


            <!-- ==============================
                 ACTION BUTTONS
            ============================== -->

            <div class="profile-actions">


                <asp:Button
                    ID="btnCancel_Click"
                    runat="server"
                    Text="Cancel"
                    CssClass="cancel-btn"
                     />


                <asp:Button
                    ID="btnSaveChanges"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-changes-btn"
                     />


            </div>


        </div>


    </div>


</asp:Content>