<%@ Page Title="Edit Company"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Company.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Company" %>

<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_company.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-company-page">

        <div class="back-wrapper">

            <a href="Companies.aspx"
               class="back-link">

                <i class="fa-solid fa-arrow-left"></i>

                <span>Back to Companies</span>

            </a>

        </div>


        <div class="company-card">

            <div class="company-header">

                <div class="company-avatar-large">
                    T
                </div>

                <div class="company-title-area">

                    <h1>
                        Edit Company
                    </h1>

                    <p>
                        Update Company Information
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <div class="section-title">

                <h2>
                    Company Information
                </h2>

            </div>


            <div class="company-information">


                <!-- COMPANY NAME -->

                <div class="form-group">

                    <label>
                        COMPANY NAME
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtCompanyName"
                        runat="server"
                        CssClass="edit-input"
                        Text="Tata Consultancy Services">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCompanyName"
                        runat="server"
                        ControlToValidate="txtCompanyName"
                        ErrorMessage="Company name is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- CONTACT EMAIL -->

                <div class="form-group">

                    <label>
                        CONTACT EMAIL
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="edit-input"
                        Text="hr@tcs.com">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Enter a valid email address."
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$"
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- CONTACT PHONE -->

                <div class="form-group">

                    <label>
                        CONTACT PHONE
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="edit-input"
                        Text="+91 22 6778 9999">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Enter a valid phone number."
                        ValidationExpression="^[0-9+\-\s()]{10,20}$"
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- LOCATION -->

                <div class="form-group">

                    <label>
                        LOCATION
                        <span class="required-star">*</span>
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
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- INDUSTRY -->

                <div class="form-group">

                    <label>
                        INDUSTRY
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtIndustry"
                        runat="server"
                        CssClass="edit-input"
                        Text="IT &amp; Software">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvIndustry"
                        runat="server"
                        ControlToValidate="txtIndustry"
                        ErrorMessage="Industry is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- EMPLOYEES -->

                <div class="form-group">

                    <label>
                        NUMBER OF EMPLOYEES
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtEmployees"
                        runat="server"
                        CssClass="edit-input"
                        Text="500000">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvEmployees"
                        runat="server"
                        ControlToValidate="txtEmployees"
                        ErrorMessage="Number of employees is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revEmployees"
                        runat="server"
                        ControlToValidate="txtEmployees"
                        ErrorMessage="Enter numbers only."
                        ValidationExpression="^[0-9]+$"
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- COMPANY SIZE -->

                <div class="form-group">

                    <label>
                        COMPANY SIZE
                    </label>

                    <asp:DropDownList
                        ID="ddlCompanySize"
                        runat="server"
                        CssClass="edit-input">

                        <asp:ListItem
                            Text="1 - 50 Employees"
                            Value="1-50">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="51 - 200 Employees"
                            Value="51-200">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="201 - 500 Employees"
                            Value="201-500">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="501 - 1,000 Employees"
                            Value="501-1000">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="1,000 - 10,000 Employees"
                            Value="1000-10000">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="500,000+ Employees"
                            Value="500000+"
                            Selected="True">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- WEBSITE -->

                <div class="form-group">

                    <label>
                        WEBSITE
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtWebsite"
                        runat="server"
                        CssClass="edit-input"
                        Text="www.tcs.com">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvWebsite"
                        runat="server"
                        ControlToValidate="txtWebsite"
                        ErrorMessage="Website is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- REGISTRATION DATE -->

                <div class="form-group">

                    <label>
                        REGISTRATION DATE
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtRegistrationDate"
                        runat="server"
                        CssClass="edit-input"
                        Text="January 10, 2024">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvRegistrationDate"
                        runat="server"
                        ControlToValidate="txtRegistrationDate"
                        ErrorMessage="Registration date is required."
                        ValidationGroup="CompanyValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
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


            <!-- ABOUT COMPANY -->

            <div class="full-section">

                <h2>
                    About Company
                    <span class="required-star">*</span>
                </h2>

                <asp:TextBox
                    ID="txtAboutCompany"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="8">Tata Consultancy Services (TCS) is a leading global IT services, consulting and business solutions organization. It is part of the Tata Group and has a strong presence across the world.

TCS provides technology solutions and consulting services to organizations across multiple industries. The company is known for its large-scale enterprise solutions, digital transformation services and innovation.</asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvAboutCompany"
                    runat="server"
                    ControlToValidate="txtAboutCompany"
                    ErrorMessage="About company is required."
                    ValidationGroup="CompanyValidation"
                    Display="Dynamic"
                    CssClass="validation-error">
                </asp:RequiredFieldValidator>

            </div>


            <div class="divider"></div>


            <!-- COMPANY DESCRIPTION -->

            <div class="full-section">

                <h2>
                    Company Description
                    <span class="required-star">*</span>
                </h2>

                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    CssClass="edit-textarea"
                    TextMode="MultiLine"
                    Rows="6">We are one of the leading technology companies providing software development, consulting, cloud computing and digital transformation services to businesses around the world.</asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Company description is required."
                    ValidationGroup="CompanyValidation"
                    Display="Dynamic"
                    CssClass="validation-error">
                </asp:RequiredFieldValidator>

            </div>


            <div class="divider"></div>


            <!-- BUTTONS -->

            <div class="company-actions">

                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="✓  Save Changes"
                    CssClass="save-button"
                    ValidationGroup="CompanyValidation"
                    PostBackUrl="Companies.aspx" />

                <a href="Companies.aspx"
                   class="cancel-button">

                    Cancel

                </a>

            </div>


        </div>

    </div>

</asp:Content>