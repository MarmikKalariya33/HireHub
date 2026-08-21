<%@ Page Title="Manage Categories"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Categories.aspx.cs"
    Inherits="Job_Portal.Admin.Categories" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- Categories CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/css/categories.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ==============================
         CATEGORIES PAGE
    =============================== -->

    <div class="categories-page">


        <!-- ==============================
             HEADER
        =============================== -->

        <div class="categories-header">


            <h1 class="categories-title">
                Manage Categories
            </h1>


            <div class="categories-actions">

                <a href="Add_Categories.aspx"
                   class="add-category-btn">

                    <i class="fa-solid fa-plus"></i>

                    <span>
                        Add Category
                    </span>

                </a>

            </div>


        </div>



        <!-- ==============================
             TABLE CARD
        =============================== -->

        <div class="categories-table-card">


            <div class="categories-table-wrapper">


                <table
                    class="categories-table"
                    id="categoriesTable">


                    <!-- ==============================
                         TABLE HEADER
                    =============================== -->

                    <thead>

                        <tr>

                            <th class="category-col-name">
                                Category Name
                            </th>

                            <th class="category-col-jobs">
                                Number of Jobs
                            </th>

                            <th class="category-col-actions">
                                Actions
                            </th>

                        </tr>

                    </thead>



                    <!-- ==============================
                         TABLE BODY
                    =============================== -->

                    <tbody>


                        <!-- ROW 1 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    IT &amp; Software
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    234 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">


                                    <!-- EDIT BUTTON -->

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <!-- DELETE BUTTON -->

                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>


                                </div>

                            </td>

                        </tr>



                        <!-- ROW 2 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Design
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    89 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 3 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Marketing
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    67 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 4 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Sales
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    112 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 5 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Finance
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    78 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 6 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Human Resources
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    45 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 7 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Engineering
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    156 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>



                        <!-- ROW 8 -->

                        <tr>

                            <td>

                                <span class="category-name">
                                    Healthcare
                                </span>

                            </td>


                            <td>

                                <span class="category-jobs">
                                    92 jobs
                                </span>

                            </td>


                            <td>

                                <div class="category-actions">

                                    <a href="Edit_Categories.aspx"
                                       class="category-action category-edit"
                                       title="Edit Category">

                                        <i class="fa-solid fa-pen"></i>

                                    </a>


                                    <a href="#"
                                       class="category-action category-delete"
                                       title="Delete Category">

                                        <i class="fa-solid fa-trash-can"></i>

                                    </a>

                                </div>

                            </td>

                        </tr>


                    </tbody>


                </table>


            </div>


        </div>


    </div>


</asp:Content>