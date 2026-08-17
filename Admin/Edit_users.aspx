<%@ Page Title="Employers Details"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_employers.aspx.cs"
    Inherits="Job_Portal.Admin.Users" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="edit-user-page">

        <!-- BACK BUTTON -->
        <a href="Users.aspx" class="back-users">
            <i class="bi bi-arrow-left"></i>
            Back to Users
        </a>


        <!-- USER DETAILS CARD -->
        <div class="user-details-card">

            <!-- USER HEADER -->
            <div class="user-details-header">

                <div class="user-profile-avatar">
                    RS
                </div>

                <div class="user-profile-info">

                    <div class="user-name-row">

                        <h1>
                            Rahul Sharma
                        </h1>

                        <span class="detail-status active">
                            Active
                        </span>

                    </div>

                    <p>
                        Registered Candidate
                    </p>

                </div>

            </div>


            <!-- DIVIDER -->
            <div class="detail-divider"></div>


            <!-- USER INFORMATION -->
            <div class="user-information">

                <!-- EMAIL -->
                <div class="detail-item">

                    <span class="detail-label">
                        EMAIL ADDRESS
                    </span>

                    <span class="detail-value">
                        rahul.sharma@email.com
                    </span>

                </div>


                <!-- PHONE -->
                <div class="detail-item">

                    <span class="detail-label">
                        PHONE NUMBER
                    </span>

                    <span class="detail-value">
                        +91 98765 43210
                    </span>

                </div>


                <!-- LOCATION -->
                <div class="detail-item">

                    <span class="detail-label">
                        LOCATION
                    </span>

                    <span class="detail-value">
                        Mumbai, Maharashtra
                    </span>

                </div>


                <!-- USER ID -->
                <div class="detail-item">

                    <span class="detail-label">
                        USER ID
                    </span>

                    <span class="detail-value">
                        USR-001
                    </span>

                </div>


                <!-- REGISTRATION DATE -->
                <div class="detail-item">

                    <span class="detail-label">
                        REGISTRATION DATE
                    </span>

                    <span class="detail-value">
                        January 15, 2024
                    </span>

                </div>

            </div>


            <!-- PERSONAL INFORMATION -->
            <div class="detail-divider"></div>

            <div class="personal-information">

                <h3>
                    Personal Information
                </h3>

                <p>
                    Rahul is a seasoned Full Stack Engineer based in Mumbai.
                    He is actively seeking job opportunities in React,
                    Node.js, and .NET web application development.
                    Currently holds 4 completed application submissions.
                </p>

            </div>


            <!-- ACTION BUTTONS -->
            <div class="detail-divider"></div>

            <div class="user-action-buttons">

                <button type="button"
                        class="edit-user-button"
                        onclick="editUser()">

                    <i class="bi bi-pencil"></i>
                    Edit User

                </button>


                <button type="button"
                        class="block-user-button"
                        onclick="blockUser()">

                    <i class="bi bi-person-x"></i>
                    Block User

                </button>

            </div>

        </div>

    </div>


    <!-- JAVASCRIPT -->
    <script>

        function editUser() {

            alert("Edit User functionality will be added here.");

        }


        function blockUser() {

            var result =
                confirm("Are you sure you want to block Rahul Sharma?");

            if (result) {

                alert("Rahul Sharma has been blocked successfully.");

            }

        }

    </script>

</asp:Content>