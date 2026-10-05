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

    <link rel="stylesheet"
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Admincss/add_categories.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="add-category-page">

        <div class="back-section">

            <a href="Categories.aspx"
               class="back-link">

                <i class="fa-solid fa-arrow-left"></i>

                <span>Back to Categories</span>

            </a>

        </div>


        <div class="category-card">

            <div class="category-header">

                <div class="category-icon">

                    <i class="fa-solid fa-folder-plus"></i>

                </div>

                <div class="category-header-text">

                    <h1>Add New Category</h1>

                    <p>Create a new job category</p>

                </div>

            </div>


            <div class="divider"></div>


            <div class="category-form">


                <!-- CATEGORY NAME -->

                <div class="form-group">

                    <label>
                        CATEGORY NAME
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtCategoryName"
                        runat="server"
                        CssClass="form-input"
                        placeholder="e.g. Information Technology">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvCategoryName"
                        runat="server"
                        ControlToValidate="txtCategoryName"
                        ErrorMessage="Category name is required."
                        ValidationGroup="CategoryValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>


                <!-- NUMBER OF JOBS -->

                <div class="form-group">

                    <label>
                        NUMBER OF JOBS
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtNumberOfJobs"
                        runat="server"
                        CssClass="form-input"
                        Text="0"
                        placeholder="Enter number of jobs">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvNumberOfJobs"
                        runat="server"
                        ControlToValidate="txtNumberOfJobs"
                        ErrorMessage="Number of jobs is required."
                        ValidationGroup="CategoryValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator
                        ID="revNumberOfJobs"
                        runat="server"
                        ControlToValidate="txtNumberOfJobs"
                        ErrorMessage="Enter numbers only."
                        ValidationExpression="^[0-9]+$"
                        ValidationGroup="CategoryValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RegularExpressionValidator>

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
                        <span class="required-star">*</span>
                    </label>

                    <asp:TextBox
                        ID="txtDescription"
                        runat="server"
                        CssClass="form-input textarea-input"
                        TextMode="MultiLine"
                        Rows="6"
                        placeholder="Enter category description...">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator
                        ID="rfvDescription"
                        runat="server"
                        ControlToValidate="txtDescription"
                        ErrorMessage="Category description is required."
                        ValidationGroup="CategoryValidation"
                        Display="Dynamic"
                        CssClass="validation-error">
                    </asp:RequiredFieldValidator>

                </div>

            </div>


            <div class="divider"></div>


            <div class="category-actions">

                <a href="Categories.aspx"
                   class="cancel-button">
                    Cancel
                </a>

                <asp:Button
                    ID="btnSaveCategory"
                    runat="server"
                    Text="Save Category"
                    CssClass="save-button"
                    ValidationGroup="CategoryValidation"
                    PostBackUrl="Categories.aspx" />

            </div>


        </div>

    </div>

</asp:Content>