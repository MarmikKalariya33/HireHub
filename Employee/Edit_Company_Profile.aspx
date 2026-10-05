<%@ Page Title="Edit Employer Profile"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Company_Profile.aspx.cs"
    Inherits="Job_Portal.Employee.Edit_Company_Profile" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/edit_company_profile.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-company-page">

        <a href="Company_Profile.aspx" class="back-button">
            ← Back to Company Profile
        </a>

        <div class="edit-company-header">
            <h1>Edit Employer Profile</h1>

            <p>
                Update your company details, contact information, and business coordinates.
            </p>
        </div>

        <div class="edit-company-card">

            <div class="company-logo-section">

                <div class="edit-company-logo">
                    TCS
                </div>

                <div class="logo-content">

                    <h2>Company Logo</h2>

                    <div class="logo-buttons">

                        <button type="button" class="change-logo-button">
                            Change Logo
                        </button>

                        <button type="button" class="remove-logo-button">
                            Remove
                        </button>

                    </div>

                </div>

            </div>

            <div class="edit-divider"></div>

            <div class="company-form-grid">

                <!-- COMPANY NAME -->
                <div class="form-group">

                    <asp:Label
                        ID="lblCompanyName"
                        runat="server"
                        Text="Company Name"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtCompanyName"
                        runat="server"
                        CssClass="form-input"
                        Text="Tata Consultancy Services">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCompanyName"
                        runat="server"
                        ControlToValidate="txtCompanyName"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Company Name is required."
                        Text="Company Name is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

                <!-- CONTACT PERSON -->
                <div class="form-group">

                    <asp:Label
                        ID="lblContactPerson"
                        runat="server"
                        Text="Contact Person"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtContactPerson"
                        runat="server"
                        CssClass="form-input"
                        Text="Priya Patel">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvContactPerson"
                        runat="server"
                        ControlToValidate="txtContactPerson"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Contact Person is required."
                        Text="Contact Person is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

                <!-- EMAIL -->
                <div class="form-group">

                    <asp:Label
                        ID="lblEmail"
                        runat="server"
                        Text="Email Address"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="form-input"
                        Text="recruitment@tcs.com">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Email Address is required."
                        Text="Email Address is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ValidationGroup="CompanyProfile"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ErrorMessage="Please enter a valid Email Address."
                        Text="Please enter a valid Email Address."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <!-- PHONE -->
                <div class="form-group">

                    <asp:Label
                        ID="lblPhone"
                        runat="server"
                        Text="Phone Number"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="form-input"
                        Text="+91 22 6778 9999">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Phone Number is required."
                        Text="Phone Number is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ValidationGroup="CompanyProfile"
                        ValidationExpression="^[0-9+\-\s()]{10,20}$"
                        ErrorMessage="Please enter a valid Phone Number."
                        Text="Please enter a valid Phone Number."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <!-- WEBSITE -->
                <div class="form-group">

                    <asp:Label
                        ID="lblWebsite"
                        runat="server"
                        Text="Website"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtWebsite"
                        runat="server"
                        CssClass="form-input"
                        Text="www.tcs.com">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvWebsite"
                        runat="server"
                        ControlToValidate="txtWebsite"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Website is required."
                        Text="Website is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

                <!-- FOUNDED YEAR -->
                <div class="form-group">

                    <asp:Label
                        ID="lblFoundedYear"
                        runat="server"
                        Text="Founded Year"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <asp:TextBox
                        ID="txtFoundedYear"
                        runat="server"
                        CssClass="form-input"
                        Text="1968">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvFoundedYear"
                        runat="server"
                        ControlToValidate="txtFoundedYear"
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Founded Year is required."
                        Text="Founded Year is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revFoundedYear"
                        runat="server"
                        ControlToValidate="txtFoundedYear"
                        ValidationGroup="CompanyProfile"
                        ValidationExpression="^[0-9]{4}$"
                        ErrorMessage="Enter a valid 4-digit year."
                        Text="Enter a valid 4-digit year."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RegularExpressionValidator>

                </div>

                <!-- INDUSTRY -->
                <div class="form-group">

                    <asp:Label
                        ID="lblIndustry"
                        runat="server"
                        Text="Industry"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <div class="select-wrapper">

                        <asp:DropDownList
                            ID="ddlIndustry"
                            runat="server"
                            CssClass="form-input form-select">

                            <asp:ListItem
                                Text="IT Consulting &amp; Enterprise Solutions"
                                Value="IT Consulting &amp; Enterprise Solutions"
                                Selected="True">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Information Technology"
                                Value="Information Technology">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Software Development"
                                Value="Software Development">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Consulting"
                                Value="Consulting">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Finance"
                                Value="Finance">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="Healthcare"
                                Value="Healthcare">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvIndustry"
                        runat="server"
                        ControlToValidate="ddlIndustry"
                        InitialValue=""
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Industry is required."
                        Text="Industry is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

                <!-- COMPANY SIZE -->
                <div class="form-group">

                    <asp:Label
                        ID="lblCompanySize"
                        runat="server"
                        Text="Company Size"
                        CssClass="field-label">
                    </asp:Label>
                    <span class="required-star">*</span>

                    <div class="select-wrapper">

                        <asp:DropDownList
                            ID="ddlCompanySize"
                            runat="server"
                            CssClass="form-input form-select">

                            <asp:ListItem
                                Text="1-50 Employees"
                                Value="1-50 Employees">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="51-200 Employees"
                                Value="51-200 Employees">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="201-500 Employees"
                                Value="201-500 Employees">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="501-1000 Employees"
                                Value="501-1000 Employees">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="1000-5000 Employees"
                                Value="1000-5000 Employees">
                            </asp:ListItem>

                            <asp:ListItem
                                Text="500,000+ Employees"
                                Value="500,000+ Employees"
                                Selected="True">
                            </asp:ListItem>

                        </asp:DropDownList>

                    </div>

                    <asp:RequiredFieldValidator
                        ID="rfvCompanySize"
                        runat="server"
                        ControlToValidate="ddlCompanySize"
                        InitialValue=""
                        ValidationGroup="CompanyProfile"
                        ErrorMessage="Company Size is required."
                        Text="Company Size is required."
                        CssClass="validation-error"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>

            </div>

            <!-- ABOUT COMPANY -->
            <div class="form-group full-width">

                <asp:Label
                    ID="lblAboutCompany"
                    runat="server"
                    Text="About Tata Consultancy Services"
                    CssClass="field-label">
                </asp:Label>
                <span class="required-star">*</span>

                <asp:TextBox
                    ID="txtAboutCompany"
                    runat="server"
                    TextMode="MultiLine"
                    CssClass="form-textarea"
                    Rows="4"
                    Text="Tata Consultancy Services is an IT services, consulting and business solutions organization that has been partnering with many">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvAboutCompany"
                    runat="server"
                    ControlToValidate="txtAboutCompany"
                    ValidationGroup="CompanyProfile"
                    ErrorMessage="About Company is required."
                    Text="About Company is required."
                    CssClass="validation-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revAboutCompany"
                    runat="server"
                    ControlToValidate="txtAboutCompany"
                    ValidationGroup="CompanyProfile"
                    ValidationExpression="^[\s\S]{20,}$"
                    ErrorMessage="Minimum 20 characters required."
                    Text="Minimum 20 characters required."
                    CssClass="validation-error"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>

            </div>

            <!-- ADDRESS -->
            <div class="form-group full-width">

                <asp:Label
                    ID="lblAddress"
                    runat="server"
                    Text="Address"
                    CssClass="field-label">
                </asp:Label>
                <span class="required-star">*</span>

                <asp:TextBox
                    ID="txtAddress"
                    runat="server"
                    CssClass="form-input"
                    Text="TCS House, Raveline Street, Fort">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvAddress"
                    runat="server"
                    ControlToValidate="txtAddress"
                    ValidationGroup="CompanyProfile"
                    ErrorMessage="Address is required."
                    Text="Address is required."
                    CssClass="validation-error"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>

            <!-- BUTTONS -->
            <div class="form-actions">

                <asp:Button
                    ID="btnSaveChanges"
                    runat="server"
                    Text="Save Changes"
                    CssClass="save-button"
                    ValidationGroup="CompanyProfile"
                    CausesValidation="true"
                    PostBackUrl="~/Employee/Company_Profile.aspx" />

                <asp:Button
                    ID="btnCancel"
                    runat="server"
                    Text="Cancel"
                    CssClass="cancel-button"
                    CausesValidation="false"
                    PostBackUrl="~/Employee/Company_Profile.aspx" />

            </div>

        </div>

    </div>

</asp:Content>