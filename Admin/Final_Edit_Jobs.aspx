<%@ Page Title="Edit Job"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Jobs.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Jobs" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_jobs.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-job-page">

        <div class="back-wrapper">

            <a href="Edit_Jobs.aspx" class="back-link">
                <i class="bi bi-arrow-left"></i>
                <span>Back to Job Details</span>
            </a>

        </div>


        <div class="edit-job-card">

            <div class="job-header">

                <div class="job-avatar">
                    JD
                </div>

                <div class="job-title-area">

                    <h1>Edit Job</h1>

                    <p>
                        Update Job Information
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <div class="section-title">

                <h2>
                    Job Information
                </h2>

            </div>


            <div class="job-information">


                <!-- JOB TITLE -->

                <div class="form-group">

                    <label>
                        JOB TITLE
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
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- COMPANY -->

                <div class="form-group">

                    <label>
                        COMPANY
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
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- JOB TYPE -->

                <div class="form-group">

                    <label>
                        JOB TYPE
                    </label>

                    <asp:DropDownList
                        ID="ddlJobType"
                        runat="server"
                        CssClass="edit-input">

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


                <!-- LOCATION -->

                <div class="form-group">

                    <label>
                        LOCATION
                    </label>

                    <asp:TextBox
                        ID="txtLocation"
                        runat="server"
                        CssClass="edit-input"
                        Text="Mumbai, India">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvLocation"
                        runat="server"
                        ControlToValidate="txtLocation"
                        ErrorMessage="Location is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- MINIMUM SALARY -->

                <div class="form-group">

                    <label>
                        MINIMUM SALARY
                    </label>

                    <asp:TextBox
                        ID="txtSalaryMin"
                        runat="server"
                        CssClass="edit-input"
                        Text="1200000">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvSalaryMin"
                        runat="server"
                        ControlToValidate="txtSalaryMin"
                        ErrorMessage="Minimum salary is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revSalaryMin"
                        runat="server"
                        ControlToValidate="txtSalaryMin"
                        ValidationExpression="^[0-9]+$"
                        ErrorMessage="Enter salary using numbers only."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- MAXIMUM SALARY -->

                <div class="form-group">

                    <label>
                        MAXIMUM SALARY
                    </label>

                    <asp:TextBox
                        ID="txtSalaryMax"
                        runat="server"
                        CssClass="edit-input"
                        Text="1800000">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvSalaryMax"
                        runat="server"
                        ControlToValidate="txtSalaryMax"
                        ErrorMessage="Maximum salary is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revSalaryMax"
                        runat="server"
                        ControlToValidate="txtSalaryMax"
                        ValidationExpression="^[0-9]+$"
                        ErrorMessage="Enter salary using numbers only."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- POSTED DATE -->

                <div class="form-group">

                    <label>
                        POSTED DATE
                    </label>

                    <asp:TextBox
                        ID="txtPostedDate"
                        runat="server"
                        CssClass="edit-input"
                        Text="January 20, 2024">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvPostedDate"
                        runat="server"
                        ControlToValidate="txtPostedDate"
                        ErrorMessage="Posted date is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- STATUS -->

                <div class="form-group">

                    <label>
                        STATUS
                    </label>

                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="edit-input">

                        <asp:ListItem
                            Text="Active"
                            Value="Active"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Inactive"
                            Value="Inactive">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Pending"
                            Value="Pending">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>

            </div>


            <div class="divider"></div>


            <!-- JOB DESCRIPTION -->

            <div class="full-section">

                <h2>
                    Job Description
                </h2>

                <asp:TextBox
                    ID="txtJobDescription"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="6">We are looking for a Senior React Developer to join our core development team. In this role, you will be responsible for designing and developing robust web applications, optimizing front-end performance, and leading a small team of talented developers.</asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvJobDescription"
                    runat="server"
                    ControlToValidate="txtJobDescription"
                    ErrorMessage="Job description is required."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- RESPONSIBILITIES -->

            <div class="full-section">

                <h2>
                    Responsibilities
                </h2>

                <asp:TextBox
                    ID="txtResponsibilities"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="8">Develop highly-responsive user interface components using React concepts.
Collaborate with backend teams to integrate RESTful and GraphQL APIs.
Optimize application performance for maximum speed and scalability.
Write clean, maintainable, and well-documented modular code.
Provide technical leadership and mentorship to junior engineering staff.</asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvResponsibilities"
                    runat="server"
                    ControlToValidate="txtResponsibilities"
                    ErrorMessage="Responsibilities are required."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- REQUIRED SKILLS -->

            <div class="full-section">

                <h2>
                    Required Skills
                </h2>

                <asp:TextBox
                    ID="txtSkills"
                    runat="server"
                    CssClass="edit-input"
                    Text="React, JavaScript, TypeScript, Redux, Node.js">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvSkills"
                    runat="server"
                    ControlToValidate="txtSkills"
                    ErrorMessage="Required skills are required."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <div class="divider"></div>


            <!-- BUTTONS -->

            <div class="job-actions">

                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-button"
                    CausesValidation="true"
                    PostBackUrl="~/Admin/Edit_Jobs.aspx" />

                <a href="Edit_Jobs.aspx"
                   class="cancel-button">
                    Cancel
                </a>

            </div>

        </div>

    </div>

</asp:Content>