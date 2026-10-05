<%@ Page Title="Edit Job"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="EditJob.aspx.cs"
    Inherits="Job_Portal.Employee.EditJob" %>

<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link
        rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/postnewjob.css") %>" />

</asp:Content>

<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="post-job-page">

        <a href="MyJob.aspx"
           class="back-button">
            ← Back
        </a>

        <h1 class="post-job-title">
            Edit Job
        </h1>

        <div class="post-job-card">

            <!-- JOB TITLE -->
            <div class="job-form-group">

                <div class="input-with-star">

                    <asp:Label
                        ID="lblJobTitle"
                        runat="server"
                        Text="Job Title"
                        CssClass="field-label">
                    </asp:Label>

                    <span class="required-star">*</span>

                </div>

                <asp:TextBox
                    ID="txtJobTitle"
                    runat="server"
                    CssClass="job-input"
                    Text="Senior React Developer">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvJobTitle"
                    runat="server"
                    ControlToValidate="txtJobTitle"
                    ErrorMessage="Job Title is required."
                    Text="Job Title is required."
                    CssClass="validation-message"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- CATEGORY + JOB TYPE -->
            <div class="job-row">

                <!-- JOB CATEGORY -->
                <div class="job-form-group">

                    <div class="input-with-star">

                        <asp:Label
                            ID="lblCategory"
                            runat="server"
                            Text="Job Category"
                            CssClass="field-label">
                        </asp:Label>

                        <span class="required-star">*</span>

                    </div>

                    <asp:DropDownList
                        ID="ddlCategory"
                        runat="server"
                        CssClass="job-select">

                        <asp:ListItem
                            Text="IT &amp; Software"
                            Value="IT &amp; Software"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Design"
                            Value="Design">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Marketing"
                            Value="Marketing">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Finance"
                            Value="Finance">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Human Resources"
                            Value="Human Resources">
                        </asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvCategory"
                        runat="server"
                        ControlToValidate="ddlCategory"
                        InitialValue=""
                        ErrorMessage="Job Category is required."
                        Text="Job Category is required."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- JOB TYPE -->
                <div class="job-form-group">

                    <div class="input-with-star">

                        <asp:Label
                            ID="lblJobType"
                            runat="server"
                            Text="Job Type"
                            CssClass="field-label">
                        </asp:Label>

                        <span class="required-star">*</span>

                    </div>

                    <asp:DropDownList
                        ID="ddlJobType"
                        runat="server"
                        CssClass="job-select">

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
                            Text="Contract"
                            Value="Contract">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Internship"
                            Value="Internship">
                        </asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvJobType"
                        runat="server"
                        ControlToValidate="ddlJobType"
                        InitialValue=""
                        ErrorMessage="Job Type is required."
                        Text="Job Type is required."
                        CssClass="validation-message"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

            </div>


            <!-- WORK MODE -->
            <div class="work-mode-group">

                <span class="field-label">
                    Work Mode
                </span>

                <div class="work-mode-buttons">

                    <asp:RadioButton
                        ID="rbOnsite"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio"
                        Checked="true" />

                    <label
                        for="<%= rbOnsite.ClientID %>"
                        class="work-mode-label">
                        On-site
                    </label>


                    <asp:RadioButton
                        ID="rbHybrid"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio" />

                    <label
                        for="<%= rbHybrid.ClientID %>"
                        class="work-mode-label">
                        Hybrid
                    </label>


                    <asp:RadioButton
                        ID="rbRemote"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio" />

                    <label
                        for="<%= rbRemote.ClientID %>"
                        class="work-mode-label">
                        Remote
                    </label>

                </div>

            </div>


            <!-- ANNUAL SALARY -->
            <div class="job-form-group">

                <div class="input-with-star">

                    <span class="field-label">
                        Annual Salary Range (INR)
                    </span>

                    <span class="required-star">*</span>

                </div>

                <div class="job-row">

                    <!-- MINIMUM SALARY -->
                    <div class="salary-box">

                        <span class="salary-prefix">
                            Min (₹)
                        </span>

                        <asp:TextBox
                            ID="txtMinSalary"
                            runat="server"
                            CssClass="job-input salary-input"
                            Text="8,00,000">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvMinSalary"
                            runat="server"
                            ControlToValidate="txtMinSalary"
                            ErrorMessage="Minimum Salary is required."
                            Text="Minimum Salary is required."
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revMinSalary"
                            runat="server"
                            ControlToValidate="txtMinSalary"
                            ValidationExpression="^[0-9,]+$"
                            ErrorMessage="Minimum Salary must contain only numbers."
                            Text="Enter a valid salary."
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>


                    <!-- MAXIMUM SALARY -->
                    <div class="salary-box">

                        <span class="salary-prefix">
                            Max (₹)
                        </span>

                        <asp:TextBox
                            ID="txtMaxSalary"
                            runat="server"
                            CssClass="job-input salary-input"
                            Text="15,00,000">
                        </asp:TextBox>

                        <asp:RequiredFieldValidator
                            ID="rfvMaxSalary"
                            runat="server"
                            ControlToValidate="txtMaxSalary"
                            ErrorMessage="Maximum Salary is required."
                            Text="Maximum Salary is required."
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RequiredFieldValidator>

                        <asp:RegularExpressionValidator
                            ID="revMaxSalary"
                            runat="server"
                            ControlToValidate="txtMaxSalary"
                            ValidationExpression="^[0-9,]+$"
                            ErrorMessage="Maximum Salary must contain only numbers."
                            Text="Enter a valid salary."
                            CssClass="validation-message"
                            Display="Dynamic">
                        </asp:RegularExpressionValidator>

                    </div>

                </div>

            </div>


            <!-- JOB DESCRIPTION -->
            <div class="job-form-group">

                <div class="input-with-star">

                    <asp:Label
                        ID="lblDescription"
                        runat="server"
                        Text="Job Description"
                        CssClass="field-label">
                    </asp:Label>

                    <span class="required-star">*</span>

                </div>

                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    TextMode="MultiLine"
                    CssClass="job-textarea"
                    Text="We are looking for a Senior React Developer to join our team at TCS. You will design, build and optimize modular user interfaces using React, TypeScript, and Tailwind CSS.">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Job Description is required."
                    Text="Job Description is required."
                    CssClass="validation-message"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ValidationExpression="^[\s\S]{20,}$"
                    ErrorMessage="Job Description must contain at least 20 characters."
                    Text="Minimum 20 characters required."
                    CssClass="validation-message"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>

            </div>


            <!-- REQUIRED SKILLS -->
            <div class="job-form-group">

                <span class="field-label">
                    Required Skills
                </span>

                <div class="skills-container">

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
                        Redux
                    </span>

                    <span class="skill-tag">
                        Tailwind CSS
                    </span>

                </div>

            </div>


            <!-- BUTTONS -->
            <div class="edit-job-buttons">

                <asp:Button
                    ID="btnUpdateJob"
                    runat="server"
                    Text="Update Job"
                    CssClass="publish-button"
                    CausesValidation="true"
                    PostBackUrl="~/Employee/MyJob.aspx" />

                <a
                    href="MyJob.aspx"
                    class="back-button">
                    Cancel
                </a>

            </div>

        </div>

    </div>

</asp:Content>