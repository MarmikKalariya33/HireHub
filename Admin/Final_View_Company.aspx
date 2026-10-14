
<%@ Page Title="View Company"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Final_View_Company.aspx.cs"
    Inherits="Job_Portal.Admin.Final_View_Company" %>

<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/final_view_company.css") %>" />

    <link rel="stylesheet"
        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />

</asp:Content>

<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="view-company-page">

        <!-- BACK LINK -->

        <div class="back-wrapper">

            <a href="Companies.aspx" class="back-link">
                <i class="fa-solid fa-arrow-left"></i>
                <span>Back to Companies</span>
            </a>

        </div>

        <!-- COMPANY HEADER CARD -->

        <div class="company-profile-card">

            <div class="profile-top">

                <div class="company-avatar">
                    T
                </div>

                <div class="company-heading">

                    <h1>Tata Consultancy Services</h1>

                    <p class="company-industry">
                        <i class="fa-solid fa-briefcase"></i>
                        IT &amp; Software
                    </p>

                    <div class="company-meta">

                        <span>
                            <i class="fa-solid fa-location-dot"></i>
                            Mumbai, India
                        </span>

                        <span class="status-badge">
                            <span class="status-dot"></span>
                            Active
                        </span>

                    </div>

                </div>

                <div class="profile-actions">

                    <asp:HyperLink
                        ID="lnkEditCompany"
                        runat="server"
                        NavigateUrl="~/Admin/Final_Edit_Company.aspx"
                        CssClass="edit-company-button">

                        <i class="fa-solid fa-pen"></i>
                        Edit Company

                    </asp:HyperLink>

                </div>

            </div>

        </div>

        <!-- COMPANY OVERVIEW -->

        <div class="section-heading">

            <div>
                <h2>Company Overview</h2>
                <p>View the company's registered information.</p>
            </div>

        </div>

        <div class="overview-grid">

            <!-- CONTACT INFORMATION -->

            <div class="view-card">

                <div class="card-heading">
                    <div class="card-icon">
                        <i class="fa-solid fa-address-card"></i>
                    </div>

                    <h3>Contact Information</h3>
                </div>

                <div class="detail-list">

                    <div class="detail-item">
                        <span class="detail-label">Contact Email</span>
                        <span class="detail-value">hr@tcs.com</span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Contact Phone</span>
                        <span class="detail-value">+91 22 6778 9999</span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Website</span>

                        <a class="detail-value website-link"
                           href="https://www.tcs.com/"
                           target="_blank"
                           rel="noopener noreferrer">
                            www.tcs.com
                            <i class="fa-solid fa-arrow-up-right-from-square"></i>
                        </a>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Location</span>
                        <span class="detail-value">Mumbai, India</span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Full Address</span>
                        <span class="detail-value">
                            TCS House, Raveline Street, Fort,
                            Mumbai, Maharashtra, India - 400001
                        </span>
                    </div>

                </div>

            </div>

            <!-- COMPANY DETAILS -->

            <div class="view-card">

                <div class="card-heading">
                    <div class="card-icon">
                        <i class="fa-solid fa-building"></i>
                    </div>

                    <h3>Company Details</h3>
                </div>

                <div class="detail-list">

                    <div class="detail-item">
                        <span class="detail-label">Company Name</span>
                        <span class="detail-value">
                            Tata Consultancy Services
                        </span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Industry</span>
                        <span class="detail-value">IT &amp; Software</span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Number of Employees</span>
                        <span class="detail-value">500,000</span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Company Size</span>
                        <span class="detail-value">
                            500,000+ Employees
                        </span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Registration Date</span>
                        <span class="detail-value">
                            January 10, 2024
                        </span>
                    </div>

                    <div class="detail-item">
                        <span class="detail-label">Account Status</span>
                        <span class="status-badge">
                            <span class="status-dot"></span>
                            Active
                        </span>
                    </div>

                </div>

            </div>

        </div>

        <!-- ABOUT COMPANY -->

        <div class="view-card full-width-card">

            <div class="card-heading">

                <div class="card-icon">
                    <i class="fa-solid fa-circle-info"></i>
                </div>

                <h3>About Company</h3>

            </div>

            <p class="description-text">
                Tata Consultancy Services (TCS) is a leading global
                IT services, consulting and business solutions
                organization. It is part of the Tata Group and has
                a strong presence across the world.
            </p>

            <p class="description-text">
                TCS provides technology solutions and consulting
                services to organizations across multiple industries.
                The company is known for its large-scale enterprise
                solutions, digital transformation services and innovation.
            </p>

        </div>

        <!-- COMPANY DESCRIPTION -->

        <div class="view-card full-width-card">

            <div class="card-heading">

                <div class="card-icon">
                    <i class="fa-solid fa-file-lines"></i>
                </div>

                <h3>Company Description</h3>

            </div>

            <p class="description-text">
                We are one of the leading technology companies providing
                software development, consulting, cloud computing and
                digital transformation services to businesses around
                the world.
            </p>

        </div>

        <!-- BOTTOM ACTIONS -->

        <div class="bottom-actions">

            <a href="Companies.aspx" class="back-button">
                <i class="fa-solid fa-arrow-left"></i>
                Back to Companies
            </a>

            <asp:HyperLink
                ID="lnkEditCompanyBottom"
                runat="server"
                NavigateUrl="~/Admin/Final_Edit_Company.aspx"
                CssClass="edit-company-button">

                <i class="fa-solid fa-pen"></i>
                Edit Company Details

            </asp:HyperLink>

        </div>

    </div>

</asp:Content>
