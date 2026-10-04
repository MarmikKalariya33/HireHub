<%@ Page Title="Edit Employer"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Employee.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Employer" %>


<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_employee.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="employer-details-page">


        <!-- =========================================
             BACK BUTTON
        ========================================== -->

        <div class="back-section">

            <a href="Employer_Details.aspx"
               class="back-link">

                <span class="back-arrow">←</span>

                <span>Back to Employer Details</span>

            </a>

        </div>


        <!-- =========================================
             EDIT EMPLOYER CARD
        ========================================== -->

        <div class="employer-details-card">


            <!-- =========================================
                 HEADER
            ========================================== -->

            <div class="company-header">

                <div class="company-logo">
                    TCS
                </div>


                <div class="company-heading">

                    <h1>
                        Edit Employer
                    </h1>

                    <p>
                        Update Employer Information
                    </p>

                </div>

            </div>


            <div class="details-divider"></div>


            <!-- =========================================
                 COMPANY INFORMATION
            ========================================== -->

            <div class="company-details">


                <!-- =====================================
                     COMPANY NAME
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        COMPANY NAME
                    </div>


                    <asp:TextBox
                        ID="txtCompanyName"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="Tata Consultancy Services">
                    </asp:TextBox>


                    <!-- ASP.NET TOOLBOX VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvCompanyName"
                        runat="server"
                        ControlToValidate="txtCompanyName"
                        ErrorMessage="Company name is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     CONTACT EMAIL
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        CONTACT EMAIL
                    </div>


                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="hr@tcs.com">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email address is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Please enter a valid email address."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationExpression="^[^@\s]+@[^@\s]+\.[^@\s]+$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =====================================
                     CONTACT PHONE
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        CONTACT PHONE
                    </div>


                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="+91 22 6778 9999">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Please enter a valid phone number."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationExpression="^(\+91[\s-]?)?[0-9]{2,5}[\s-]?[0-9]{6,8}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =====================================
                     LOCATION
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        LOCATION
                    </div>


                    <asp:TextBox
                        ID="txtLocation"
                        runat="server"
                        CssClass="employer-edit-input"
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


                <!-- =====================================
                     INDUSTRY
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        INDUSTRY
                    </div>


                    <asp:TextBox
                        ID="txtIndustry"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="IT &amp; Software">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvIndustry"
                        runat="server"
                        ControlToValidate="txtIndustry"
                        ErrorMessage="Industry is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     COMPANY SIZE
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        COMPANY SIZE
                    </div>


                    <asp:TextBox
                        ID="txtCompanySize"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="500,000+ employees">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvCompanySize"
                        runat="server"
                        ControlToValidate="txtCompanySize"
                        ErrorMessage="Company size is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     WEBSITE
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        WEBSITE
                    </div>


                    <asp:TextBox
                        ID="txtWebsite"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="www.tcs.com">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvWebsite"
                        runat="server"
                        ControlToValidate="txtWebsite"
                        ErrorMessage="Website is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <asp:RegularExpressionValidator
                        ID="revWebsite"
                        runat="server"
                        ControlToValidate="txtWebsite"
                        ErrorMessage="Please enter a valid website."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationExpression="^(https?:\/\/)?([\w-]+\.)+[\w-]+(\/[\w-./?%&=]*)?$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =====================================
                     REGISTRATION DATE
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        REGISTRATION DATE
                    </div>


                    <asp:TextBox
                        ID="txtRegistrationDate"
                        runat="server"
                        CssClass="employer-edit-input"
                        Text="January 10, 2024">
                    </asp:TextBox>


                    <asp:RequiredFieldValidator
                        ID="rfvRegistrationDate"
                        runat="server"
                        ControlToValidate="txtRegistrationDate"
                        ErrorMessage="Registration date is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     STATUS
                ====================================== -->

                <div class="detail-item">

                    <div class="detail-label">
                        STATUS
                    </div>


                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="employer-edit-input">


                        <asp:ListItem
                            Text="-- Select Status --"
                            Value="">
                        </asp:ListItem>


                        <asp:ListItem
                            Text="Active"
                            Value="Active">
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


                    <asp:RequiredFieldValidator
                        ID="rfvStatus"
                        runat="server"
                        ControlToValidate="ddlStatus"
                        InitialValue=""
                        ErrorMessage="Please select a status."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


            </div>


            <!-- =========================================
                 ABOUT COMPANY DIVIDER
            ========================================== -->

            <div class="about-divider"></div>


            <!-- =========================================
                 ABOUT COMPANY
            ========================================== -->

            <div class="about-company">

                <h2>
                    About Company
                </h2>


                <asp:TextBox
                    ID="txtAboutCompany"
                    runat="server"
                    CssClass="employer-edit-textarea"
                    TextMode="MultiLine"
                    Rows="7">Tata Consultancy Services is a global leader in IT services, consulting, and business solutions. The company provides technology and digital transformation services to organizations across multiple industries worldwide.

TCS helps businesses transform their operations through innovative technology solutions, cloud services, consulting, and digital engineering.</asp:TextBox>


                <asp:RequiredFieldValidator
                    ID="rfvAboutCompany"
                    runat="server"
                    ControlToValidate="txtAboutCompany"
                    ErrorMessage="About company information is required."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <!-- =========================================
                 DIVIDER
            ========================================== -->

            <div class="about-divider"></div>


            <!-- =========================================
                 ACTION BUTTONS
            ========================================== -->

            <div class="details-actions">


                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="edit-employer-btn"
                    CausesValidation="true"
                    OnClick="btnSave_Click" />


                <a href="Employer_Details.aspx"
                   class="back-employers-btn">

                    Cancel

                </a>


            </div>


        </div>

    </div>

</asp:Content>