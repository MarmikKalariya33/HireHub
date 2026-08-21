<%@ Page Title="Applications"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Applications.aspx.cs"
    Inherits="Job_Portal.Admin.Applications" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/applications.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="applications-page">


        <!-- =========================================
             PAGE HEADER
        ========================================== -->

        <div class="applications-header">

            <h1 class="applications-title">
                Manage Applications
            </h1>


            <div class="applications-actions">


                <!-- Search -->

                <div class="application-search">

                    <i class="bi bi-search application-search-icon"></i>

                    <input
                        type="text"
                        id="applicationSearch"
                        placeholder="Search applicants..."
                        autocomplete="off" />

                </div>


                <!-- Status Filter -->

                <div class="application-filter">

                    <select id="applicationStatusFilter">

                        <option value="all">
                            All Statuses
                        </option>

                        <option value="pending">
                            Pending
                        </option>

                        <option value="reviewed">
                            Reviewed
                        </option>

                        <option value="hired">
                            Hired
                        </option>

                        <option value="rejected">
                            Rejected
                        </option>

                    </select>

                </div>


            </div>

        </div>


        <!-- =========================================
             APPLICATION TABLE
        ========================================== -->

        <div class="applications-table-card">

            <div class="applications-table-wrapper">

                <table
                    class="applications-table"
                    id="applicationsTable">


                    <!-- TABLE HEADER -->

                    <thead>

                        <tr>

                            <th class="application-col-applicant">
                                Applicant
                            </th>

                            <th class="application-col-job">
                                Job Title
                            </th>

                            <th class="application-col-status">
                                Status
                            </th>

                            <th class="application-col-date">
                                Applied Date
                            </th>

                            <th class="application-col-actions">
                                Actions
                            </th>

                        </tr>

                    </thead>


                    <!-- TABLE BODY -->

                    <tbody>


                        <!-- =================================
                             ROW 1
                        ================================== -->

                        <tr>

                            <td>

                                <div class="application-applicant">

                                    <div class="application-avatar">
                                        RS
                                    </div>

                                    <span class="applicant-name">
                                        Rahul Sharma
                                    </span>

                                </div>

                            </td>


                            <td>

                                <span class="application-job">
                                    Senior React Developer
                                </span>

                            </td>


                            <td>

                                <span class="application-status status-pending">
                                    Pending
                                </span>

                            </td>


                            <td>

                                <span class="application-date">
                                    Jan 22 2024
                                </span>

                            </td>


                            <td>

                                <div class="application-actions">


                                    <a href="#"
                                       class="application-action application-edit"
                                       title="Edit Application">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                       class="application-action application-delete"
                                       title="Delete Application">

                                        <i class="bi bi-trash3"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>



                        <!-- =================================
                             ROW 2
                        ================================== -->

                        <tr>

                            <td>

                                <div class="application-applicant">

                                    <div class="application-avatar">
                                        PP
                                    </div>

                                    <span class="applicant-name">
                                        Priya Patel
                                    </span>

                                </div>

                            </td>


                            <td>

                                <span class="application-job">
                                    UI/UX Designer
                                </span>

                            </td>


                            <td>

                                <span class="application-status status-reviewed">
                                    Reviewed
                                </span>

                            </td>


                            <td>

                                <span class="application-date">
                                    Jan 25 2024
                                </span>

                            </td>


                            <td>

                                <div class="application-actions">


                                    <a href="#"
                                       class="application-action application-edit"
                                       title="Edit Application">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                       class="application-action application-delete"
                                       title="Delete Application">

                                        <i class="bi bi-trash3"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>



                        <!-- =================================
                             ROW 3
                        ================================== -->

                        <tr>

                            <td>

                                <div class="application-applicant">

                                    <div class="application-avatar">
                                        AK
                                    </div>

                                    <span class="applicant-name">
                                        Amit Kumar
                                    </span>

                                </div>

                            </td>


                            <td>

                                <span class="application-job">
                                    Data Analyst
                                </span>

                            </td>


                            <td>

                                <span class="application-status status-hired">
                                    Hired
                                </span>

                            </td>


                            <td>

                                <span class="application-date">
                                    Feb 01 2024
                                </span>

                            </td>


                            <td>

                                <div class="application-actions">


                                    <a href="#"
                                       class="application-action application-edit"
                                       title="Edit Application">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                       class="application-action application-delete"
                                       title="Delete Application">

                                        <i class="bi bi-trash3"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>



                        <!-- =================================
                             ROW 4
                        ================================== -->

                        <tr>

                            <td>

                                <div class="application-applicant">

                                    <div class="application-avatar">
                                        SG
                                    </div>

                                    <span class="applicant-name">
                                        Sneha Gupta
                                    </span>

                                </div>

                            </td>


                            <td>

                                <span class="application-job">
                                    Backend Developer
                                </span>

                            </td>


                            <td>

                                <span class="application-status status-rejected">
                                    Rejected
                                </span>

                            </td>


                            <td>

                                <span class="application-date">
                                    Feb 05 2024
                                </span>

                            </td>


                            <td>

                                <div class="application-actions">


                                    <a href="#"
                                       class="application-action application-edit"
                                       title="Edit Application">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                       class="application-action application-delete"
                                       title="Delete Application">

                                        <i class="bi bi-trash3"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>



                        <!-- =================================
                             ROW 5
                        ================================== -->

                        <tr>

                            <td>

                                <div class="application-applicant">

                                    <div class="application-avatar">
                                        VS
                                    </div>

                                    <span class="applicant-name">
                                        Vikram Singh
                                    </span>

                                </div>

                            </td>


                            <td>

                                <span class="application-job">
                                    Marketing Manager
                                </span>

                            </td>


                            <td>

                                <span class="application-status status-pending">
                                    Pending
                                </span>

                            </td>


                            <td>

                                <span class="application-date">
                                    Feb 10 2024
                                </span>

                            </td>


                            <td>

                                <div class="application-actions">


                                    <a href="#"
                                       class="application-action application-edit"
                                       title="Edit Application">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                       class="application-action application-delete"
                                       title="Delete Application">

                                        <i class="bi bi-trash3"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>


                    </tbody>

                </table>

            </div>

        </div>


    </div>



    <!-- =========================================
         SEARCH + FILTER JAVASCRIPT
    ========================================== -->

    <script>

        document.addEventListener("DOMContentLoaded", function () {


            const searchInput =
                document.getElementById("applicationSearch");


            const statusFilter =
                document.getElementById("applicationStatusFilter");


            const table =
                document.getElementById("applicationsTable");


            const rows =
                table.querySelectorAll("tbody tr");



            function filterApplications() {


                const search =
                    searchInput.value
                        .toLowerCase()
                        .trim();


                const selectedStatus =
                    statusFilter.value
                        .toLowerCase();



                rows.forEach(function (row) {


                    const rowText =
                        row.innerText
                            .toLowerCase();


                    const status =
                        row.cells[2].innerText
                            .toLowerCase()
                            .trim();



                    const matchesSearch =
                        search === "" ||
                        rowText.includes(search);



                    const matchesStatus =
                        selectedStatus === "all" ||
                        status === selectedStatus;



                    row.style.display =
                        matchesSearch && matchesStatus
                            ? ""
                            : "none";


                });

            }



            searchInput.addEventListener(
                "input",
                filterApplications
            );


            statusFilter.addEventListener(
                "change",
                filterApplications
            );


        });

    </script>


</asp:Content>