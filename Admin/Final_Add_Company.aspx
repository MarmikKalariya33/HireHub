<%@ Page Title="Final_Add_Company"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Add_Company.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Add_Company" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link href="<%= ResolveUrl("~/Assets/Admincss/final_add_company.css") %>"
        rel="stylesheet" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="add-company-page">

        <div class="page-heading">
            <a href="Companies.aspx" class="back-link">
                <i class="fa-solid fa-arrow-left"></i> Back to Companies
            </a>

            <h2>Add New Company</h2>
            <p>Add a new company to the HireHub platform.</p>
        </div>

        <div class="company-card">

            <div class="card-header">
                <div class="header-icon">
                    <i class="fa-solid fa-building"></i>
                </div>

                <div>
                    <h3>Company Information</h3>
                    <p>Enter the company details below.</p>
                </div>
            </div>

            <div class="form-section">

                <h4><i class="fa-regular fa-building"></i> Basic Information</h4>

                <div class="form-grid">

                    <div class="form-group">
                        <label>Company Name <span>*</span></label>
                        <asp:TextBox ID="txtCompanyName" runat="server"
                            CssClass="form-input" MaxLength="100"
                            placeholder="Enter company name"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvCompanyName" runat="server"
                            ControlToValidate="txtCompanyName"
                            ErrorMessage="Company name is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Company Email <span>*</span></label>
                        <asp:TextBox ID="txtEmail" runat="server"
                            CssClass="form-input" TextMode="Email"
                            MaxLength="100" placeholder="company@example.com"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ErrorMessage="Email is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />

                        <asp:RegularExpressionValidator ID="revEmail" runat="server"
                            ControlToValidate="txtEmail"
                            ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                            ErrorMessage="Enter a valid email address."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Phone Number <span>*</span></label>
                        <asp:TextBox ID="txtPhone" runat="server"
                            CssClass="form-input" MaxLength="15"
                            placeholder="Enter phone number"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                            ControlToValidate="txtPhone"
                            ErrorMessage="Phone number is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />

                        <asp:RegularExpressionValidator ID="revPhone" runat="server"
                            ControlToValidate="txtPhone"
                            ValidationExpression="^[0-9+\-\s()]{7,15}$"
                            ErrorMessage="Enter a valid phone number."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Industry <span>*</span></label>
                        <asp:TextBox ID="txtIndustry" runat="server"
                            CssClass="form-input" MaxLength="100"
                            placeholder="e.g. IT &amp; Software"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvIndustry" runat="server"
                            ControlToValidate="txtIndustry"
                            ErrorMessage="Industry is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Location / City <span>*</span></label>
                        <asp:TextBox ID="txtLocation" runat="server"
                            CssClass="form-input" MaxLength="100"
                            placeholder="e.g. Mumbai, India"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvLocation" runat="server"
                            ControlToValidate="txtLocation"
                            ErrorMessage="Location is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Full Address <span>*</span></label>
                        <asp:TextBox ID="txtAddress" runat="server"
                            CssClass="form-input" MaxLength="250"
                            placeholder="Enter complete company address"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvAddress" runat="server"
                            ControlToValidate="txtAddress"
                            ErrorMessage="Address is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Website</label>
                        <asp:TextBox ID="txtWebsite" runat="server"
                            CssClass="form-input" MaxLength="200"
                            placeholder="https://www.example.com"></asp:TextBox>

                        <asp:RegularExpressionValidator ID="revWebsite" runat="server"
                            ControlToValidate="txtWebsite"
                            ValidationExpression="https?://.+\..+"
                            ErrorMessage="Enter a valid website URL starting with http:// or https://."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Number of Employees <span>*</span></label>
                        <asp:TextBox ID="txtEmployees" runat="server"
                            CssClass="form-input" MaxLength="9"
                            placeholder="e.g. 500"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvEmployees" runat="server"
                            ControlToValidate="txtEmployees"
                            ErrorMessage="Employee count is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />

                        <asp:RegularExpressionValidator ID="revEmployees" runat="server"
                            ControlToValidate="txtEmployees"
                            ValidationExpression="^[1-9][0-9]{0,8}$"
                            ErrorMessage="Enter a valid positive whole number."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Company Size <span>*</span></label>
                        <asp:DropDownList ID="ddlCompanySize" runat="server"
                            CssClass="form-input">
                            <asp:ListItem Value="">Select company size</asp:ListItem>
                            <asp:ListItem Value="1-50">1-50 Employees</asp:ListItem>
                            <asp:ListItem Value="51-200">51-200 Employees</asp:ListItem>
                            <asp:ListItem Value="201-500">201-500 Employees</asp:ListItem>
                            <asp:ListItem Value="501-1000">501-1000 Employees</asp:ListItem>
                            <asp:ListItem Value="1001-5000">1001-5000 Employees</asp:ListItem>
                            <asp:ListItem Value="5000+">5000+ Employees</asp:ListItem>
                        </asp:DropDownList>

                        <asp:RequiredFieldValidator ID="rfvCompanySize" runat="server"
                            ControlToValidate="ddlCompanySize"
                            InitialValue=""
                            ErrorMessage="Please select company size."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Registration Date <span>*</span></label>
                        <asp:TextBox ID="txtRegistrationDate" runat="server"
                            CssClass="form-input" TextMode="Date"></asp:TextBox>

                        <asp:RequiredFieldValidator ID="rfvRegistrationDate" runat="server"
                            ControlToValidate="txtRegistrationDate"
                            ErrorMessage="Registration date is required."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                    <div class="form-group">
                        <label>Company Status <span>*</span></label>
                        <asp:DropDownList ID="ddlStatus" runat="server"
                            CssClass="form-input">
                            <asp:ListItem Value="">Select status</asp:ListItem>
                            <asp:ListItem Value="Active">Active</asp:ListItem>
                            <asp:ListItem Value="Inactive">Inactive</asp:ListItem>
                            <asp:ListItem Value="Pending">Pending</asp:ListItem>
                        </asp:DropDownList>

                        <asp:RequiredFieldValidator ID="rfvStatus" runat="server"
                            ControlToValidate="ddlStatus"
                            InitialValue=""
                            ErrorMessage="Please select company status."
                            ValidationGroup="CompanyValidation"
                            Display="Dynamic" CssClass="validation-error" />
                    </div>

                </div>
            </div>

            <div class="form-section">
                <h4><i class="fa-regular fa-file-lines"></i> Company Profile</h4>

                <div class="form-group full-width">
                    <label>About Company <span>*</span></label>
                    <asp:TextBox ID="txtAboutCompany" runat="server"
                        CssClass="form-input form-textarea"
                        TextMode="MultiLine" Rows="4" MaxLength="2000"
                        placeholder="Write a short introduction about the company..."></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvAboutCompany" runat="server"
                        ControlToValidate="txtAboutCompany"
                        ErrorMessage="About Company is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic" CssClass="validation-error" />
                </div>

                <div class="form-group full-width">
                    <label>Company Description <span>*</span></label>
                    <asp:TextBox ID="txtDescription" runat="server"
                        CssClass="form-input form-textarea"
                        TextMode="MultiLine" Rows="4" MaxLength="3000"
                        placeholder="Describe the company's work, services, and opportunities..."></asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvDescription" runat="server"
                        ControlToValidate="txtDescription"
                        ErrorMessage="Company description is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic" CssClass="validation-error" />
                </div>
            </div>

            <div class="form-actions">
                <a href="Companies.aspx" class="cancel-button">
                    Cancel
                </a>

                <asp:Button ID="btnAddCompany" runat="server"
                    Text="Add Company"
                    CssClass="save-button"
                    ValidationGroup="CompanyValidation"
                    OnClick="btnAddCompany_Click" />
            </div>

        </div>
    </div>

</asp:Content>
