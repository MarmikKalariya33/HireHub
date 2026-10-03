
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

        <!-- BACK BUTTON -->
        <div class="back-wrapper">

            <a href="Edit_users.aspx"
               class="back-link">

                <span class="back-arrow">←</span>

                Back to User Details

            </a>

        </div>


        <!-- EDIT USER CARD -->
        <div class="user-card">


            <!-- HEADER -->
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


            <!-- USER INFORMATION -->
            <div class="user-information">


                <!-- FULL NAME -->
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

                </div>


                <!-- EMAIL -->
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

                </div>


                <!-- PHONE -->
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

                </div>


                <!-- LOCATION -->
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

                </div>


                <!-- REGISTRATION DATE -->
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

                </div>


                <!-- USER TYPE -->
                <div class="information-group">

                    <label>
                        USER TYPE
                    </label>

                    <asp:DropDownList
                        ID="ddlUserType"
                        runat="server"
                        CssClass="edit-input">

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

                </div>


                <!-- STATUS -->
                <div class="information-group">

                    <label>
                        STATUS
                    </label>

                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="edit-input">

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

                </div>


            </div>


            <div class="divider"></div>


            <!-- PERSONAL INFORMATION -->
            <div class="personal-information">

                <h2>
                    Personal Information
                </h2>

                <asp:TextBox
                    ID="txtPersonalInformation"
                    runat="server"
                    CssClass="edit-input edit-textarea"
                    TextMode="MultiLine"
                    Rows="6">

Rahul is a seasoned Full Stack Engineer based in Mumbai.
He is actively seeking job opportunities in React, Node.js,
and .NET web application development.
Currently holds 4 completed application submissions.

                </asp:TextBox>

            </div>


            <div class="divider"></div>


            <!-- BUTTONS -->
            <div class="user-actions">

                <asp:Button
                    ID="btnSave"
                    runat="server"
                    Text="Save Changes"
                    CssClass="btn-edit"
                    OnClick="btnSave_Click" />


                <a href="Edit_users.aspx"
                   class="btn-cancel">

                    Cancel

                </a>

            </div>


        </div>

    </div>

</asp:Content>

