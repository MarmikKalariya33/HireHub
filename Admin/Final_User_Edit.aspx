<%@ Page Title="Edit User"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_User_edit.aspx.cs"
    Inherits="Job_Portal.Admin.Final_use_edit" %>


<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_user_edit.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="user-details-page">


        <!-- =========================================
             BACK BUTTON
        ========================================= -->

        <div class="back-wrapper">

            <a href="Edit_users.aspx"
               class="back-link">

                <span class="back-arrow">←</span>

                Back to User Details

            </a>

        </div>


        <!-- =========================================
             EDIT USER CARD
        ========================================= -->

        <div class="user-card">


            <!-- =========================================
                 USER HEADER
            ========================================= -->

            <div class="user-header">

                <div class="user-avatar-large">
                    RS
                </div>


                <div class="user-title-area">

                    <div class="user-name-row">

                        <h1>
                            Edit User
                        </h1>

                    </div>

                    <p class="user-type">
                        Update User Information
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <!-- =========================================
                 USER INFORMATION
            ========================================= -->

            <div class="user-information">


                <!-- =====================================
                     FULL NAME
                ====================================== -->

                <div class="information-group">

                    <label>
                        FULL NAME
                    </label>


                    <asp:TextBox
                        ID="txtName"
                        runat="server"
                        CssClass="edit-input"
                        Text="Rahul Sharma">
                    </asp:TextBox>


                    <!-- .NET TOOLBOX VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvName"
                        runat="server"
                        ControlToValidate="txtName"
                        ErrorMessage="Full name is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     EMAIL
                ====================================== -->

                <div class="information-group">

                    <label>
                        EMAIL ADDRESS
                    </label>


                    <asp:TextBox
                        ID="txtEmail"
                        runat="server"
                        CssClass="edit-input"
                        Text="rahul.sharma@email.com">
                    </asp:TextBox>


                    <!-- REQUIRED VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvEmail"
                        runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email address is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- EMAIL FORMAT VALIDATION -->

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
                     PHONE NUMBER
                ====================================== -->

                <div class="information-group">

                    <label>
                        PHONE NUMBER
                    </label>


                    <asp:TextBox
                        ID="txtPhone"
                        runat="server"
                        CssClass="edit-input"
                        Text="+91 98765 43210">
                    </asp:TextBox>


                    <!-- REQUIRED VALIDATION -->

                    <asp:RequiredFieldValidator
                        ID="rfvPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>


                    <!-- PHONE FORMAT VALIDATION -->

                    <asp:RegularExpressionValidator
                        ID="revPhone"
                        runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Please enter a valid phone number."
                        ForeColor="Red"
                        Display="Dynamic"
                        ValidationExpression="^(\+91[\s-]?)?[6-9][0-9]{4}[\s-]?[0-9]{5}$">
                    </asp:RegularExpressionValidator>

                </div>


                <!-- =====================================
                     LOCATION
                ====================================== -->

                <div class="information-group">

                    <label>
                        LOCATION
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
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     REGISTRATION DATE
                ====================================== -->

                <div class="information-group">

                    <label>
                        REGISTRATION DATE
                    </label>


                    <asp:TextBox
                        ID="txtRegistrationDate"
                        runat="server"
                        CssClass="edit-input"
                        Text="January 15, 2024">
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
                     USER TYPE
                ====================================== -->

                <div class="information-group">

                    <label>
                        USER TYPE
                    </label>


                    <asp:DropDownList
                        ID="ddlUserType"
                        runat="server"
                        CssClass="edit-input">


                        <asp:ListItem
                            Text="-- Select User Type --"
                            Value="">
                        </asp:ListItem>


                        <asp:ListItem
                            Text="Registered Candidate"
                            Value="Candidate">
                        </asp:ListItem>


                        <asp:ListItem
                            Text="Employer"
                            Value="Employer">
                        </asp:ListItem>


                        <asp:ListItem
                            Text="Admin"
                            Value="Admin">
                        </asp:ListItem>


                    </asp:DropDownList>


                    <asp:RequiredFieldValidator
                        ID="rfvUserType"
                        runat="server"
                        ControlToValidate="ddlUserType"
                        InitialValue=""
                        ErrorMessage="Please select a user type."
                        ForeColor="Red"
                        Display="Dynamic">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- =====================================
                     STATUS
                ====================================== -->

                <div class="information-group">

                    <label>
                        STATUS
                    </label>


                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="edit-input">


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


                        <asp:ListItem
                            Text="Blocked"
                            Value="Blocked">
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


            <div class="divider"></div>


            <!-- =========================================
                 PERSONAL INFORMATION
            ========================================= -->

            <div class="personal-information">

                <h2>
                    Personal Information
                </h2>


                <asp:TextBox
                    ID="txtPersonalInformation"
                    runat="server"
                    CssClass="edit-input edit-textarea"
                    TextMode="MultiLine"
                    Rows="6">Rahul is a seasoned Full Stack Engineer based in Mumbai.
He is actively seeking job opportunities in React, Node.js,
and .NET web application development.
Currently holds 4 completed application submissions.</asp:TextBox>


                <asp:RequiredFieldValidator
                    ID="rfvPersonalInformation"
                    runat="server"
                    ControlToValidate="txtPersonalInformation"
                    ErrorMessage="Personal information is required."
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

            </div>


            <div class="divider"></div>


            <!-- =========================================
                 BUTTONS
            ========================================= -->

            <div class="user-actions">


                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="btn-edit"
                    CausesValidation="true"
                    OnClick="btnSave_Click" />


                <a href="Edit_users.aspx"
                   class="btn-cancel">

                    Cancel

                </a>


            </div>


        </div>

    </div>

</asp:Content>