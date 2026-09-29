<%@ Page Title="Application Details"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Application_Details.aspx.cs"
    Inherits="Job_Portal.Employee.Application_Details" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/application_dedtails.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="application-details-page">

        <!-- BACK TO APPLICATIONS -->
        <a href="Applications.aspx" class="back-link">
            Back to Applications
        </a>


        <!-- DETAILS CARD -->
        <div class="application-card">

            <!-- CANDIDATE HEADER -->
            <div class="candidate-header">

                <div class="candidate-avatar">
                    RS
                </div>

                <div class="candidate-heading">

                    <h1>Rahul Sharma</h1>

                    <div class="candidate-position">

                        <span class="applied-label">
                            Applied Position:
                        </span>

                        <a href="#" class="position-link">
                            Senior React Developer
                        </a>

                        <span class="dot">
                            •
                        </span>

                        <span class="status-badge">
                            Shortlisted
                        </span>

                    </div>

                </div>

            </div>


            <!-- DIVIDER -->
            <div class="section-divider"></div>


            <!-- CONTACT INFORMATION -->
            <div class="contact-section">

                <h2>Contact Information</h2>

                <div class="contact-grid">

                    <div class="contact-item">

                        <span class="contact-label">
                            Email
                        </span>

                        <span class="contact-value">
                            rahul@email.com
                        </span>

                    </div>


                    <div class="contact-item">

                        <span class="contact-label">
                            Phone
                        </span>

                        <span class="contact-value">
                            +91 98765 43210
                        </span>

                    </div>


                    <div class="contact-item">

                        <span class="contact-label">
                            Applied On
                        </span>

                        <span class="contact-value">
                            January 22, 2024
                        </span>

                    </div>

                </div>

            </div>


            <!-- DIVIDER -->
            <div class="section-divider"></div>


            <!-- RESUME -->
            <div class="resume-section">

                <h2>Resume</h2>

                <div class="resume-box">

                    <div class="resume-left">

                        <div class="resume-icon">
                            <i class="bi bi-file-earmark-text"></i>
                        </div>

                        <div class="resume-info">

                            <span class="resume-name">
                                Rahul_Sharma_Resume.pdf
                            </span>

                            <span class="resume-size">
                                1.2 MB
                            </span>

                        </div>

                    </div>


                    <a href="#" class="download-button">
                        Download
                    </a>

                </div>

            </div>


            <!-- DIVIDER -->
            <div class="section-divider"></div>


           <!-- ACTION BUTTONS -->
<div class="application-actions">

    <button type="button" class="shortlist-button">
        Shortlist Candidate
    </button>

    <button type="button" class="reject-button">
        Reject Candidate
    </button>

</div>

        </div>

    </div>

</asp:Content>