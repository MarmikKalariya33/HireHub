<%@ Page Title="User Details"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_users.aspx.cs"
    Inherits="Job_Portal.Admin.Edit_users" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/edit_users.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="user-details-page">

        <div class="back-wrapper">

            <a href="Users.aspx"
               class="back-link">

                <span class="back-arrow">←</span>

                Back to Users

            </a>

        </div>


        <div class="user-card">

            <div class="user-header">

                <div class="user-avatar-large">
                    RS
                </div>


                <div class="user-title-area">

                    <div class="user-name-row">

                        <h1>
                            Rahul Sharma
                        </h1>

                        <span class="status-badge status-active">
                            Active
                        </span>

                    </div>

                    <p class="user-type">
                        Registered Candidate
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <div class="user-information">

                <div class="information-group">

                    <label>
                        EMAIL ADDRESS
                    </label>

                    <div class="information-value">
                        rahul.sharma@email.com
                    </div>

                </div>


                <div class="information-group">

                    <label>
                        PHONE NUMBER
                    </label>

                    <div class="information-value">
                        +91 98765 43210
                    </div>

                </div>


                <div class="information-group">

                    <label>
                        LOCATION
                    </label>

                    <div class="information-value">
                        Mumbai, Maharashtra
                    </div>

                </div>


                <div class="information-group">

                    <label>
                        REGISTRATION DATE
                    </label>

                    <div class="information-value">
                        January 15, 2024
                    </div>

                </div>

            </div>


            <div class="divider"></div>


            <div class="personal-information">

                <h2>
                    Personal Information
                </h2>

                <p>
                    Rahul is a seasoned Full Stack Engineer based in Mumbai.
                    He is actively seeking job opportunities in React, Node.js,
                    and .NET web application development.
                    Currently holds 4 completed application submissions.
                </p>

            </div>


            <div class="divider"></div>


            <div class="user-actions">

                <a href="Edit_users.aspx"
                   class="btn-edit">

                    Edit User

                </a>


                <asp:Button
                    ID="btnBlockUser"
                    runat="server"
                    Text="Block User"
                    CssClass="btn-block" />

            </div>

        </div>

    </div>

</asp:Content>