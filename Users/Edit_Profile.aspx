<%@ Page Title="Edit Profile"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Profile.aspx.cs"
    Inherits="Job_Portal.Users.Edit_Profile" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Userscss/edit_profile.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- =========================================
         EDIT PROFILE PAGE
    ========================================== -->

    <div class="edit-profile-page">


        <!-- PAGE HEADER -->

        <div class="edit-profile-heading">

            <h1>
                Edit Profile
            </h1>

            <p>
                Keep your profile updated to match with the best career opportunities.
            </p>

        </div>


        <!-- PROFILE FORM CARD -->

        <div class="edit-profile-card">


            <!-- =========================================
                 PROFILE PHOTO
            ========================================== -->

            <div class="photo-section">

                <div class="profile-photo">
                    RS
                </div>


                <div class="photo-content">

                    <h2>
                        Profile Photo
                    </h2>


                    <div class="photo-buttons">

                        <asp:FileUpload
                            ID="fuProfilePhoto"
                            runat="server"
                            CssClass="photo-upload" />

                        <asp:Button
                            ID="btnRemovePhoto"
                            runat="server"
                            Text="Remove"
                            CssClass="remove-photo-btn"
                            CausesValidation="false" />

                    </div>

                </div>

            </div>


            <div class="section-divider">
            </div>


            <!-- =========================================
                 PERSONAL INFORMATION
            ========================================== -->

            <div class="form-section">

                <h2 class="section-title">
                    Personal Information
                </h2>


                <div class="form-grid">


                    <!-- FULL NAME -->

                    <div class="form-group">

                        <label>
                            Full Name
                        </label>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="form-control"
                            Text="Rahul Sharma">
                        </asp:TextBox>

                    </div>


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label>
                            Email Address
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="form-control"
                            Text="rahul@email.com">
                        </asp:TextBox>

                    </div>


                    <!-- PHONE -->

                    <div class="form-group">

                        <label>
                            Phone Number
                        </label>

                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="form-control"
                            Text="+91 98765 43210">
                        </asp:TextBox>

                    </div>


                    <!-- DATE OF BIRTH -->

                    <div class="form-group">

                        <label>
                            Date of Birth
                        </label>

                        <asp:TextBox
                            ID="txtDateOfBirth"
                            runat="server"
                            CssClass="form-control"
                            placeholder="DD/MM/YYYY">
                        </asp:TextBox>

                    </div>


                    <!-- GENDER -->

                    <div class="form-group">

                        <label>
                            Gender
                        </label>

                        <asp:DropDownList
                            ID="ddlGender"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem Text="Male"
                                Value="Male"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem Text="Female"
                                Value="Female">
                            </asp:ListItem>

                            <asp:ListItem Text="Other"
                                Value="Other">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- COUNTRY -->

                    <div class="form-group">

                        <label>
                            Country
                        </label>

                        <asp:TextBox
                            ID="txtCountry"
                            runat="server"
                            CssClass="form-control"
                            Text="India">
                        </asp:TextBox>

                    </div>


                    <!-- CITY -->

                    <div class="form-group">

                        <label>
                            City
                        </label>

                        <asp:TextBox
                            ID="txtCity"
                            runat="server"
                            CssClass="form-control"
                            Text="Mumbai">
                        </asp:TextBox>

                    </div>


                    <!-- STATE -->

                    <div class="form-group">

                        <label>
                            State
                        </label>

                        <asp:TextBox
                            ID="txtState"
                            runat="server"
                            CssClass="form-control"
                            Text="Maharashtra">
                        </asp:TextBox>

                    </div>


                </div>


                <!-- ADDRESS -->

                <div class="form-group full-width">

                    <label>
                        Address
                    </label>

                    <asp:TextBox
                        ID="txtAddress"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter your full street address">
                    </asp:TextBox>

                </div>


                <!-- ABOUT ME -->

                <div class="form-group full-width">

                    <label>
                        About Me
                    </label>

                    <asp:TextBox
                        ID="txtAboutMe"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="5"
                        placeholder="Introduce yourself, your career aspirations, and what drives you...">
                    </asp:TextBox>

                </div>

            </div>


            <div class="section-divider">
            </div>


            <!-- =========================================
                 PROFESSIONAL INFORMATION
            ========================================== -->

            <div class="form-section">

                <h2 class="section-title">
                    Professional Information
                </h2>


                <div class="form-grid">


                    <!-- CURRENT JOB TITLE -->

                    <div class="form-group">

                        <label>
                            Current Job Title
                        </label>

                        <asp:TextBox
                            ID="txtJobTitle"
                            runat="server"
                            CssClass="form-control"
                            Text="Senior React Developer">
                        </asp:TextBox>

                    </div>


                    <!-- TOTAL EXPERIENCE -->

                    <div class="form-group">

                        <label>
                            Total Experience
                        </label>

                        <asp:DropDownList
                            ID="ddlExperience"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem
                                Text="Fresher"
                                Value="0">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="1 Year"
                                Value="1">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="2 Years"
                                Value="2">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="3 Years"
                                Value="3">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="4 Years"
                                Value="4"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="5+ Years"
                                Value="5">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="10+ Years"
                                Value="10">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- EXPECTED SALARY -->

                    <div class="form-group">

                        <label>
                            Expected Salary (LPA)
                        </label>

                        <asp:TextBox
                            ID="txtExpectedSalary"
                            runat="server"
                            CssClass="form-control"
                            placeholder="e.g. 15 LPA">
                        </asp:TextBox>

                    </div>


                    <!-- PREFERRED JOB TYPE -->

                    <div class="form-group">

                        <label>
                            Preferred Job Type
                        </label>

                        <asp:DropDownList
                            ID="ddlJobType"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem
                                Text="Full Time"
                                Value="Full Time"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Part Time"
                                Value="Part Time">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Remote"
                                Value="Remote">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Internship"
                                Value="Internship">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Contract"
                                Value="Contract">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- QUALIFICATION -->

                    <div class="form-group">

                        <label>
                            Highest Qualification
                        </label>

                        <asp:TextBox
                            ID="txtQualification"
                            runat="server"
                            CssClass="form-control"
                            placeholder="e.g. B.Tech Computer Engineering">
                        </asp:TextBox>

                    </div>


                    <!-- UNIVERSITY -->

                    <div class="form-group">

                        <label>
                            College / University
                        </label>

                        <asp:TextBox
                            ID="txtUniversity"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter college or university">
                        </asp:TextBox>

                    </div>


                </div>

            </div>


            <div class="section-divider">
            </div>


            <!-- =========================================
                 TECHNICAL SKILLS
            ========================================== -->

            <div class="form-section">

                <h2 class="section-title">
                    Technical Skills
                </h2>


                <div class="form-group full-width">

                    <label>
                        Skills
                    </label>

                    <asp:TextBox
                        ID="txtTechnicalSkills"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. C#, ASP.NET Core, SQL Server, JavaScript, React">
                    </asp:TextBox>

                    <span class="field-help">
                        Separate multiple skills using commas.
                    </span>

                </div>

            </div>


            <div class="section-divider">
            </div>


            <!-- =========================================
                 LANGUAGES
            ========================================== -->

            <div class="form-section">

                <h2 class="section-title">
                    Languages
                </h2>


                <div class="form-group full-width">

                    <label>
                        Languages Known
                    </label>

                    <asp:TextBox
                        ID="txtLanguages"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. English, Hindi, Gujarati">
                    </asp:TextBox>

                    <span class="field-help">
                        Separate multiple languages using commas.
                    </span>

                </div>

            </div>


            <div class="section-divider">
            </div>


            <!-- =========================================
                 SOCIAL / PORTFOLIO
            ========================================== -->

            <div class="form-section">

                <h2 class="section-title">
                    Social & Portfolio
                </h2>


                <div class="form-grid">


                    <!-- LINKEDIN -->

                    <div class="form-group">

                        <label>
                            LinkedIn Profile
                        </label>

                        <asp:TextBox
                            ID="txtLinkedIn"
                            runat="server"
                            CssClass="form-control"
                            placeholder="LinkedIn profile URL">
                        </asp:TextBox>

                    </div>


                    <!-- GITHUB -->

                    <div class="form-group">

                        <label>
                            GitHub Profile
                        </label>

                        <asp:TextBox
                            ID="txtGitHub"
                            runat="server"
                            CssClass="form-control"
                            placeholder="GitHub profile URL">
                        </asp:TextBox>

                    </div>


                </div>

            </div>


            <!-- =========================================
                 BOTTOM ACTIONS
            ========================================== -->

            <div class="section-divider">
            </div>


            <div class="profile-actions">


             


                <asp:Button
                    ID="btnCancel"
                    runat="server"
                    Text="Cancel"
                    CssClass="cancel-btn"
                    CausesValidation="false"
                    OnClientClick="history.back(); return false;" />


            </div>


        </div>

    </div>

</asp:Content>