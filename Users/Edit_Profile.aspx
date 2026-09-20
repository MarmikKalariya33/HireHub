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

    <style>

        .required-star {
            color: red;
            font-weight: bold;
            margin-left: 3px;
        }

        .validation-error {
            color: red !important;
            font-size: 13px;
            display: block;
            margin-top: 5px;
            line-height: 1.4;
        }

    </style>

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


        <!-- =========================================
             PROFILE CARD
        ========================================== -->

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
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtFullName"
                            runat="server"
                            CssClass="form-control"
                            Text="Rahul Sharma">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="NameRequiredValidator"
                            runat="server"
                            ControlToValidate="txtFullName"
                            ErrorMessage="Name is Required"
                            Text="Name is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="NameFormatValidator"
                            runat="server"
                            ControlToValidate="txtFullName"
                            ValidationExpression="^[a-zA-Z ]+$"
                            ErrorMessage="Only letters and spaces are allowed"
                            Text="Only letters and spaces are allowed"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- EMAIL -->

                    <div class="form-group">

                        <label>
                            Email Address
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtEmail"
                            runat="server"
                            CssClass="form-control"
                            Text="rahul@email.com"
                            TextMode="Email">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="EmailRequiredValidator"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is Required"
                            Text="Email is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="EmailFormatValidator"
                            runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$"
                            ErrorMessage="Enter a valid email address"
                            Text="Enter a valid email address"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- PHONE -->

                    <div class="form-group">

                        <label>
                            Phone Number
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtPhone"
                            runat="server"
                            CssClass="form-control"
                            Text="9876543210"
                            MaxLength="10">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="PhoneRequiredValidator"
                            runat="server"
                            ControlToValidate="txtPhone"
                            ErrorMessage="Phone Number is Required"
                            Text="Phone Number is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="PhoneFormatValidator"
                            runat="server"
                            ControlToValidate="txtPhone"
                            ValidationExpression="^[6-9][0-9]{9}$"
                            ErrorMessage="Enter a valid 10 digit phone number"
                            Text="Enter a valid 10 digit phone number"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- DATE OF BIRTH -->

                    <div class="form-group">

                        <label>
                            Date of Birth
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtDateOfBirth"
                            runat="server"
                            CssClass="form-control"
                            placeholder="DD/MM/YYYY">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="DOBRequiredValidator"
                            runat="server"
                            ControlToValidate="txtDateOfBirth"
                            ErrorMessage="Date of Birth is Required"
                            Text="Date of Birth is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="DOBFormatValidator"
                            runat="server"
                            ControlToValidate="txtDateOfBirth"
                            ValidationExpression="^(0[1-9]|[12][0-9]|3[01])/(0[1-9]|1[0-2])/[0-9]{4}$"
                            ErrorMessage="Enter date in DD/MM/YYYY format"
                            Text="Enter date in DD/MM/YYYY format"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- GENDER -->

                    <div class="form-group">

                        <label>
                            Gender
                            <span class="required-star">*</span>
                        </label>

                        <asp:DropDownList
                            ID="ddlGender"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem
                                Text="Male"
                                Value="Male"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Female"
                                Value="Female">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Other"
                                Value="Other">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- COUNTRY -->

                    <div class="form-group">

                        <label>
                            Country
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtCountry"
                            runat="server"
                            CssClass="form-control"
                            Text="India">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="CountryRequiredValidator"
                            runat="server"
                            ControlToValidate="txtCountry"
                            ErrorMessage="Country is Required"
                            Text="Country is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="CountryFormatValidator"
                            runat="server"
                            ControlToValidate="txtCountry"
                            ValidationExpression="^[a-zA-Z ]+$"
                            ErrorMessage="Only letters and spaces are allowed"
                            Text="Only letters and spaces are allowed"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- CITY -->

                    <div class="form-group">

                        <label>
                            City
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtCity"
                            runat="server"
                            CssClass="form-control"
                            Text="Mumbai">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="CityRequiredValidator"
                            runat="server"
                            ControlToValidate="txtCity"
                            ErrorMessage="City is Required"
                            Text="City is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="CityFormatValidator"
                            runat="server"
                            ControlToValidate="txtCity"
                            ValidationExpression="^[a-zA-Z ]+$"
                            ErrorMessage="Only letters and spaces are allowed"
                            Text="Only letters and spaces are allowed"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- STATE -->

                    <div class="form-group">

                        <label>
                            State
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtState"
                            runat="server"
                            CssClass="form-control"
                            Text="Maharashtra">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="StateRequiredValidator"
                            runat="server"
                            ControlToValidate="txtState"
                            ErrorMessage="State is Required"
                            Text="State is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="StateFormatValidator"
                            runat="server"
                            ControlToValidate="txtState"
                            ValidationExpression="^[a-zA-Z ]+$"
                            ErrorMessage="Only letters and spaces are allowed"
                            Text="Only letters and spaces are allowed"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>

                </div>


                <!-- ADDRESS -->

                <div class="form-group full-width">

                    <label>
                        Address
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtAddress"
                        runat="server"
                        CssClass="form-control"
                        placeholder="Enter your full street address">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="AddressRequiredValidator"
                        runat="server"
                        ControlToValidate="txtAddress"
                        ErrorMessage="Address is Required"
                        Text="Address is Required"
                        Display="Dynamic"
                        CssClass="validation-error"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- ABOUT ME -->

                <div class="form-group full-width">

                    <label>
                        About Me
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtAboutMe"
                        runat="server"
                        CssClass="form-control textarea-control"
                        TextMode="MultiLine"
                        Rows="5"
                        placeholder="Introduce yourself, your career aspirations, and what drives you...">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="AboutMeRequiredValidator"
                        runat="server"
                        ControlToValidate="txtAboutMe"
                        ErrorMessage="About Me is Required"
                        Text="About Me is Required"
                        Display="Dynamic"
                        CssClass="validation-error"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

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
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtJobTitle"
                            runat="server"
                            CssClass="form-control"
                            Text="Senior React Developer">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="JobTitleRequiredValidator"
                            runat="server"
                            ControlToValidate="txtJobTitle"
                            ErrorMessage="Job Title is Required"
                            Text="Job Title is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- TOTAL EXPERIENCE -->

                    <div class="form-group">

                        <label>
                            Total Experience
                            <span class="required-star">*</span>
                        </label>

                        <asp:DropDownList
                            ID="ddlExperience"
                            runat="server"
                            CssClass="form-control">

                            <asp:ListItem Text="Fresher" Value="0"></asp:ListItem>
                            <asp:ListItem Text="1 Year" Value="1"></asp:ListItem>
                            <asp:ListItem Text="2 Years" Value="2"></asp:ListItem>
                            <asp:ListItem Text="3 Years" Value="3"></asp:ListItem>

                            <asp:ListItem
                                Text="4 Years"
                                Value="4"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem Text="5+ Years" Value="5"></asp:ListItem>
                            <asp:ListItem Text="10+ Years" Value="10"></asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- EXPECTED SALARY -->

                    <div class="form-group">

                        <label>
                            Expected Salary (LPA)
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtExpectedSalary"
                            runat="server"
                            CssClass="form-control"
                            placeholder="e.g. 15">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="SalaryRequiredValidator"
                            runat="server"
                            ControlToValidate="txtExpectedSalary"
                            ErrorMessage="Salary is Required"
                            Text="Salary is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="SalaryFormatValidator"
                            runat="server"
                            ControlToValidate="txtExpectedSalary"
                            ValidationExpression="^[0-9]+(\.[0-9]+)?$"
                            ErrorMessage="Salary must contain numbers only"
                            Text="Salary must contain numbers only"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- JOB TYPE -->

                    <div class="form-group">

                        <label>
                            Preferred Job Type
                            <span class="required-star">*</span>
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

                            <asp:ListItem Text="Part Time" Value="Part Time"></asp:ListItem>
                            <asp:ListItem Text="Remote" Value="Remote"></asp:ListItem>
                            <asp:ListItem Text="Internship" Value="Internship"></asp:ListItem>
                            <asp:ListItem Text="Contract" Value="Contract"></asp:ListItem>

                        </asp:DropDownList>

                    </div>


                    <!-- QUALIFICATION -->

                    <div class="form-group">

                        <label>
                            Highest Qualification
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtQualification"
                            runat="server"
                            CssClass="form-control"
                            placeholder="e.g. B.Tech Computer Engineering">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="QualificationRequiredValidator"
                            runat="server"
                            ControlToValidate="txtQualification"
                            ErrorMessage="Qualification is Required"
                            Text="Qualification is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

                    </div>


                    <!-- UNIVERSITY -->

                    <div class="form-group">

                        <label>
                            College / University
                            <span class="required-star">*</span>
                        </label>

                        <asp:TextBox
                            ID="txtUniversity"
                            runat="server"
                            CssClass="form-control"
                            placeholder="Enter college or university">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="UniversityRequiredValidator"
                            runat="server"
                            ControlToValidate="txtUniversity"
                            ErrorMessage="College / University is Required"
                            Text="College / University is Required"
                            Display="Dynamic"
                            CssClass="validation-error"
                            ForeColor="Red">
                        </asp:RequiredFieldValidator>

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
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtTechnicalSkills"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. C#, ASP.NET Core, SQL Server, JavaScript, React">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="SkillsRequiredValidator"
                        runat="server"
                        ControlToValidate="txtTechnicalSkills"
                        ErrorMessage="Technical Skills are Required"
                        Text="Technical Skills are Required"
                        Display="Dynamic"
                        CssClass="validation-error"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

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
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtLanguages"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. English, Hindi, Gujarati">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="LanguagesRequiredValidator"
                        runat="server"
                        ControlToValidate="txtLanguages"
                        ErrorMessage="Languages are Required"
                        Text="Languages are Required"
                        Display="Dynamic"
                        CssClass="validation-error"
                        ForeColor="Red">
                    </asp:RequiredFieldValidator>

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
                    Social &amp; Portfolio
                </h2>

                <div class="form-grid">


                    <!-- LINKEDIN - NO VALIDATION -->

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


                    <!-- GITHUB - NO VALIDATION -->

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


                <asp:Button
                    ID="btnSaveChanges"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-btn"
                    CausesValidation="true"
                    OnClick="btnSaveChanges_Click" />


            </div>


        </div>

    </div>

</asp:Content>