<%@ Page Title="Edit Category"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Categories.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Categories" %>


<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- Edit Category CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Admincss/final_edit_categories.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ==============================
         EDIT CATEGORY PAGE
    =============================== -->

    <div class="edit-category-page">


        <!-- ==============================
             BACK BUTTON
        =============================== -->

        <div class="back-section">

            <a href="Categories.aspx"
               class="back-link">

                <i class="fa-solid fa-arrow-left"></i>

                <span>
                    Back to Categories
                </span>

            </a>

        </div>


        <!-- ==============================
             CATEGORY CARD
        =============================== -->

        <div class="category-card">


            <!-- ==============================
                 HEADER
            =============================== -->

            <div class="category-header">

                <div class="category-icon">

                    <i class="fa-solid fa-folder"></i>

                </div>


                <div class="category-header-text">

                    <h1>
                        Edit Category
                    </h1>

                    <p>
                        Update category information
                    </p>

                </div>

            </div>


            <div class="divider"></div>


            <!-- ==============================
                 CATEGORY INFORMATION
            =============================== -->

            <div class="category-form">


                <!-- CATEGORY NAME -->

                <div class="form-group">

                    <label>
                        CATEGORY NAME
                    </label>

                    <asp:TextBox
                        ID="txtCategoryName"
                        runat="server"
                        CssClass="form-input"
                        Text="IT & Software">
                    </asp:TextBox>

                </div>


                <!-- NUMBER OF JOBS -->

                <div class="form-group">

                    <label>
                        NUMBER OF JOBS
                    </label>

                    <asp:TextBox
                        ID="txtNumberOfJobs"
                        runat="server"
                        CssClass="form-input"
                        Text="234">
                    </asp:TextBox>

                </div>


                <!-- STATUS -->

                <div class="form-group">

                    <label>
                        STATUS
                    </label>

                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="form-input">

                        <asp:ListItem
                            Text="Active"
                            Value="Active"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Inactive"
                            Value="Inactive">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Pending"
                            Value="Pending">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- CATEGORY DESCRIPTION -->

                <div class="form-group full-width">

                    <label>
                        CATEGORY DESCRIPTION
                    </label>

                    <asp:TextBox
                        ID="txtDescription"
                        runat="server"
                        CssClass="form-input textarea-input"
                        TextMode="MultiLine"
                        Rows="6">IT & Software is a category for jobs related to information technology, software development, web development, database management and other technical roles.</asp:TextBox>

                </div>


            </div>


            <div class="divider"></div>


            <!-- ==============================
                 BUTTONS
            =============================== -->

            <div class="category-actions">


                <a href="Categories.aspx"
                   class="cancel-button">

                    Cancel

                </a>


                <a href="Categories.aspx"
                   class="save-button">

                    Save Changes

                </a>


            </div>


        </div>

    </div>


</asp:Content>