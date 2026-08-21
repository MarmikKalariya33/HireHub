<%@ Page Title="Manage Companies"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Companies.aspx.cs"
    Inherits="Job_Portal.Admin.Companies" %>

<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/companies.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="companies-page">

        <!-- =========================================
             HEADER
        ========================================== -->

        <div class="companies-header">

            <h1 class="companies-title">
                Manage Companies
            </h1>

            <div class="companies-actions">

                <!-- SEARCH -->

                <div class="company-search">

                    <i class="bi bi-search company-search-icon"></i>

                    <input type="text"
                        id="companySearch"
                        placeholder="Search companies..."
                        autocomplete="off" />

                </div>


                <!-- ADD COMPANY -->

                <a href="Add_Companies.aspx"
                    class="add-company-btn">

                    <i class="bi bi-plus-lg"></i>

                    <span>
                        Add New Company
                    </span>

                </a>

            </div>

        </div>


        <!-- =========================================
             TABLE CARD
        ========================================== -->

        <div class="companies-table-card">

            <div class="companies-table-wrapper">

                <table
                    class="companies-table"
                    id="companiesTable">

                    <!-- TABLE HEADER -->

                    <thead>

                        <tr>

                            <th class="company-col-company">
                                Company
                            </th>

                            <th class="company-col-industry">
                                Industry
                            </th>

                            <th class="company-col-employees">
                                Employees
                            </th>

                            <th class="company-col-status">
                                Status
                            </th>

                            <th class="company-col-actions">
                                Actions
                            </th>

                        </tr>

                    </thead>


                    <!-- TABLE BODY -->

                    <tbody>

                        <!-- ROW 1 -->

                        <tr>

                            <td>

                                <div class="company-name-wrapper">

                                    <div class="company-logo">
                                        T
                                    </div>

                                    <span class="company-name">
                                        TCS
                                    </span>

                                </div>

                            </td>


                            <td>
                                <span class="company-industry">
                                    IT &amp; Software
                                </span>
                            </td>


                            <td>
                                <span class="company-employees">
                                    500,000+
                                </span>
                            </td>


                            <td>

                                <span class="company-status company-status-active">
                                    Active
                                </span>

                            </td>


                            <td>

                                <div class="company-actions">

                                    <a href="Edit_Companies.aspx"
                                        class="company-action company-edit"
                                        title="Edit Company">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                        class="company-action company-delete"
                                        title="Delete Company">

                                        <i class="bi bi-trash3"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>


                        <!-- ROW 2 -->

                        <tr>

                            <td>

                                <div class="company-name-wrapper">

                                    <div class="company-logo">
                                        I
                                    </div>

                                    <span class="company-name">
                                        Infosys
                                    </span>

                                </div>

                            </td>


                            <td>
                                <span class="company-industry">
                                    IT &amp; Software
                                </span>
                            </td>


                            <td>
                                <span class="company-employees">
                                    300,000+
                                </span>
                            </td>


                            <td>

                                <span class="company-status company-status-active">
                                    Active
                                </span>

                            </td>


                            <td>

                                <div class="company-actions">

                                    <a href="Edit_Companies.aspx"
                                        class="company-action company-edit"
                                        title="Edit Company">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                        class="company-action company-delete"
                                        title="Delete Company">

                                        <i class="bi bi-trash3"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>


                        <!-- ROW 3 -->

                        <tr>

                            <td>

                                <div class="company-name-wrapper">

                                    <div class="company-logo">
                                        W
                                    </div>

                                    <span class="company-name">
                                        Wipro
                                    </span>

                                </div>

                            </td>


                            <td>
                                <span class="company-industry">
                                    IT &amp; Software
                                </span>
                            </td>


                            <td>
                                <span class="company-employees">
                                    250,000+
                                </span>
                            </td>


                            <td>

                                <span class="company-status company-status-active">
                                    Active
                                </span>

                            </td>


                            <td>

                                <div class="company-actions">

                                    <a href="Edit_Companies.aspx"
                                        class="company-action company-edit"
                                        title="Edit Company">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                        class="company-action company-delete"
                                        title="Delete Company">

                                        <i class="bi bi-trash3"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>


                        <!-- ROW 4 -->

                        <tr>

                            <td>

                                <div class="company-name-wrapper">

                                    <div class="company-logo">
                                        H
                                    </div>

                                    <span class="company-name">
                                        HCL Technologies
                                    </span>

                                </div>

                            </td>


                            <td>
                                <span class="company-industry">
                                    IT Services
                                </span>
                            </td>


                            <td>
                                <span class="company-employees">
                                    220,000+
                                </span>
                            </td>


                            <td>

                                <span class="company-status company-status-active">
                                    Active
                                </span>

                            </td>


                            <td>

                                <div class="company-actions">

                                    <a href="Edit_Companies.aspx"
                                        class="company-action company-edit"
                                        title="Edit Company">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                        class="company-action company-delete"
                                        title="Delete Company">

                                        <i class="bi bi-trash3"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>


                        <!-- ROW 5 -->

                        <tr>

                            <td>

                                <div class="company-name-wrapper">

                                    <div class="company-logo">
                                        R
                                    </div>

                                    <span class="company-name">
                                        Reliance Industries
                                    </span>

                                </div>

                            </td>


                            <td>
                                <span class="company-industry">
                                    Conglomerate
                                </span>
                            </td>


                            <td>
                                <span class="company-employees">
                                    340,000+
                                </span>
                            </td>


                            <td>

                                <span class="company-status company-status-active">
                                    Active
                                </span>

                            </td>


                            <td>

                                <div class="company-actions">

                                    <a href="Edit_Companies.aspx"
                                        class="company-action company-edit"
                                        title="Edit Company">

                                        <i class="bi bi-pencil"></i>

                                    </a>


                                    <a href="#"
                                        class="company-action company-delete"
                                        title="Delete Company">

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
         SEARCH
    ========================================== -->

    <script>

        document.addEventListener("DOMContentLoaded", function () {

            const searchInput =
                document.getElementById("companySearch");

            const table =
                document.getElementById("companiesTable");

            const rows =
                table.querySelectorAll("tbody tr");


            searchInput.addEventListener("input", function () {

                const search =
                    this.value.toLowerCase().trim();


                rows.forEach(function (row) {

                    const text =
                        row.innerText.toLowerCase();

                    row.style.display =
                        text.includes(search) ? "" : "none";

                });

            });

        });

    </script>

</asp:Content>