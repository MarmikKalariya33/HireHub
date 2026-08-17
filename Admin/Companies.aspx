<%@ Page Title="Companies"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Companies.aspx.cs"
    Inherits="Job_Portal.Admin.Companies" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="companies-page">

        <!-- ================= HEADER ================= -->

        <div class="companies-page-header">

            <h1>Manage Companies</h1>

            <div class="companies-toolbar">

                <!-- Search -->

                <div class="company-search">

                    <span class="search-icon">⌕</span>

                    <input type="text"
                           id="companySearch"
                           class="search-input"
                           placeholder="Search companies..."
                           onkeyup="searchCompanies()" />

                </div>


                <!-- Add Company -->

                <a href="#"
                   class="add-company-btn"
                   onclick="return addCompany();">

                    <span>+</span>

                    Add New Company

                </a>

            </div>

        </div>


        <!-- ================= COMPANY CARD ================= -->

        <div class="company-card">

            <!-- TABLE HEADER -->

            <div class="company-row company-head">

                <div>
                    Company
                </div>

                <div>
                    Industry
                </div>

                <div>
                    Employees
                </div>

                <div>
                    Status
                </div>

                <div>
                    Actions
                </div>

            </div>


            <!-- ================= TCS ================= -->

            <div class="company-row">

                <div class="company-name-cell">

                    <div class="company-avatar">
                        T
                    </div>

                    <span>
                        TCS
                    </span>

                </div>


                <div class="industry-cell">
                    IT &amp; Software
                </div>


                <div>
                    500,000+
                </div>


                <div>

                    <span class="status-badge active">
                        Active
                    </span>

                </div>


                <div class="actions-cell">

                    <a href="#"
                       class="edit-btn"
                       title="Edit"
                       onclick="return editCompany('TCS');">

                        ✎

                    </a>


                    <button type="button"
                            class="delete-btn"
                            title="Delete"
                            onclick="deleteCompany('TCS');">

                        🗑

                    </button>

                </div>

            </div>


            <!-- ================= INFOSYS ================= -->

            <div class="company-row">

                <div class="company-name-cell">

                    <div class="company-avatar">
                        I
                    </div>

                    <span>
                        Infosys
                    </span>

                </div>


                <div class="industry-cell">
                    IT &amp; Software
                </div>


                <div>
                    300,000+
                </div>


                <div>

                    <span class="status-badge active">
                        Active
                    </span>

                </div>


                <div class="actions-cell">

                    <a href="#"
                       class="edit-btn"
                       title="Edit"
                       onclick="return editCompany('Infosys');">

                        ✎

                    </a>


                    <button type="button"
                            class="delete-btn"
                            title="Delete"
                            onclick="deleteCompany('Infosys');">

                        🗑

                    </button>

                </div>

            </div>


            <!-- ================= WIPRO ================= -->

            <div class="company-row">

                <div class="company-name-cell">

                    <div class="company-avatar">
                        W
                    </div>

                    <span>
                        Wipro
                    </span>

                </div>


                <div class="industry-cell">
                    IT &amp; Software
                </div>


                <div>
                    250,000+
                </div>


                <div>

                    <span class="status-badge active">
                        Active
                    </span>

                </div>


                <div class="actions-cell">

                    <a href="#"
                       class="edit-btn"
                       title="Edit"
                       onclick="return editCompany('Wipro');">

                        ✎

                    </a>


                    <button type="button"
                            class="delete-btn"
                            title="Delete"
                            onclick="deleteCompany('Wipro');">

                        🗑

                    </button>

                </div>

            </div>


            <!-- ================= HCL ================= -->

            <div class="company-row">

                <div class="company-name-cell">

                    <div class="company-avatar">
                        H
                    </div>

                    <span>
                        HCL Technologies
                    </span>

                </div>


                <div class="industry-cell">
                    IT Services
                </div>


                <div>
                    220,000+
                </div>


                <div>

                    <span class="status-badge active">
                        Active
                    </span>

                </div>


                <div class="actions-cell">

                    <a href="#"
                       class="edit-btn"
                       title="Edit"
                       onclick="return editCompany('HCL Technologies');">

                        ✎

                    </a>


                    <button type="button"
                            class="delete-btn"
                            title="Delete"
                            onclick="deleteCompany('HCL Technologies');">

                        🗑

                    </button>

                </div>

            </div>


            <!-- ================= RELIANCE ================= -->

            <div class="company-row">

                <div class="company-name-cell">

                    <div class="company-avatar">
                        R
                    </div>

                    <span>
                        Reliance Industries
                    </span>

                </div>


                <div class="industry-cell">
                    Conglomerate
                </div>


                <div>
                    340,000+
                </div>


                <div>

                    <span class="status-badge active">
                        Active
                    </span>

                </div>


                <div class="actions-cell">

                    <a href="#"
                       class="edit-btn"
                       title="Edit"
                       onclick="return editCompany('Reliance Industries');">

                        ✎

                    </a>


                    <button type="button"
                            class="delete-btn"
                            title="Delete"
                            onclick="deleteCompany('Reliance Industries');">

                        🗑

                    </button>

                </div>

            </div>

        </div>


        <!-- ================= FOOTER ================= -->

        <div class="companies-footer">

            <span class="showing-text">
                Showing 1-5 of 120 companies
            </span>


            <div class="pagination">

                <button type="button"
                        class="page-btn">
                    Previous
                </button>


                <button type="button"
                        class="page-btn active">
                    1
                </button>


                <button type="button"
                        class="page-btn">
                    2
                </button>


                <button type="button"
                        class="page-btn">
                    3
                </button>


                <button type="button"
                        class="page-btn">
                    Next
                </button>

            </div>

        </div>

    </div>


    <!-- ================= JAVASCRIPT ================= -->

    <script type="text/javascript">

        /* SEARCH */

        function searchCompanies() {

            var input =
                document.getElementById("companySearch");

            var filter =
                input.value.toLowerCase();

            var rows =
                document.querySelectorAll(
                    ".company-card .company-row:not(.company-head)"
                );


            for (var i = 0; i < rows.length; i++) {

                var text =
                    rows[i].innerText.toLowerCase();


                if (text.indexOf(filter) !== -1) {

                    rows[i].style.display = "grid";

                }
                else {

                    rows[i].style.display = "none";

                }

            }

        }


        /* ADD COMPANY */

        function addCompany() {

            alert(
                "Add New Company page will be connected later."
            );

            return false;

        }


        /* EDIT COMPANY */

        function editCompany(companyName) {

            alert(
                "Edit " +
                companyName +
                " will be connected later."
            );

            return false;

        }


        /* DELETE COMPANY */

        function deleteCompany(companyName) {

            var confirmDelete =
                confirm(
                    "Are you sure you want to delete " +
                    companyName +
                    "?"
                );


            if (confirmDelete) {

                alert(
                    companyName +
                    " deleted successfully."
                );

            }

        }

    </script>

</asp:Content>