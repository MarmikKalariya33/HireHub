<%@ Page Title="Manage Users"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Users.aspx.cs"
    Inherits="Job_Portal.Admin.Users" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/users.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="users-page">


        <!-- ================= PAGE HEADER ================= -->

        <div class="users-header">


            <!-- PAGE TITLE -->

            <h1>
                Manage Users
            </h1>


            <!-- SEARCH BOX -->

            <div class="search-box">

                <i class="fa-solid fa-magnifying-glass"></i>


                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-input"
                    placeholder="Search users...">
                </asp:TextBox>

            </div>

        </div>


        <!-- ================= USERS TABLE ================= -->

        <div class="users-table-container">


            <table class="users-table">


                <!-- ================= TABLE HEADER ================= -->

                <thead>

                    <tr>

                        <th>
                            User
                        </th>

                        <th>
                            Email
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
                            Actions
                        </th>

                    </tr>

                </thead>


                <!-- ================= TABLE BODY ================= -->

                <tbody>


                    <!-- USER 1 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    RS
                                </div>

                                <span class="user-name">
                                    Rahul Sharma
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            rahul@email.com
                        </td>


                        <td>
                            User
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td class="joined-date">
                            Jan 15 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete1"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 2 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    PP
                                </div>

                                <span class="user-name">
                                    Priya Patel
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            priya@email.com
                        </td>


                        <td>
                            User
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td class="joined-date">
                            Feb 20 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete2"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 3 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    AK
                                </div>

                                <span class="user-name">
                                    Amit Kumar
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            amit@email.com
                        </td>


                        <td>
                            Employer
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td class="joined-date">
                            Mar 10 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete3"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 4 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    SG
                                </div>

                                <span class="user-name">
                                    Sneha Gupta
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            sneha@email.com
                        </td>


                        <td>
                            User
                        </td>


                        <td>

                            <span class="status inactive">
                                Inactive
                            </span>

                        </td>


                        <td class="joined-date">
                            Apr 5 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete4"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 5 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    VS
                                </div>

                                <span class="user-name">
                                    Vikram Singh
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            vikram@email.com
                        </td>


                        <td>
                            User
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td class="joined-date">
                            May 18 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete5"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- USER 6 -->

                    <tr>

                        <td>

                            <div class="user-details">

                                <div class="user-avatar">
                                    NV
                                </div>

                                <span class="user-name">
                                    Neha Verma
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            neha@email.com
                        </td>


                        <td>
                            Employer
                        </td>


                        <td>

                            <span class="status pending">
                                Pending
                            </span>

                        </td>


                        <td class="joined-date">
                            Jun 2 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Users.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete6"
                                    runat="server"
                                    CssClass="delete-icon"
                                    OnClientClick="return confirm('Are you sure you want to delete this user?');">

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