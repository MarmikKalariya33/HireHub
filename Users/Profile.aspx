<%@ Page Title="My Profile"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Profile.aspx.cs"
    Inherits="Job_Portal.Users.Profile" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Userscss/profile.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ==============================
         PROFILE PAGE
    =============================== -->

    <div class="profile-page">


        <!-- PAGE TITLE -->

        <h1 class="page-title">
            My Profile
        </h1>


        <!-- PROFILE CARD -->

        <div class="profile-card">


            <!-- ==============================
                 PROFILE HEADER
            =============================== -->

            <div class="profile-header">


                <!-- PROFILE IMAGE / INITIALS -->

                <div class="profile-avatar">
                    RS
                </div>


                <!-- NAME AND ROLE -->

                <div class="profile-main-info">

                    <h2>
                        Rahul Sharma
                    </h2>

                    <p>
                        Job Seeker
                        <span>•</span>
                        Senior React Developer
                    </p>

                </div>


                <!-- EDIT PROFILE BUTTON -->

                <div class="profile-header-action">

                    <a href="Edit_Profile.aspx"
                       class="edit-profile-btn">

                        Edit Profile

                    </a>

                </div>


            </div>


            <!-- ==============================
                 DIVIDER
            =============================== -->

            <div class="profile-divider">
            </div>


            <!-- ==============================
                 PROFILE INFORMATION
            =============================== -->

            <div class="profile-section">


                <h3>
                    Profile Information
                </h3>


                <div class="profile-information-grid">


                    <!-- EMAIL -->

                    <div class="profile-information-item">

                        <span class="information-label">
                            Email Address
                        </span>

                        <span class="information-value">
                            rahul@email.com
                        </span>

                    </div>


                    <!-- LOCATION -->

                    <div class="profile-information-item">

                        <span class="information-label">
                            Location
                        </span>

                        <span class="information-value">
                            Mumbai, Maharashtra
                        </span>

                    </div>


                    <!-- PHONE -->

                    <div class="profile-information-item">

                        <span class="information-label">
                            Phone Number
                        </span>

                        <span class="information-value">
                            +91 98765 43210
                        </span>

                    </div>


                    <!-- EXPERIENCE -->

                    <div class="profile-information-item">

                        <span class="information-label">
                            Total Experience
                        </span>

                        <span class="information-value">
                            4 years
                        </span>

                    </div>


                </div>

            </div>


            <!-- ==============================
                 TECHNICAL SKILLS
            =============================== -->

            <div class="technical-skills-section">


                <h3>
                    Technical Skills
                </h3>


                <div class="skills-list">


                    <span class="skill-tag">
                        React
                    </span>


                    <span class="skill-tag">
                        JavaScript
                    </span>


                    <span class="skill-tag">
                        TypeScript
                    </span>


                    <span class="skill-tag">
                        Node.js
                    </span>


                    <span class="skill-tag">
                        Python
                    </span>


                </div>

            </div>


        </div>


    </div>

</asp:Content>