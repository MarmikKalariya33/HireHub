<%@ Page Title="Edit Application"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_Edit_Applications.aspx.cs"
    Inherits="Job_Portal.Admin.Final_Edit_Applications" %>


<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_edit_applications.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


<div class="edit-application-page">


    <!-- =====================================
         BACK BUTTON
    ====================================== -->

    <div class="back-wrapper">

        <a href="Applications.aspx"
           class="back-link">

            <i class="fa-solid fa-arrow-left"></i>

            <span>Back to Applications</span>

        </a>

    </div>



    <!-- =====================================
         MAIN CARD
    ====================================== -->

    <div class="application-card">


        <!-- =====================================
             HEADER
        ====================================== -->

        <div class="application-header">


            <div class="applicant-avatar-large">
                RS
            </div>


            <div class="application-title-area">

                <h1>
                    Edit Application
                </h1>

                <p>
                    Update Application Information
                </p>

            </div>


        </div>



        <div class="divider"></div>



        <!-- =====================================
             APPLICANT INFORMATION
        ====================================== -->

        <div class="section-title">

            <h2>
                Applicant Information
            </h2>

        </div>



        <div class="application-information">


            <!-- FULL NAME -->

            <div class="form-group">

                <label>
                    FULL NAME
                </label>

                <asp:TextBox
                    ID="txtFullName"
                    runat="server"
                    CssClass="edit-input"
                    Text="Rahul Sharma">
                </asp:TextBox>

            </div>



            <!-- EMAIL -->

            <div class="form-group">

                <label>
                    EMAIL ADDRESS
                </label>

                <asp:TextBox
                    ID="txtEmail"
                    runat="server"
                    CssClass="edit-input"
                    Text="rahul.sharma@email.com">
                </asp:TextBox>

            </div>



            <!-- PHONE -->

            <div class="form-group">

                <label>
                    PHONE NUMBER
                </label>

                <asp:TextBox
                    ID="txtPhone"
                    runat="server"
                    CssClass="edit-input"
                    Text="+91 98765 43210">
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
                    Text="Mumbai, Maharashtra">
                </asp:TextBox>

            </div>


        </div>



        <div class="divider"></div>



        <!-- =====================================
             APPLICATION INFORMATION
        ====================================== -->

        <div class="section-title">

            <h2>
                Application Information
            </h2>

        </div>



        <div class="application-information">


            <!-- JOB TITLE -->

            <div class="form-group">

                <label>
                    JOB TITLE
                </label>

                <asp:TextBox
                    ID="txtJobTitle"
                    runat="server"
                    CssClass="edit-input"
                    Text="Senior React Developer">
                </asp:TextBox>

            </div>



            <!-- COMPANY -->

            <div class="form-group">

                <label>
                    COMPANY
                </label>

                <asp:TextBox
                    ID="txtCompany"
                    runat="server"
                    CssClass="edit-input"
                    Text="Tata Consultancy Services (TCS)">
                </asp:TextBox>

            </div>



            <!-- APPLICATION STATUS -->

            <div class="form-group">

                <label>
                    APPLICATION STATUS
                </label>

                <asp:DropDownList
                    ID="ddlStatus"
                    runat="server"
                    CssClass="edit-input">

                    <asp:ListItem
                        Text="Pending"
                        Value="Pending"
                        Selected="True">
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



            <!-- APPLIED DATE -->

            <div class="form-group">

                <label>
                    APPLIED DATE
                </label>

                <asp:TextBox
                    ID="txtAppliedDate"
                    runat="server"
                    CssClass="edit-input"
                    Text="January 22, 2024">
                </asp:TextBox>

            </div>



            <!-- EXPERIENCE -->

            <div class="form-group">

                <label>
                    EXPERIENCE
                </label>

                <asp:TextBox
                    ID="txtExperience"
                    runat="server"
                    CssClass="edit-input"
                    Text="4 Years">
                </asp:TextBox>

            </div>



            <!-- EXPECTED SALARY -->

            <div class="form-group">

                <label>
                    EXPECTED SALARY
                </label>

                <asp:TextBox
                    ID="txtExpectedSalary"
                    runat="server"
                    CssClass="edit-input"
                    Text="₹12,00,000">
                </asp:TextBox>

            </div>


        </div>



        <div class="divider"></div>



        <!-- =====================================
             RESUME
        ====================================== -->

        <div class="full-section">

            <h2>
                Resume
            </h2>


            <div class="resume-box">

                <div class="resume-icon">

                    <i class="fa-solid fa-file-pdf"></i>

                </div>


                <div class="resume-information">

                    <strong>
                        Rahul_Sharma_Resume.pdf
                    </strong>

                    <span>
                        PDF Document
                    </span>

                </div>


                <a href="#"
                   class="view-resume">

                    View Resume

                </a>

            </div>

        </div>



        <div class="divider"></div>



        <!-- =====================================
             COVER LETTER
        ====================================== -->

        <div class="full-section">

            <h2>
                Cover Letter
            </h2>


            <asp:TextBox
                ID="txtCoverLetter"
                runat="server"
                CssClass="edit-textarea"
                TextMode="MultiLine"
                Rows="7">Dear Hiring Manager,

I am interested in the Senior React Developer position at Tata Consultancy Services. I have strong experience in React, JavaScript, TypeScript and modern web application development.

I believe my technical skills and experience make me a strong candidate for this position.

Thank you for considering my application.</asp:TextBox>

        </div>



        <div class="divider"></div>



        <!-- =====================================
             ADDITIONAL INFORMATION
        ====================================== -->

        <div class="full-section">

            <h2>
                Additional Information
            </h2>


            <asp:TextBox
                ID="txtAdditionalInformation"
                runat="server"
                CssClass="edit-textarea"
                TextMode="MultiLine"
                Rows="5">Available for immediate joining. Open to relocation and hybrid work opportunities.</asp:TextBox>

        </div>



        <div class="divider"></div>



        <!-- =====================================
             BUTTONS
        ====================================== -->

        <div class="application-actions">


            <a href="Applications.aspx"
               class="save-button">

                <i class="fa-solid fa-check"></i>

                Save Changes

            </a>


            <a href="Applications.aspx"
               class="cancel-button">

                Cancel

            </a>


        </div>


    </div>


</div>


</asp:Content>
