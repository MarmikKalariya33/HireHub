<%@ Page Title="Applications"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Applications.aspx.cs"
    Inherits="Job_Portal.Admin.Applications" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Assets/css/applications.css" rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="applications-page">

        <!-- Page Header -->
        <div class="page-header">

            <h1>Manage Applications</h1>

            <div class="header-actions">

                <!-- Search -->
                <div class="search-box">
                    <span class="search-icon">⌕</span>

                    <asp:TextBox
                        ID="txtSearch"
                        runat="server"
                        CssClass="search-input"
                        placeholder="Search applicants...">
                    </asp:TextBox>
                </div>

                <!-- Status Dropdown -->
                <asp:DropDownList
                    ID="ddlStatus"
                    runat="server"
                    CssClass="status-dropdown">

                    <asp:ListItem Text="All Statuses" Value="All"></asp:ListItem>
                    <asp:ListItem Text="Pending" Value="Pending"></asp:ListItem>
                    <asp:ListItem Text="Reviewed" Value="Reviewed"></asp:ListItem>
                    <asp:ListItem Text="Hired" Value="Hired"></asp:ListItem>
                    <asp:ListItem Text="Rejected" Value="Rejected"></asp:ListItem>

                </asp:DropDownList>

            </div>

        </div>


        <!-- Applications Table -->
        <div class="applications-card">

            <div class="table-wrapper">

                <table class="applications-table">

                    <thead>

                        <tr>
                            <th>Applicant</th>
                            <th>Job Title</th>
                            <th>Status</th>
                            <th>Applied Date</th>
                            <th>Actions</th>
                        </tr>

                    </thead>

                    <tbody>

                        <!-- Row 1 -->
                        <tr>

                            <td>
                                <div class="applicant-info">

                                    <div class="avatar">
                                        RS
                                    </div>

                                    <span>Rahul Sharma</span>

                                </div>
                            </td>

                            <td>
                                Senior React Developer
                            </td>

                            <td>
                                <span class="status pending">
                                    Pending
                                </span>
                            </td>

                            <td class="date">
                                Jan 22 2024
                            </td>

                            <td>
                                <div class="action-buttons">

                                   <a href="Applications_Details.aspx"
                                    class="edit-btn"
                                    title="View Application">
                                      ✎
                                    </a>

                                    <button type="button"
                                        class="delete-btn"
                                        title="Delete">
                                        ♜
                                    </button>

                                </div>
                            </td>

                        </tr>


                        <!-- Row 2 -->
                        <tr>

                            <td>
                                <div class="applicant-info">

                                    <div class="avatar">
                                        PP
                                    </div>

                                    <span>Priya Patel</span>

                                </div>
                            </td>

                            <td>
                                UI/UX Designer
                            </td>

                            <td>
                                <span class="status reviewed">
                                    Reviewed
                                </span>
                            </td>

                            <td class="date">
                                Jan 25 2024
                            </td>

                            <td>
                                <div class="action-buttons">

                                    <button type="button"
                                        class="edit-btn"
                                        title="Edit">
                                        ✎
                                    </button>

                                    <button type="button"
                                        class="delete-btn"
                                        title="Delete">
                                        ♜
                                    </button>

                                </div>
                            </td>

                        </tr>


                        <!-- Row 3 -->
                        <tr>

                            <td>
                                <div class="applicant-info">

                                    <div class="avatar">
                                        AK
                                    </div>

                                    <span>Amit Kumar</span>

                                </div>
                            </td>

                            <td>
                                Data Analyst
                            </td>

                            <td>
                                <span class="status hired">
                                    Hired
                                </span>
                            </td>

                            <td class="date">
                                Feb 01 2024
                            </td>

                            <td>
                                <div class="action-buttons">

                                    <button type="button"
                                        class="edit-btn"
                                        title="Edit">
                                        ✎
                                    </button>

                                    <button type="button"
                                        class="delete-btn"
                                        title="Delete">
                                        ♜
                                    </button>

                                </div>
                            </td>

                        </tr>


                        <!-- Row 4 -->
                        <tr>

                            <td>
                                <div class="applicant-info">

                                    <div class="avatar">
                                        SG
                                    </div>

                                    <span>Sneha Gupta</span>

                                </div>
                            </td>

                            <td>
                                Backend Developer
                            </td>

                            <td>
                                <span class="status rejected">
                                    Rejected
                                </span>
                            </td>

                            <td class="date">
                                Feb 05 2024
                            </td>

                            <td>
                                <div class="action-buttons">

                                    <button type="button"
                                        class="edit-btn"
                                        title="Edit">
                                        ✎
                                    </button>

                                    <button type="button"
                                        class="delete-btn"
                                        title="Delete">
                                        ♜
                                    </button>

                                </div>
                            </td>

                        </tr>


                        <!-- Row 5 -->
                        <tr>

                            <td>
                                <div class="applicant-info">

                                    <div class="avatar">
                                        VS
                                    </div>

                                    <span>Vikram Singh</span>

                                </div>
                            </td>

                            <td>
                                Marketing Manager
                            </td>

                            <td>
                                <span class="status pending">
                                    Pending
                                </span>
                            </td>

                            <td class="date">
                                Feb 10 2024
                            </td>

                            <td>
                                <div class="action-buttons">

                                    <button type="button"
                                        class="edit-btn"
                                        title="Edit">
                                        ✎
                                    </button>

                                    <button type="button"
                                        class="delete-btn"
                                        title="Delete">
                                        ♜
                                    </button>

                                </div>
                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</asp:Content>