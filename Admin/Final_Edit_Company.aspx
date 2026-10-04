<%@ Page Title="Edit Company"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Company.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Company" %>


<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_company.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


<div class="edit-company-page">


    <!-- =========================================
         BACK
    ========================================== -->

    <div class="back-wrapper">

        <a href="Companies.aspx"
           class="back-link">

            <i class="fa-solid fa-arrow-left"></i>

            <span>Back to Companies</span>

        </a>

    </div>



    <!-- =========================================
         MAIN CARD
    ========================================== -->

    <div class="company-card">


        <!-- =========================================
             HEADER
        ========================================== -->

        <div class="company-header">


            <div class="company-avatar-large">
                T
            </div>


            <div class="company-title-area">

                <h1>
                    Edit Company
                </h1>

                <p>
                    Update Company Information
                </p>

            </div>


        </div>



        <div class="divider"></div>



        <!-- =========================================
             COMPANY INFORMATION
        ========================================== -->

        <div class="section-title">

            <h2>
                Company Information
            </h2>

        </div>



        <div class="company-information">


            <!-- COMPANY NAME -->

            <div class="form-group">

                <label>
                    COMPANY NAME
                </label>

                <asp:TextBox
                    ID="txtCompanyName"
                    runat="server"
                    CssClass="edit-input"
                    Text="Tata Consultancy Services">
                </asp:TextBox>

            </div>



            <!-- CONTACT EMAIL -->

            <div class="form-group">

                <label>
                    CONTACT EMAIL
                </label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="edit-input"
                    Text="hr@tcs.com">
                </asp:TextBox>

            </div>



            <!-- PHONE -->

            <div class="form-group">

                <label>
                    CONTACT PHONE
                </label>

                <asp:TextBox
                    ID="txtPhone"
                    runat="server"
                    CssClass="edit-input"
                    Text="+91 22 6778 9999">
                </asp:TextBox>

            </div>



            <!-- LOCATION -->

            <div class="form-group">

                <label>
                    LOCATION
                </label>

                <asp:TextBox
                    ID="txtLocation"
                    runat="server"
                    CssClass="edit-input"
                    Text="Mumbai, India">
                </asp:TextBox>

            </div>



            <!-- INDUSTRY -->

            <div class="form-group">

                <label>
                    INDUSTRY
                </label>

                <asp:TextBox
                    ID="txtIndustry"
                    runat="server"
                    CssClass="edit-input"
                    Text="IT &amp; Software">
                </asp:TextBox>

            </div>



            <!-- EMPLOYEES -->

            <div class="form-group">

                <label>
                    NUMBER OF EMPLOYEES
                </label>

                <asp:TextBox
                    ID="txtEmployees"
                    runat="server"
                    CssClass="edit-input"
                    Text="500,000+">
                </asp:TextBox>

            </div>



            <!-- COMPANY SIZE -->

            <div class="form-group">

                <label>
                    COMPANY SIZE
                </label>

                <asp:DropDownList
                    ID="ddlCompanySize"
                    runat="server"
                    CssClass="edit-input">

                    <asp:ListItem
                        Text="1 - 50 Employees"
                        Value="1-50">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="51 - 200 Employees"
                        Value="51-200">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="201 - 500 Employees"
                        Value="201-500">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="501 - 1,000 Employees"
                        Value="501-1000">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="1,000 - 10,000 Employees"
                        Value="1000-10000">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="500,000+ Employees"
                        Value="500000+"
                        Selected="True">
                    </asp:ListItem>

                </asp:DropDownList>

            </div>



            <!-- WEBSITE -->

            <div class="form-group">

                <label>
                    WEBSITE
                </label>

                <asp:TextBox
                    ID="txtWebsite"
                    runat="server"
                    CssClass="edit-input"
                    Text="www.tcs.com">
                </asp:TextBox>

            </div>



            <!-- REGISTRATION DATE -->

            <div class="form-group">

                <label>
                    REGISTRATION DATE
                </label>

                <asp:TextBox
                    ID="txtRegistrationDate"
                    runat="server"
                    CssClass="edit-input"
                    Text="January 10, 2024">
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
                    CssClass="edit-input">

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


        </div>



        <div class="divider"></div>



        <!-- =========================================
             ABOUT COMPANY
        ========================================== -->

        <div class="full-section">


            <h2>
                About Company
            </h2>


            <asp:TextBox
                ID="txtAboutCompany"
                runat="server"
                CssClass="edit-textarea"
                TextMode="MultiLine"
                Rows="8">Tata Consultancy Services (TCS) is a leading global IT services, consulting and business solutions organization. It is part of the Tata Group and has a strong presence across the world.

TCS provides technology solutions and consulting services to organizations across multiple industries. The company is known for its large-scale enterprise solutions, digital transformation services and innovation.</asp:TextBox>


        </div>



        <div class="divider"></div>



        <!-- =========================================
             COMPANY DESCRIPTION
        ========================================== -->

        <div class="full-section">


            <h2>
                Company Description
            </h2>


            <asp:TextBox
                ID="txtDescription"
                runat="server"
                CssClass="edit-textarea"
                TextMode="MultiLine"
                Rows="6">We are one of the leading technology companies providing software development, consulting, cloud computing and digital transformation services to businesses around the world.</asp:TextBox>


        </div>



        <div class="divider"></div>



        <!-- =========================================
             BUTTONS
        ========================================== -->

        <div class="company-actions">


            <a href="Companies.aspx"
               class="save-button">

                <i class="fa-solid fa-check"></i>

                Save Changes

            </a>


            <a href="Companies.aspx"
               class="cancel-button">

                Cancel

            </a>


        </div>


    </div>


</div>


</asp:Content>
