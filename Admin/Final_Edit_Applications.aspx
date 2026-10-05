<%@ Page Title="Edit Application"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Applications.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Applications" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_applications.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-application-page">

        <div class="back-wrapper">

            <a href="Applications.aspx" class="back-link">
                <i class="fa-solid fa-arrow-left"></i>
                <span>Back to Applications</span>
            </a>

        </div>


        <div class="application-card">

            <div class="application-header">

                <div class="applicant-avatar-large">
                    RS
                </div>

                <div class="application-title-area">

                    <h1>
                        Edit Application
                    </h1>

                    <p>
                        Update Application Information
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <div class="section-title">

                <h2>
                    Applicant Information
                </h2>

            </div>


            <div class="application-information">

                <!-- FULL NAME -->

                <div class="form-group">

                    <label>
                        FULL NAME <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtFullName"
                        runat="server"
                        CssClass="edit-input"
                        Text="Rahul Sharma">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvFullName"
                        runat="server"
                        ControlToValidate="txtFullName"
                        ErrorMessage="Full name is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- EMAIL -->

                <div class="form-group">

                    <label>
                        EMAIL ADDRESS <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="edit-input"
                        Text="rahul.sharma@email.com">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter a valid email address."
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- PHONE -->

                <div class="form-group">

                    <label>
                        PHONE NUMBER <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="edit-input"
                        Text="+91 98765 43210">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Enter a valid Indian phone number."
                        ValidationExpression="^(\+91[\s-]?)?[6-9]\d{4}[\s-]?\d{5}$"
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- LOCATION -->

                <div class="form-group">

                    <label>
                        LOCATION <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtLocation"
                        runat="server"
                        CssClass="edit-input"
                        Text="Mumbai, Maharashtra">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvLocation"
                        runat="server"
                        ControlToValidate="txtLocation"
                        ErrorMessage="Location is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- PROFILE PHOTO OPTIONAL -->

                <div class="form-group profile-upload-group">

                    <label>
                        PROFILE PHOTO
                    </label>

                    <div class="profile-upload-box">

                        <div class="profile-preview">
                            <i class="fa-solid fa-user"></i>
                        </div>

                        <div class="profile-upload-content">

                            <asp:FileUpload
                                ID="fuProfilePhoto"
                                runat="server"
                                CssClass="profile-upload"
                                onchange="previewProfilePhoto(this)" />

                            <span class="upload-help">
                                JPG, JPEG or PNG
                            </span>

                        </div>

                    </div>

                </div>

            </div>


            <div class="divider"></div>


            <div class="section-title">

                <h2>
                    Application Information
                </h2>

            </div>


            <div class="application-information">

                <!-- JOB TITLE -->

                <div class="form-group">

                    <label>
                        JOB TITLE <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtJobTitle"
                        runat="server"
                        CssClass="edit-input"
                        Text="Senior React Developer">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvJobTitle"
                        runat="server"
                        ControlToValidate="txtJobTitle"
                        ErrorMessage="Job title is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- COMPANY -->

                <div class="form-group">

                    <label>
                        COMPANY <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtCompany"
                        runat="server"
                        CssClass="edit-input"
                        Text="Tata Consultancy Services (TCS)">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCompany"
                        runat="server"
                        ControlToValidate="txtCompany"
                        ErrorMessage="Company name is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- STATUS -->

                <div class="form-group">

                    <label>
                        APPLICATION STATUS
                    </label>

                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="edit-input">

                        <asp:ListItem
                            Text="Pending"
                            Value="Pending"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Reviewed"
                            Value="Reviewed">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Hired"
                            Value="Hired">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Rejected"
                            Value="Rejected">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- APPLIED DATE -->

                <div class="form-group">

                    <label>
                        APPLIED DATE <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtAppliedDate"
                        runat="server"
                        CssClass="edit-input"
                        Text="January 22, 2024">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvAppliedDate"
                        runat="server"
                        ControlToValidate="txtAppliedDate"
                        ErrorMessage="Applied date is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- EXPERIENCE -->

                <div class="form-group">

                    <label>
                        EXPERIENCE <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtExperience"
                        runat="server"
                        CssClass="edit-input"
                        Text="4 Years">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvExperience"
                        runat="server"
                        ControlToValidate="txtExperience"
                        ErrorMessage="Experience is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- EXPECTED SALARY -->

                <div class="form-group">

                    <label>
                        EXPECTED SALARY <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtExpectedSalary"
                        runat="server"
                        CssClass="edit-input"
                        Text="₹12,00,000">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvSalary"
                        runat="server"
                        ControlToValidate="txtExpectedSalary"
                        ErrorMessage="Expected salary is required."
                        ValidationGroup="ApplicationValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>

            </div>


            <div class="divider"></div>


            <!-- RESUME -->

            <div class="full-section">

                <h2>
                    Resume
                </h2>

                <div class="resume-box">

                    <div class="resume-icon">
                        <i class="fa-solid fa-file-pdf"></i>
                    </div>

                    <div class="resume-information">

                        <strong>
                            Rahul_Sharma_Resume.pdf
                        </strong>

                        <span>
                            PDF Document
                        </span>

                    </div>

                    <a href="#"
                       class="view-resume">
                        View Resume
                    </a>

                </div>

            </div>


            <div class="divider"></div>


            <!-- COVER LETTER -->

            <div class="full-section">

                <h2>
                    Cover Letter
                </h2>

                <asp:TextBox
                    ID="txtCoverLetter"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="7">Dear Hiring Manager,

I am interested in the Senior React Developer position at Tata Consultancy Services. I have strong experience in React, JavaScript, TypeScript and modern web application development.

I believe my technical skills and experience make me a strong candidate for this position.

Thank you for considering my application.</asp:TextBox>

            </div>


            <div class="divider"></div>


            <!-- ADDITIONAL INFORMATION -->

            <div class="full-section">

                <h2>
                    Additional Information
                </h2>

                <asp:TextBox
                    ID="txtAdditionalInformation"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="5">Available for immediate joining. Open to relocation and hybrid work opportunities.</asp:TextBox>

            </div>


            <div class="divider"></div>


            <div class="application-actions">

                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-button"
                    ValidationGroup="ApplicationValidation" />

                <a href="Applications.aspx"
                   class="cancel-button">
                    Cancel
                </a>

            </div>

        </div>

    </div>


    <script type="text/javascript">

        function previewProfilePhoto(input) {

            if (input.files && input.files[0]) {

                var file = input.files[0];

                if (file.type.match('image.*')) {

                    var reader = new FileReader();

                    reader.onload = function (e) {

                        var preview =
                            document.querySelector('.profile-preview');

                        preview.innerHTML =
                            '<img src="' +
                            e.target.result +
                            '" alt="Profile Photo">';

                    };

                    reader.readAsDataURL(file);
                }
            }
        }

    </script>

</asp:Content>