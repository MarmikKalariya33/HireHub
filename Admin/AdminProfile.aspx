<%@ Page Title="Admin Profile"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="AdminProfile.aspx.cs"
    Inherits="Job_Portal.Admin.AdminProfile" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Assets/css/admin_profile.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="admin-profile-page">

        <!-- Page Title -->
        <div class="profile-page-header">
            <h1>Admin Profile</h1>
        </div>


        <!-- Profile Card -->
        <div class="profile-card">

            <!-- Profile Header -->
            <div class="profile-header">

                <div class="profile-avatar">
                    A
                </div>


                <div class="profile-heading">

                    <h2>Admin User</h2>

                    <p>
                        Super Admin
                        <span class="separator">•</span>
                        HireHub HQ
                    </p>

                </div>

            </div>


            <!-- Divider -->
            <div class="profile-divider"></div>


            <!-- Profile Information -->
            <div class="profile-information">

                <h3>Profile Information</h3>


                <!-- Full Name -->
                <div class="profile-item">

                    <div class="profile-label">
                        Full Name
                    </div>

                    <div class="profile-value">
                        Admin User
                    </div>

                </div>


                <!-- Role -->
                <div class="profile-item">

                    <div class="profile-label">
                        Role
                    </div>

                    <div class="profile-value">
                        Super Admin
                    </div>

                </div>


                <!-- Email -->
                <div class="profile-item">

                    <div class="profile-label">
                        Email Address
                    </div>

                    <div class="profile-value email-value">
                        admin@hirehub.com
                    </div>

                </div>


                <!-- Phone -->
                <div class="profile-item">

                    <div class="profile-label">
                        Phone Number
                    </div>

                    <div class="profile-value">
                        +91 99887 76655
                    </div>

                </div>


                <!-- Joined Date -->
                <div class="profile-item">

                    <div class="profile-label">
                        Joined On
                    </div>

                    <div class="profile-value">
                        March 1, 2023
                    </div>

                </div>

            </div>


            <!-- Divider -->
            <div class="profile-bottom-divider"></div>


            <!-- Edit Button -->
            <div class="profile-actions">

                <asp:Button
                    ID="btnEditProfile"
                    runat="server"
                    Text="Edit Profile"
                    CssClass="edit-profile-btn"
                    OnClick="btnEditProfile_Click" />

            </div>

        </div>

    </div>

</asp:Content>