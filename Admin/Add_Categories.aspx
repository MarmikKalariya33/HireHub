<%@ Page Title="Add Category"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Add_Categories.aspx.cs"
    Inherits="Job_Portal.Admin.Add_Categories" %>


<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Font Awesome -->
    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <!-- Add Category CSS -->
    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Admincss/add_categories.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ==============================
         ADD CATEGORY PAGE
    =============================== -->

    <div class="add-category-page">


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

                    <i class="fa-solid fa-folder-plus"></i>

                </div>


                <div class="category-header-text">

                    <h1>
                        Add New Category
                    </h1>

                    <p>
                        Create a new job category
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
                        placeholder="e.g. Information Technology">
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
                        Text="0"
                        placeholder="Enter number of jobs">
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

                    </asp:DropDownList>

                </div>


                <!-- DESCRIPTION -->

                <div class="form-group full-width">

                    <label>
                        CATEGORY DESCRIPTION
                    </label>

                    <asp:TextBox
                        ID="txtDescription"
                        runat="server"
                        CssClass="form-input textarea-input"
                        TextMode="MultiLine"
                        Rows="6"
                        placeholder="Enter category description...">
                    </asp:TextBox>

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


                <asp:Button
                    ID="btnSaveCategory"
                    runat="server"
                    Text="Save Category"
                    CssClass="save-button" />


            </div>


        </div>

    </div>


</asp:Content>
