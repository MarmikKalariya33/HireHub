<%@ Page Title="Employers"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Employers.aspx.cs"
    Inherits="Job_Portal.Admin.Employers" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ================= PAGE HEADER ================= -->

    <div class="employer-page-header">

        <div>

            <h1>
                Manage Employers
            </h1>

        </div>


        <!-- SEARCH -->

        <div class="employer-search">

            <i class="bi bi-search"></i>

            <input type="text"
                   id="employerSearch"
                   placeholder="Search employers..."
                   onkeyup="searchEmployers()" />

        </div>

    </div>


    <!-- ================= EMPLOYERS TABLE ================= -->

    <div class="employers-box">


        <div class="table-responsive">

            <table class="employers-table"
                   id="employersTable">


                <!-- ================= TABLE HEADER ================= -->

                <thead>

                    <tr>

                        <th>
                            Company
                        </th>

                        <th>
                            Email
                        </th>

                        <th>
                            Status
                        </th>

                        <th>
                            Jobs Post
                        </th>

                        <th>
                            Joined Date
                        </th>

                        <th>
                            Actions
                        </th>

                    </tr>

                </thead>


                <!-- ================= TABLE BODY ================= -->

                <tbody>


                    <!-- ================= EMPLOYER 1 ================= -->

                    <tr>

                        <td>

                            <div class="company-info">

                                <div class="company-avatar">
                                    T
                                </div>

                                <span>
                                    TCS
                                </span>

                            </div>

                        </td>


                        <td>
                            hr@tcs.com
                        </td>


                        <td>

                            <span class="employer-status active">
                                Active
                            </span>

                        </td>


                        <td>
                            45 jobs
                        </td>


                        <td>
                            Jan 2024
                        </td>


                        <td>

                            <div class="employer-actions">

                                <a href="Edit_employers.aspx"
                                 class="employer-action edit"
                                 title="Edit">
                                 <i class="bi bi-pencil"></i>
                                 </a>


                                <button type="button"
                                        class="employer-action delete"
                                        title="Delete"
                                        onclick="deleteEmployer('TCS')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- ================= EMPLOYER 2 ================= -->

                    <tr>

                        <td>

                            <div class="company-info">

                                <div class="company-avatar">
                                    I
                                </div>

                                <span>
                                    Infosys
                                </span>

                            </div>

                        </td>


                        <td>
                            careers@infosys.com
                        </td>


                        <td>

                            <span class="employer-status active">
                                Active
                            </span>

                        </td>


                        <td>
                            38 jobs
                        </td>


                        <td>
                            Feb 2024
                        </td>


                        <td>

                            <div class="employer-actions">

                                <button type="button"
                                        class="employer-action edit"
                                        title="Edit">

                                    <i class="bi bi-pencil"></i>

                                </button>


                                <button type="button"
                                        class="employer-action delete"
                                        title="Delete"
                                        onclick="deleteEmployer('Infosys')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- ================= EMPLOYER 3 ================= -->

                    <tr>

                        <td>

                            <div class="company-info">

                                <div class="company-avatar">
                                    W
                                </div>

                                <span>
                                    Wipro
                                </span>

                            </div>

                        </td>


                        <td>
                            recruit@wipro.com
                        </td>


                        <td>

                            <span class="employer-status pending">
                                Pending
                            </span>

                        </td>


                        <td>
                            22 jobs
                        </td>


                        <td>
                            Mar 2024
                        </td>


                        <td>

                            <div class="employer-actions">

                                <button type="button"
                                        class="employer-action edit"
                                        title="Edit">

                                    <i class="bi bi-pencil"></i>

                                </button>


                                <button type="button"
                                        class="employer-action delete"
                                        title="Delete"
                                        onclick="deleteEmployer('Wipro')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- ================= EMPLOYER 4 ================= -->

                    <tr>

                        <td>

                            <div class="company-info">

                                <div class="company-avatar">
                                    H
                                </div>

                                <span>
                                    HCL Technologies
                                </span>

                            </div>

                        </td>


                        <td>
                            jobs@hcl.com
                        </td>


                        <td>

                            <span class="employer-status active">
                                Active
                            </span>

                        </td>


                        <td>
                            31 jobs
                        </td>


                        <td>
                            Apr 2024
                        </td>


                        <td>

                            <div class="employer-actions">

                                <button type="button"
                                        class="employer-action edit"
                                        title="Edit">

                                    <i class="bi bi-pencil"></i>

                                </button>


                                <button type="button"
                                        class="employer-action delete"
                                        title="Delete"
                                        onclick="deleteEmployer('HCL Technologies')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                    <!-- ================= EMPLOYER 5 ================= -->

                    <tr>

                        <td>

                            <div class="company-info">

                                <div class="company-avatar">
                                    M
                                </div>

                                <span>
                                    Tech Mahindra
                                </span>

                            </div>

                        </td>


                        <td>
                            hire@techmahindra.com
                        </td>


                        <td>

                            <span class="employer-status blocked">
                                Blocked
                            </span>

                        </td>


                        <td>
                            15 jobs
                        </td>


                        <td>
                            May 2024
                        </td>


                        <td>

                            <div class="employer-actions">

                                <button type="button"
                                        class="employer-action edit"
                                        title="Edit">

                                    <i class="bi bi-pencil"></i>

                                </button>


                                <button type="button"
                                        class="employer-action delete"
                                        title="Delete"
                                        onclick="deleteEmployer('Tech Mahindra')">

                                    <i class="bi bi-trash"></i>

                                </button>

                            </div>

                        </td>

                    </tr>


                </tbody>

            </table>

        </div>


        <!-- ================= PAGINATION ================= -->

        <div class="employers-pagination">


            <span>
                Showing 1-5 of 456 employers
            </span>


            <div class="pagination-buttons">

                <button type="button">
                    Previous
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
                    Next
                </button>

            </div>

        </div>


    </div>


    <!-- ================= JAVASCRIPT ================= -->

    <script>

        // SEARCH EMPLOYERS

        function searchEmployers() {

            var input =
                document.getElementById("employerSearch");

            var filter =
                input.value.toLowerCase();

            var table =
                document.getElementById("employersTable");

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


        // DELETE EMPLOYER

        function deleteEmployer(companyName) {

            var result =
                confirm(
                    "Are you sure you want to delete "
                    + companyName
                    + "?"
                );


            if (result) {

                alert(
                    companyName
                    + " deleted successfully."
                );

            }

        }

    </script>


</asp:Content>