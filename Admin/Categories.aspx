<%@ Page Title="Categories"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Categories.aspx.cs"
    Inherits="Job_Portal.Admin.Categories" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="../Assets/css/categories.css" rel="stylesheet" />

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="categories-page">

        <!-- ================================
             PAGE HEADER
             ================================= -->

        <div class="categories-header">

            <h1>Manage Categories</h1>

            <asp:Button
                ID="btnAddCategory"
                runat="server"
                Text="＋ Add Category"
                CssClass="add-category-btn"
                OnClick="btnAddCategory_Click" />

        </div>


        <!-- ================================
             CATEGORY CARD
             ================================= -->

        <div class="categories-card">

            <div class="table-wrapper">

                <table class="categories-table">

                    <!-- Table Header -->

                    <thead>

                        <tr>

                            <th>
                                Category Name
                            </th>

                            <th>
                                Number of Jobs
                            </th>

                            <th>
                                Actions
                            </th>

                        </tr>

                    </thead>


                    <!-- Table Body -->

                    <tbody>

                        <!-- IT & Software -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    IT &amp; Software
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    234 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditIT"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category"
                                        OnClick="btnEditIT_Click">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteIT"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category"
                                        OnClick="btnDeleteIT_Click">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Design -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Design
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    89 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditDesign"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteDesign"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Marketing -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Marketing
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    67 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditMarketing"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteMarketing"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Sales -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Sales
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    112 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditSales"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteSales"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Finance -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Finance
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    78 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditFinance"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteFinance"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Human Resources -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Human Resources
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    45 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditHR"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteHR"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Engineering -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Engineering
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    156 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditEngineering"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteEngineering"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>


                        <!-- Healthcare -->

                        <tr>

                            <td>
                                <span class="category-name">
                                    Healthcare
                                </span>
                            </td>

                            <td>
                                <span class="job-count">
                                    92 jobs
                                </span>
                            </td>

                            <td>

                                <div class="action-buttons">

                                    <asp:LinkButton
                                        ID="btnEditHealthcare"
                                        runat="server"
                                        CssClass="edit-btn"
                                        ToolTip="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </asp:LinkButton>


                                    <asp:LinkButton
                                        ID="btnDeleteHealthcare"
                                        runat="server"
                                        CssClass="delete-btn"
                                        ToolTip="Delete Category">

                                        <i class="fa-regular fa-trash-can"></i>

                                    </asp:LinkButton>

                                </div>

                            </td>

                        </tr>

                    </tbody>

                </table>

            </div>

        </div>

    </div>

</asp:Content>