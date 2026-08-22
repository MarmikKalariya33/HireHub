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

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="companies-page">

        <!-- ==============================
             PAGE HEADER
        =============================== -->

        <div class="companies-header">

            <h1>
                Manage Companies
            </h1>

            <div class="companies-header-right">

                <div class="search-box">

                    <i class="fa-solid fa-magnifying-glass"></i>

                    <asp:TextBox
                        ID="txtSearch"
                        runat="server"
                        CssClass="search-input"
                        placeholder="Search companies...">
                    </asp:TextBox>

                </div>

                <a href="Add_Company.aspx"
                   class="add-company-btn">

                    <i class="fa-solid fa-plus"></i>

                    <span>
                        Add New Company
                    </span>

                </a>

            </div>

        </div>


        <!-- ==============================
             COMPANIES TABLE
        =============================== -->

        <div class="companies-table-container">

            <table class="companies-table">

                <thead>

                    <tr>

                        <th>
                            Company
                        </th>

                        <th>
                            Industry
                        </th>

                        <th>
                            Employees
                        </th>

                        <th>
                            Status
                        </th>

                        <th>
                            Actions
                        </th>

                    </tr>

                </thead>


                <tbody>

                    <!-- ==============================
                         TCS
                    =============================== -->

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


                        <td class="industry">
                            IT &amp; Software
                        </td>


                        <td class="employees">
                            500,000+
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Company.aspx"
                                   class="edit-icon"
                                   title="Edit Company">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete1"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete Company">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- ==============================
                         INFOSYS
                    =============================== -->

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


                        <td class="industry">
                            IT &amp; Software
                        </td>


                        <td class="employees">
                            300,000+
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Company.aspx"
                                   class="edit-icon"
                                   title="Edit Company">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete2"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete Company">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- ==============================
                         WIPRO
                    =============================== -->

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


                        <td class="industry">
                            IT &amp; Software
                        </td>


                        <td class="employees">
                            250,000+
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Company.aspx"
                                   class="edit-icon"
                                   title="Edit Company">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete3"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete Company">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- ==============================
                         HCL TECHNOLOGIES
                    =============================== -->

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


                        <td class="industry">
                            IT Services
                        </td>


                        <td class="employees">
                            220,000+
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Company.aspx"
                                   class="edit-icon"
                                   title="Edit Company">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete4"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete Company">

                                    <i class="fa-solid fa-trash-can"></i>

                                </asp:LinkButton>

                            </div>

                        </td>

                    </tr>


                    <!-- ==============================
                         RELIANCE INDUSTRIES
                    =============================== -->

                    <tr>

                        <td>

                            <div class="company-details">

                                <div class="company-avatar">
                                    R
                                </div>

                                <span class="company-name">
                                    Reliance Industries
                                </span>

                            </div>

                        </td>


                        <td class="industry">
                            Conglomerate
                        </td>


                        <td class="employees">
                            340,000+
                        </td>


                        <td>

                            <span class="status active">
                                Active
                            </span>

                        </td>


                        <td>

                            <div class="actions">

                                <a href="Edit_Company.aspx"
                                   class="edit-icon"
                                   title="Edit Company">

                                    <i class="fa-solid fa-pen"></i>

                                </a>


                                <asp:LinkButton
                                    ID="btnDelete5"
                                    runat="server"
                                    CssClass="delete-icon"
                                    ToolTip="Delete Company">

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