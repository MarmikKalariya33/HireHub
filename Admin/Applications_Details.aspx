<%@ Page Title="Application Details"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Application_Details.aspx.cs"
    Inherits="Job_Portal.Admin.Application_Details" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
    type="text/css"
    href="<%= ResolveUrl("~/Assets/css/application_detail.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="application-details-page">

        <!-- Back -->
        <div class="back-section">

            <a href="Applications.aspx" class="back-link">
                <span class="back-arrow">←</span>
                Back to Applications
            </a>

        </div>


        <!-- Main Card -->
        <div class="application-card">

            <!-- Applicant Header -->
            <div class="applicant-header">

                <div class="applicant-avatar">
                    RS
                </div>


                <div class="applicant-heading">

                    <div class="name-status">

                        <h1>Rahul Sharma</h1>

                        <span class="status-badge pending">
                            Pending
                        </span>

                    </div>


                    <div class="applied-for">

                        Applied for:
                        <a href="#" class="job-link">
                            Senior React Developer
                        </a>

                        <span class="at-company">
                            at TCS
                        </span>

                    </div>

                </div>

            </div>


            <!-- Divider -->
            <div class="divider"></div>


            <!-- Applicant Information -->
            <div class="applicant-information">

                <div class="info-item">

                    <div class="info-label">
                        EMAIL ADDRESS
                    </div>

                    <div class="info-value">
                        rahul.sharma@email.com
                    </div>

                </div>


                <div class="info-item">

                    <div class="info-label">
                        PHONE NUMBER
                    </div>

                    <div class="info-value">
                        +91 98765 43210
                    </div>

                </div>


                <div class="info-item">

                    <div class="info-label">
                        APPLIED DATE
                    </div>

                    <div class="info-value">
                        January 22, 2024
                    </div>

                </div>

            </div>


            <!-- Divider -->
            <div class="divider information-divider"></div>


            <!-- Submitted Documents -->
            <div class="documents-section">

                <h2>Submitted Documents</h2>


                <div class="document-box">

                    <div class="document-left">

                        <div class="document-icon">
                            <span>▤</span>
                        </div>


                        <div class="document-details">

                            <div class="document-name">
                                Rahul_Sharma_Resume.pdf
                            </div>

                            <div class="document-size">
                                PDF • 1.2 MB
                            </div>

                        </div>

                    </div>


                    <asp:Button
                        ID="btnDownloadResume"
                        runat="server"
                        Text="Download Resume"
                        CssClass="download-button"
                        OnClick="btnDownloadResume_Click" />

                </div>

            </div>


            <!-- Divider -->
            <div class="divider document-divider"></div>


            <!-- Bottom Actions -->
            <div class="bottom-actions">

                <asp:Button
                    ID="btnShortlist"
                    runat="server"
                    Text="Shortlist Applicant"
                    CssClass="shortlist-button"
                    OnClick="btnShortlist_Click" />


                <asp:Button
                    ID="btnReject"
                    runat="server"
                    Text="Reject Applicant"
                    CssClass="reject-button"
                    OnClick="btnReject_Click" />

            </div>

        </div>

    </div>

</asp:Content>