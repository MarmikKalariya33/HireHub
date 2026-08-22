<%@ Page Title="Manage Employers"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Employers.aspx.cs"
    Inherits="Job_Portal.Admin.Employers" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/employers.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="employers-page">


        <!-- ==============================
             PAGE HEADER
        =============================== -->

        <div class="employers-header">

            <h1>
                Manage Employers
            </h1>


            <div class="search-box">

                <i class="fa-solid fa-magnifying-glass"></i>

                <asp:TextBox
                    ID="txtSearch"
                    runat="server"
                    CssClass="search-input"
                    placeholder="Search employers...">
                </asp:TextBox>

            </div>

        </div>



        <!-- ==============================
             EMPLOYERS TABLE
        =============================== -->

        <div class="employers-table-container">

            <table class="employers-table">

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


                <tbody>


                    <!-- TCS -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    T
                                </div>

                                <span class="company-name">
                                    TCS
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            hr@tcs.com
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>
                            45 jobs
                        </td>


                        <td class="joined-date">
                            Jan 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Employers.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete1"
                                    runat="server"
                                    CssClass="delete-icon">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>



                    <!-- INFOSYS -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    I
                                </div>

                                <span class="company-name">
                                    Infosys
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            careers@infosys.com
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>
                            38 jobs
                        </td>


                        <td class="joined-date">
                            Feb 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Employers.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete2"
                                    runat="server"
                                    CssClass="delete-icon">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>



                    <!-- WIPRO -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    W
                                </div>

                                <span class="company-name">
                                    Wipro
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            recruit@wipro.com
                        </td>


                        <td>

                            <span class="status pending">
                                Pending
                            </span>

                        </td>


                        <td>
                            22 jobs
                        </td>


                        <td class="joined-date">
                            Mar 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Employers.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete3"
                                    runat="server"
                                    CssClass="delete-icon">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>



                    <!-- HCL -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    H
                                </div>

                                <span class="company-name">
                                    HCL Technologies
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            jobs@hcl.com
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>
                            31 jobs
                        </td>


                        <td class="joined-date">
                            Apr 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Employers.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete4"
                                    runat="server"
                                    CssClass="delete-icon">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>



                    <!-- TECH MAHINDRA -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    M
                                </div>

                                <span class="company-name">
                                    Tech Mahindra
                                </span>

                            </div>

                        </td>


                        <td class="email">
                            hire@techmahindra.com
                        </td>


                        <td>

                            <span class="status blocked">
                                Blocked
                            </span>

                        </td>


                        <td>
                            15 jobs
                        </td>


                        <td class="joined-date">
                            May 2024
                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Employers.aspx"
                                   class="edit-icon">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete5"
                                    runat="server"
                                    CssClass="delete-icon">

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