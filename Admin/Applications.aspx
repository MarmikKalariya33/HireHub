<%@ Page Title="Manage Applications"
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

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="applications-page">

        <!-- ==============================
             PAGE HEADER
        =============================== -->

        <div class="applications-header">

            <h1>
                Manage Applications
            </h1>


            <div class="applications-header-right">

                <!-- SEARCH -->

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <asp:TextBox
                        ID="txtSearch"
                        runat="server"
                        CssClass="search-input"
                        placeholder="Search applicants...">
                    </asp:TextBox>

                </div>


                <!-- STATUS FILTER -->

                <asp:DropDownList
                    ID="ddlStatus"
                    runat="server"
                    CssClass="status-filter">

                    <asp:ListItem
                        Text="All Statuses"
                        Value="">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Pending"
                        Value="Pending">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Reviewed"
                        Value="Reviewed">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Hired"
                        Value="Hired">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Rejected"
                        Value="Rejected">
                    </asp:ListItem>

                </asp:DropDownList>

            </div>

        </div>


        <!-- ==============================
             APPLICATIONS TABLE
        =============================== -->

        <div class="applications-table-container">

            <table class="applications-table">

                <thead>

                    <tr>

                        <th>
                            Applicant
                        </th>

                        <th>
                            Job Title
                        </th>

                        <th>
                            Status
                        </th>

                        <th>
                            Applied Date
                        </th>

                        <th>
                            Actions
                        </th>

                    </tr>

                </thead>


                <tbody>


                    <!-- RAHUL SHARMA -->

                    <tr>

                        <td>

                            <div class="applicant-details">

                                <div class="applicant-avatar">
                                    RS
                                </div>

                                <span class="applicant-name">
                                    Rahul Sharma
                                </span>

                            </div>

                        </td>


                        <td class="job-title">
                            Senior React Developer
                        </td>


                        <td>

                            <span class="application-status pending">
                                Pending
                            </span>

                        </td>


                        <td class="applied-date">
                            Jan 22 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Applications_Details.aspx"
                                   class="edit-icon"
                                   title="Edit">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete1"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- PRIYA PATEL -->

                    <tr>

                        <td>

                            <div class="applicant-details">

                                <div class="applicant-avatar">
                                    PP
                                </div>

                                <span class="applicant-name">
                                    Priya Patel
                                </span>

                            </div>

                        </td>


                        <td class="job-title">
                            UI/UX Designer
                        </td>


                        <td>

                            <span class="application-status reviewed">
                                Reviewed
                            </span>

                        </td>


                        <td class="applied-date">
                            Jan 25 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Applications_Details.aspx"
                                   class="edit-icon"
                                   title="Edit">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete2"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- AMIT KUMAR -->

                    <tr>

                        <td>

                            <div class="applicant-details">

                                <div class="applicant-avatar">
                                    AK
                                </div>

                                <span class="applicant-name">
                                    Amit Kumar
                                </span>

                            </div>

                        </td>


                        <td class="job-title">
                            Data Analyst
                        </td>


                        <td>

                            <span class="application-status hired">
                                Hired
                            </span>

                        </td>


                        <td class="applied-date">
                            Feb 01 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Applications_Details.aspx"
                                   class="edit-icon"
                                   title="Edit">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete3"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- SNEHA GUPTA -->

                    <tr>

                        <td>

                            <div class="applicant-details">

                                <div class="applicant-avatar">
                                    SG
                                </div>

                                <span class="applicant-name">
                                    Sneha Gupta
                                </span>

                            </div>

                        </td>


                        <td class="job-title">
                            Backend Developer
                        </td>


                        <td>

                            <span class="application-status rejected">
                                Rejected
                            </span>

                        </td>


                        <td class="applied-date">
                            Feb 05 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Applications_Details.aspx"
                                   class="edit-icon"
                                   title="Edit">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete4"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- VIKRAM SINGH -->

                    <tr>

                        <td>

                            <div class="applicant-details">

                                <div class="applicant-avatar">
                                    VS
                                </div>

                                <span class="applicant-name">
                                    Vikram Singh
                                </span>

                            </div>

                        </td>


                        <td class="job-title">
                            Marketing Manager
                        </td>


                        <td>

                            <span class="application-status pending">
                                Pending
                            </span>

                        </td>


                        <td class="applied-date">
                            Feb 10 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Applications_Details.aspx"
                                   class="edit-icon"
                                   title="Edit">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete5"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>

                </tbody>

            </table>

        </div>

    </div>

</asp:Content>