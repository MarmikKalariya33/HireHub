<%@ Page Title="Add New Job"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Add_Jobs.aspx.cs"
    Inherits="Job_Portal.Admin.Add_Jobs" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/add_jobs.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="add-job-page">

        <a href="Jobs.aspx" class="back-link">
            <i class="bi bi-arrow-left"></i>
            <span>Back to Jobs</span>
        </a>

        <div class="job-form-card">

            <div class="form-grid">

                <div class="form-group">

                    <label>
                        Job Title <span>*</span>
                    </label>

                    <asp:TextBox
                        ID="txtJobTitle"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. Lead React Developer">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvJobTitle"
                        runat="server"
                        ControlToValidate="txtJobTitle"
                        ErrorMessage="Job Title is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <label>
                        Company <span>*</span>
                    </label>

                    <asp:DropDownList
                        ID="ddlCompany"
                        runat="server"
                        CssClass="form-control">

                        <asp:ListItem Text="Select company" Value=""></asp:ListItem>
                        <asp:ListItem Text="TCS" Value="TCS"></asp:ListItem>
                        <asp:ListItem Text="Infosys" Value="Infosys"></asp:ListItem>
                        <asp:ListItem Text="Wipro" Value="Wipro"></asp:ListItem>
                        <asp:ListItem Text="HCL" Value="HCL"></asp:ListItem>
                        <asp:ListItem Text="Tech Mahindra" Value="Tech Mahindra"></asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvCompany"
                        runat="server"
                        ControlToValidate="ddlCompany"
                        InitialValue=""
                        ErrorMessage="Please select a company."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <label>
                        Category <span>*</span>
                    </label>

                    <asp:DropDownList
                        ID="ddlCategory"
                        runat="server"
                        CssClass="form-control">

                        <asp:ListItem Text="Select category" Value=""></asp:ListItem>
                        <asp:ListItem Text="Software Development" Value="Software Development"></asp:ListItem>
                        <asp:ListItem Text="Design" Value="Design"></asp:ListItem>
                        <asp:ListItem Text="Data Science" Value="Data Science"></asp:ListItem>
                        <asp:ListItem Text="Marketing" Value="Marketing"></asp:ListItem>
                        <asp:ListItem Text="Finance" Value="Finance"></asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvCategory"
                        runat="server"
                        ControlToValidate="ddlCategory"
                        InitialValue=""
                        ErrorMessage="Please select a category."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <label>
                        Job Type <span>*</span>
                    </label>

                    <asp:DropDownList
                        ID="ddlJobType"
                        runat="server"
                        CssClass="form-control">

                        <asp:ListItem Text="Select job type" Value=""></asp:ListItem>
                        <asp:ListItem Text="Full Time" Value="Full Time"></asp:ListItem>
                        <asp:ListItem Text="Part Time" Value="Part Time"></asp:ListItem>
                        <asp:ListItem Text="Remote" Value="Remote"></asp:ListItem>
                        <asp:ListItem Text="Contract" Value="Contract"></asp:ListItem>
                        <asp:ListItem Text="Internship" Value="Internship"></asp:ListItem>

                    </asp:DropDownList>

                    <asp:RequiredFieldValidator
                        ID="rfvJobType"
                        runat="server"
                        ControlToValidate="ddlJobType"
                        InitialValue=""
                        ErrorMessage="Please select a job type."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <label>
                        Location <span>*</span>
                    </label>

                    <asp:TextBox
                        ID="txtLocation"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. Remote, Mumbai">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvLocation"
                        runat="server"
                        ControlToValidate="txtLocation"
                        ErrorMessage="Location is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group">

                    <label>
                        Salary Range
                    </label>

                    <asp:TextBox
                        ID="txtSalary"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. ₹15,00,000 - ₹25,00,000">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvSalary"
                        runat="server"
                        ControlToValidate="txtSalary"
                        ErrorMessage="Salary Range is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revSalary"
                        runat="server"
                        ControlToValidate="txtSalary"
                        ValidationExpression="^₹?[0-9,]+(\s*-\s*₹?[0-9,]+)?$"
                        ErrorMessage="Enter a valid salary range."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="form-group">

                    <label>
                        Experience Required
                    </label>

                    <asp:TextBox
                        ID="txtExperience"
                        runat="server"
                        CssClass="form-control"
                        placeholder="e.g. 5+ years">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvExperience"
                        runat="server"
                        ControlToValidate="txtExperience"
                        ErrorMessage="Experience Required is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
    ID="revExperience"
    runat="server"
    ControlToValidate="txtExperience"
    ValidationExpression="^[0-9]+$"
    ErrorMessage="Only numbers are allowed."
    ForeColor="Red"
    Display="Dynamic"
    ValidationGroup="JobValidation">
</asp:RegularExpressionValidator>

                </div>

                <div class="form-group">

                    <label>
                        Application Deadline
                    </label>

                    <asp:TextBox
                        ID="txtDeadline"
                        runat="server"
                        CssClass="form-control"
                        placeholder="YYYY-MM-DD">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvDeadline"
                        runat="server"
                        ControlToValidate="txtDeadline"
                        ErrorMessage="Application Deadline is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revDeadline"
                        runat="server"
                        ControlToValidate="txtDeadline"
                        ValidationExpression="^(19|20)\d{2}-(0[1-9]|1[0-2])-(0[1-9]|[12]\d|3[01])$"
                        ErrorMessage="Enter deadline in YYYY-MM-DD format."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RegularExpressionValidator>

                </div>

                <div class="form-group full-width">

                    <label>
                        Job Description <span>*</span>
                    </label>

                    <asp:TextBox
                        ID="txtJobDescription"
                        runat="server"
                        TextMode="MultiLine"
                        CssClass="form-control"
                        placeholder="Describe the roles, day-to-day duties, and team context...">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvJobDescription"
                        runat="server"
                        ControlToValidate="txtJobDescription"
                        ErrorMessage="Job Description is required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

                <div class="form-group full-width">

                    <label>
                        Requirements <span>*</span>
                    </label>

                    <asp:TextBox
                        ID="txtRequirements"
                        runat="server"
                        TextMode="MultiLine"
                        CssClass="form-control"
                        placeholder="List technical stack requirements, certifications, soft skills...">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvRequirements"
                        runat="server"
                        ControlToValidate="txtRequirements"
                        ErrorMessage="Requirements are required."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationGroup="JobValidation">
                    </asp:RequiredFieldValidator>

                </div>

            </div>

            <div class="form-divider"></div>

            <div class="form-buttons">

                <a href="Jobs.aspx"
                   class="cancel-button">
                    Cancel
                </a>

                <asp:Button
                    ID="btnCreateJob"
                    runat="server"
                    Text="Create Job"
                    CssClass="create-button"
                    CausesValidation="true"
                    ValidationGroup="JobValidation" />

            </div>

        </div>

    </div>

</asp:Content>