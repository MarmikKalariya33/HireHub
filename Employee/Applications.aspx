<%@ Page Title="Job Applications"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Applications.aspx.cs"
    Inherits="Job_Portal.Employee.Applications" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/applications.css") %>" />

</asp:Content>


<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="applications-page">

        <!-- PAGE TITLE -->
        <h1 class="applications-title">Job Applications</h1>


        <!-- FILTER BUTTONS -->
        <div class="application-filters">

            <a href="#"
                class="filter-button active"
                data-filter="all">
                All
            </a>

            <a href="#"
                class="filter-button"
                data-filter="shortlisted">
                Shortlisted
            </a>

            <a href="#"
                class="filter-button"
                data-filter="interview">
                Interview
            </a>

            <a href="#"
                class="filter-button"
                data-filter="rejected">
                Rejected
            </a>

        </div>


        <!-- APPLICATION TABLE -->
        <div class="applications-table-container">

            <table class="applications-table">

                <thead>
                    <tr>

                        <th class="candidate-column">
                            Candidate
                        </th>

                        <th class="position-column">
                            Applied Position
                        </th>

                        <th class="date-column">
                            Applied Date
                        </th>

                        <th class="status-column">
                            Status
                        </th>

                        <th class="actions-column">
                            Actions
                        </th>

                    </tr>
                </thead>


                <tbody>

                    <!-- Rahul Sharma -->
                    <tr data-status="shortlisted">

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    RS
                                </div>

                                <span class="candidate-name">
                                    Rahul Sharma
                                </span>

                            </div>
                        </td>

                        <td>
                            <span class="position-text">
                                Senior React Developer
                            </span>
                        </td>

                        <td>
                            <span class="date-text">
                                Jan 22, 2024
                            </span>
                        </td>

                        <td>
                            <span class="status-badge status-shortlisted">
                                Shortlisted
                            </span>
                        </td>

                        <td>
                            <a href="Application_Details.aspx"
                                class="view-details">
                                View Details
                            </a>
                        </td>

                    </tr>


                    <!-- Priya Patel -->
                    <tr data-status="interview">

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    PP
                                </div>

                                <span class="candidate-name">
                                    Priya Patel
                                </span>

                            </div>
                        </td>

                        <td>
                            <span class="position-text">
                                UI/UX Designer
                            </span>
                        </td>

                        <td>
                            <span class="date-text">
                                Jan 25, 2024
                            </span>
                        </td>

                        <td>
                            <span class="status-badge status-interview">
                                Interview
                            </span>
                        </td>

                        <td>
                            <a href="Application_Details.aspx"
                                class="view-details">
                                View Details
                            </a>
                        </td>

                    </tr>


                    <!-- Amit Kumar -->
                    <tr data-status="rejected">

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    AK
                                </div>

                                <span class="candidate-name">
                                    Amit Kumar
                                </span>

                            </div>
                        </td>

                        <td>
                            <span class="position-text">
                                Data Analyst
                            </span>
                        </td>

                        <td>
                            <span class="date-text">
                                Feb 1, 2024
                            </span>
                        </td>

                        <td>
                            <span class="status-badge status-rejected">
                                Rejected
                            </span>
                        </td>

                        <td>
                            <a href="Application_Details.aspx"
                                class="view-details">
                                View Details
                            </a>
                        </td>

                    </tr>


                    <!-- Sneha Gupta -->
                    <tr data-status="shortlisted">

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    SG
                                </div>

                                <span class="candidate-name">
                                    Sneha Gupta
                                </span>

                            </div>
                        </td>

                        <td>
                            <span class="position-text">
                                Backend Developer
                            </span>
                        </td>

                        <td>
                            <span class="date-text">
                                Feb 5, 2024
                            </span>
                        </td>

                        <td>
                            <span class="status-badge status-shortlisted">
                                Shortlisted
                            </span>
                        </td>

                        <td>
                            <a href="Application_Details.aspx"
                                class="view-details">
                                View Details
                            </a>
                        </td>

                    </tr>


                    <!-- Vikram Singh -->
                    <tr data-status="pending">

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    VS
                                </div>

                                <span class="candidate-name">
                                    Vikram Singh
                                </span>

                            </div>
                        </td>

                        <td>
                            <span class="position-text">
                                Senior React Developer
                            </span>
                        </td>

                        <td>
                            <span class="date-text">
                                Feb 10, 2024
                            </span>
                        </td>

                        <td>
                            <span class="status-badge status-pending">
                                Pending
                            </span>
                        </td>

                        <td>
                            <a href="Application_Details.aspx"
                                class="view-details">
                                View Details
                            </a>
                        </td>

                    </tr>

                </tbody>

            </table>


            <!-- NO RESULT MESSAGE -->
            <div
                id="noApplications"
                style="display: none; text-align: center; padding: 30px;">

                No applications found.

            </div>

        </div>

    </div>

</asp:Content>

