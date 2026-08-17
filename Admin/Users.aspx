<%@ Page Title="Users"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Users.aspx.cs"
    Inherits="Job_Portal.Admin.Users" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ================= PAGE HEADER ================= -->

    <div class="users-page-header">

        <div>

            <h1>
                Users
            </h1>

            <p>
                Manage all registered users in HireHub.
            </p>

        </div>


        <button type="button"
                class="add-user-btn"
                onclick="openAddUser()">

            <i class="bi bi-plus-lg"></i>

            Add User

        </button>

    </div>


    <!-- ================= USER STATISTICS ================= -->

    <div class="user-stats">


        <div class="user-stat-card">

            <div class="user-stat-icon blue">

                <i class="bi bi-people"></i>

            </div>

            <div>

                <span>
                    Total Users
                </span>

                <h3>
                    2,847
                </h3>

            </div>

        </div>


        <div class="user-stat-card">

            <div class="user-stat-icon green">

                <i class="bi bi-person-check"></i>

            </div>

            <div>

                <span>
                    Active Users
                </span>

                <h3>
                    2,641
                </h3>

            </div>

        </div>


        <div class="user-stat-card">

            <div class="user-stat-icon orange">

                <i class="bi bi-person-plus"></i>

            </div>

            <div>

                <span>
                    New Users
                </span>

                <h3>
                    126
                </h3>

            </div>

        </div>


        <div class="user-stat-card">

            <div class="user-stat-icon red">

                <i class="bi bi-person-x"></i>

            </div>

            <div>

                <span>
                    Inactive Users
                </span>

                <h3>
                    80
                </h3>

            </div>

        </div>


    </div>


    <!-- ================= USER TABLE BOX ================= -->

    <div class="users-box">


        <!-- TABLE HEADER -->

        <div class="users-box-header">

            <div>

                <h2>
                    All Users
                </h2>

                <p>
                    List of all registered users
                </p>

            </div>


            <div class="user-search">

                <i class="bi bi-search"></i>

                <input type="text"
                       id="userSearch"
                       placeholder="Search users..."
                       onkeyup="searchUsers()" />

            </div>

        </div>


        <!-- ================= TABLE ================= -->

        <div class="table-responsive">

            <table class="users-table"
                   id="usersTable">

                <thead>

                    <tr>

                        <th>
                            #
                        </th>

                        <th>
                            User
                        </th>

                        <th>
                            Email
                        </th>

                        <th>
                            Phone
                        </th>

                        <th>
                            Role
                        </th>

                        <th>
                            Status
                        </th>

                        <th>
                            Joined Date
                        </th>

                        <th>
                            Action
                        </th>

                    </tr>

                </thead>


                <tbody>


                    <!-- USER 1 -->

                    <tr>

                        <td>
                            1
                        </td>

                        <td>

                            <div class="table-user">

                                <div class="table-avatar">
                                    MK
                                </div>

                                <div>

                                    <strong>
                                        Marmik Kalariya
                                    </strong>

                                    <small>
                                        @marmik
                                    </small>

                                </div>

                            </div>

                        </td>

                        <td>
                            marmik@gmail.com
                        </td>

                        <td>
                            +91 98765 43210
                        </td>

                        <td>
                            <span class="role-badge">
                                Job Seeker
                            </span>
                        </td>

                        <td>
                            <span class="status active-status">
                                Active
                            </span>
                        </td>

                        <td>
                            14 Aug 2026
                        </td>

                        <td>

                            <div class="action-buttons">

                                <a href="Edit_users.aspx"
                                 class="action-btn edit"
                                    title="Edit">
                                 <i class="bi bi-pencil"></i>
                               </a>

                                <button type="button"
                                        class="action-btn delete"
                                        title="Delete"
                                        onclick="deleteUser('Marmik Kalariya')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 2 -->

                    <tr>

                        <td>
                            2
                        </td>

                        <td>

                            <div class="table-user">

                                <div class="table-avatar">
                                    JP
                                </div>

                                <div>

                                    <strong>
                                        Jatin Patel
                                    </strong>

                                    <small>
                                        @jatin
                                    </small>

                                </div>

                            </div>

                        </td>

                        <td>
                            jatin@gmail.com
                        </td>

                        <td>
                            +91 98765 12345
                        </td>

                        <td>

                            <span class="role-badge">
                                Job Seeker
                            </span>

                        </td>

                        <td>

                            <span class="status active-status">
                                Active
                            </span>

                        </td>

                        <td>
                            12 Aug 2026
                        </td>

                        <td>

                            <div class="action-buttons">

                                <a href="Edit_users.aspx"
                                class="action-btn edit"
                                  title="Edit">
                                 <i class="bi bi-pencil"></i>
                                </a>

                                <button type="button"
                                        class="action-btn delete"
                                        onclick="deleteUser('Jatin Patel')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 3 -->

                    <tr>

                        <td>
                            3
                        </td>

                        <td>

                            <div class="table-user">

                                <div class="table-avatar">
                                    RS
                                </div>

                                <div>

                                    <strong>
                                        Rahul Shah
                                    </strong>

                                    <small>
                                        @rahul
                                    </small>

                                </div>

                            </div>

                        </td>

                        <td>
                            rahul@gmail.com
                        </td>

                        <td>
                            +91 99887 66554
                        </td>

                        <td>

                            <span class="role-badge">
                                Job Seeker
                            </span>

                        </td>

                        <td>

                            <span class="status inactive-status">
                                Inactive
                            </span>

                        </td>

                        <td>
                            08 Aug 2026
                        </td>

                        <td>

                            <div class="action-buttons">

                                <a href="Edit_users.aspx"
                                 class="action-btn edit"
                                   title="Edit">
                                    <i class="bi bi-pencil"></i>
                                  </a>

                                <button type="button"
                                        class="action-btn delete"
                                        onclick="deleteUser('Rahul Shah')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 4 -->

                    <tr>

                        <td>
                            4
                        </td>

                        <td>

                            <div class="table-user">

                                <div class="table-avatar">
                                    PS
                                </div>

                                <div>

                                    <strong>
                                        Priya Shah
                                    </strong>

                                    <small>
                                        @priya
                                    </small>

                                </div>

                            </div>

                        </td>

                        <td>
                            priya@gmail.com
                        </td>

                        <td>
                            +91 90909 12121
                        </td>

                        <td>

                            <span class="role-badge">
                                Job Seeker
                            </span>

                        </td>

                        <td>

                            <span class="status active-status">
                                Active
                            </span>

                        </td>

                        <td>
                            05 Aug 2026
                        </td>

                        <td>

                            <div class="action-buttons">

                                <a href="Edit_users.aspx"
                                 class="action-btn edit"
                                   title="Edit">
                                 <i class="bi bi-pencil"></i>
                                 </a>

                                <button type="button"
                                        class="action-btn delete"
                                        onclick="deleteUser('Priya Shah')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                </tbody>

            </table>

        </div>


        <!-- ================= PAGINATION ================= -->

        <div class="users-pagination">

            <span>
                Showing 1 to 4 of 2,847 users
            </span>

            <div>

                <button type="button">
                    <i class="bi bi-chevron-left"></i>
                </button>

                <button type="button"
                        class="current-page">
                    1
                </button>

                <button type="button">
                    2
                </button>

                <button type="button">
                    3
                </button>

                <button type="button">
                    <i class="bi bi-chevron-right"></i>
                </button>

            </div>

        </div>


    </div>


    <!-- ================= ADD USER MODAL ================= -->

    <div class="user-modal"
         id="userModal">

        <div class="user-modal-content">

            <div class="modal-header-custom">

                <h3>
                    Add New User
                </h3>

                <button type="button"
                        onclick="closeAddUser()">

                    <i class="bi bi-x-lg"></i>

                </button>

            </div>


            <div class="modal-body-custom">

                <div class="form-row">

                    <div class="form-group">

                        <label>
                            First Name
                        </label>

                        <input type="text"
                               placeholder="Enter first name" />

                    </div>


                    <div class="form-group">

                        <label>
                            Last Name
                        </label>

                        <input type="text"
                               placeholder="Enter last name" />

                    </div>

                </div>


                <div class="form-group">

                    <label>
                        Email
                    </label>

                    <input type="email"
                           placeholder="Enter email address" />

                </div>


                <div class="form-group">

                    <label>
                        Phone
                    </label>

                    <input type="text"
                           placeholder="Enter phone number" />

                </div>


                <div class="form-group">

                    <label>
                        Role
                    </label>

                    <select>

                        <option>
                            Job Seeker
                        </option>

                        <option>
                            Employer
                        </option>

                    </select>

                </div>

            </div>


            <div class="modal-footer-custom">

                <button type="button"
                        class="cancel-btn"
                        onclick="closeAddUser()">

                    Cancel

                </button>

                <button type="button"
                        class="save-user-btn">

                    Save User

                </button>

            </div>

        </div>

    </div>


    <!-- ================= JAVASCRIPT ================= -->

    <script>

        function openAddUser() {

            document.getElementById("userModal")
                .classList.add("show");

        }


        function closeAddUser() {

            document.getElementById("userModal")
                .classList.remove("show");

        }


        function deleteUser(name) {

            if (confirm("Are you sure you want to delete " + name + "?")) {

                alert(name + " deleted successfully.");

            }

        }


        function searchUsers() {

            var input =
                document.getElementById("userSearch");

            var filter =
                input.value.toLowerCase();

            var table =
                document.getElementById("usersTable");

            var rows =
                table.getElementsByTagName("tr");


            for (var i = 1; i < rows.length; i++) {

                var text =
                    rows[i].innerText.toLowerCase();

                if (text.indexOf(filter) > -1) {

                    rows[i].style.display = "";

                }
                else {

                    rows[i].style.display = "none";

                }

            }

        }

    </script>


</asp:Content>