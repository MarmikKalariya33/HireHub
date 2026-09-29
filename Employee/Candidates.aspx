<%@ Page Title="Candidates"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Candidates.aspx.cs"
    Inherits="Job_Portal.Employee.Candidates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/candidates.css") %>" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="candidates-page">

        <!-- PAGE HEADER -->
        <div class="candidates-header">

            <div>
                <h1 class="candidates-title">Candidates</h1>

                <p class="candidates-subtitle">
                    Manage and review candidates who have applied for your jobs.
                </p>
            </div>

            <div class="candidate-count">
                <span class="count-number">24</span>
                <span class="count-text">Total Candidates</span>
            </div>

        </div>


        <!-- SEARCH AND FILTER -->
        <div class="candidate-tools">

            <div class="candidate-search">

                <i class="bi bi-search"></i>

                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-input"
                    placeholder="Search candidates...">
                </asp:TextBox>

            </div>


            <asp:DropDownList
                ID="ddlPosition"
                runat="server"
                CssClass="position-filter">

                <asp:ListItem Text="All Positions" Value="All" />
                <asp:ListItem Text="Senior React Developer" Value="React" />
                <asp:ListItem Text="UI/UX Designer" Value="UIUX" />
                <asp:ListItem Text="Data Analyst" Value="Data" />
                <asp:ListItem Text="Backend Developer" Value="Backend" />

            </asp:DropDownList>

        </div>


        <!-- CANDIDATES TABLE -->
        <div class="candidates-table-container">

            <table class="candidates-table">

                <thead>

                    <tr>

                        <th class="candidate-column">
                            Candidate
                        </th>

                        <th class="email-column">
                            Email
                        </th>

                        <th class="position-column">
                            Applied Position
                        </th>

                        <th class="experience-column">
                            Experience
                        </th>

                        <th class="status-column">
                            Status
                        </th>

                        <th class="action-column">
                            Actions
                        </th>

                    </tr>

                </thead>


                <tbody>

                    <!-- Rahul Sharma -->
                    <tr>

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    RS
                                </div>

                                <div class="candidate-details">

                                    <span class="candidate-name">
                                        Rahul Sharma
                                    </span>

                                    <span class="candidate-location">
                                        Ahmedabad, Gujarat
                                    </span>

                                </div>

                            </div>
                        </td>

                        <td>
                            <span class="candidate-email">
                                rahul.sharma@gmail.com
                            </span>
                        </td>

                        <td>
                            <span class="position-text">
                                Senior React Developer
                            </span>
                        </td>

                        <td>
                            4 Years
                        </td>

                        <td>
                            <span class="candidate-status status-active">
                                Available
                            </span>
                        </td>

                        <td>
                            <a href="Applications_Details.aspx"
                               class="candidate-action">
                                View
                            </a>
                        </td>

                    </tr>


                    <!-- Priya Patel -->
                    <tr>

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    PP
                                </div>

                                <div class="candidate-details">

                                    <span class="candidate-name">
                                        Priya Patel
                                    </span>

                                    <span class="candidate-location">
                                        Surat, Gujarat
                                    </span>

                                </div>

                            </div>
                        </td>

                        <td>
                            <span class="candidate-email">
                                priya.patel@gmail.com
                            </span>
                        </td>

                        <td>
                            <span class="position-text">
                                UI/UX Designer
                            </span>
                        </td>

                        <td>
                            3 Years
                        </td>

                        <td>
                            <span class="candidate-status status-active">
                                Available
                            </span>
                        </td>

                        <td>
                            <a href="Applications_Details.aspx"
                               class="candidate-action">
                                View
                            </a>
                        </td>

                    </tr>


                    <!-- Amit Kumar -->
                    <tr>

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    AK
                                </div>

                                <div class="candidate-details">

                                    <span class="candidate-name">
                                        Amit Kumar
                                    </span>

                                    <span class="candidate-location">
                                        Jaipur, Rajasthan
                                    </span>

                                </div>

                            </div>
                        </td>

                        <td>
                            <span class="candidate-email">
                                amit.kumar@gmail.com
                            </span>
                        </td>

                        <td>
                            <span class="position-text">
                                Data Analyst
                            </span>
                        </td>

                        <td>
                            2 Years
                        </td>

                        <td>
                            <span class="candidate-status status-interview">
                                Interview
                            </span>
                        </td>

                        <td>
                            <a href="Applications_Details.aspx"
                               class="candidate-action">
                                View
                            </a>
                        </td>

                    </tr>


                    <!-- Sneha Gupta -->
                    <tr>

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    SG
                                </div>

                                <div class="candidate-details">

                                    <span class="candidate-name">
                                        Sneha Gupta
                                    </span>

                                    <span class="candidate-location">
                                        Mumbai, Maharashtra
                                    </span>

                                </div>

                            </div>
                        </td>

                        <td>
                            <span class="candidate-email">
                                sneha.gupta@gmail.com
                            </span>
                        </td>

                        <td>
                            <span class="position-text">
                                Backend Developer
                            </span>
                        </td>

                        <td>
                            5 Years
                        </td>

                        <td>
                            <span class="candidate-status status-active">
                                Available
                            </span>
                        </td>

                        <td>
                            <a href="Applications_Details.aspx"
                               class="candidate-action">
                                View
                            </a>
                        </td>

                    </tr>


                    <!-- Vikram Singh -->
                    <tr>

                        <td>
                            <div class="candidate-info">

                                <div class="candidate-avatar">
                                    VS
                                </div>

                                <div class="candidate-details">

                                    <span class="candidate-name">
                                        Vikram Singh
                                    </span>

                                    <span class="candidate-location">
                                        Delhi, India
                                    </span>

                                </div>

                            </div>
                        </td>

                        <td>
                            <span class="candidate-email">
                                vikram.singh@gmail.com
                            </span>
                        </td>

                        <td>
                            <span class="position-text">
                                Senior React Developer
                            </span>
                        </td>

                        <td>
                            6 Years
                        </td>

                        <td>
                            <span class="candidate-status status-pending">
                                Pending
                            </span>
                        </td>

                        <td>
                            <a href="Candidate_Details.aspx"
                               class="candidate-action">
                                View
                            </a>
                        </td>

                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</asp:Content>