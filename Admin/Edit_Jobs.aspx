<%@ Page Title="Edit Job"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Jobs.aspx.cs"
    Inherits="Job_Portal.Admin.Edit_Jobs" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/edit_jobs.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="job-details-page">

        <a href="<%= ResolveUrl("~/Admin/Jobs.aspx") %>"
           class="back-link">

            <i class="bi bi-arrow-left"></i>

            <span>Back to Jobs</span>

        </a>

        <div class="job-card">

            <div class="job-header">

                <div>

                    <h1>
                        Senior React Developer
                    </h1>

                    <p>
                        Tata Consultancy Services (TCS)
                    </p>

                </div>

                <span class="job-status">
                    Active
                </span>

            </div>


            <div class="divider"></div>


            <div class="job-information">

                <div class="job-info-item">

                    <span class="info-label">
                        JOB TYPE
                    </span>

                    <span class="info-value">
                        Full Time
                    </span>

                </div>


                <div class="job-info-item">

                    <span class="info-label">
                        SALARY RANGE
                    </span>

                    <span class="info-value">
                        ₹12,00,000 - ₹18,00,000/yr
                    </span>

                </div>


                <div class="job-info-item">

                    <span class="info-label">
                        POSTED DATE
                    </span>

                    <span class="info-value">
                        January 20, 2024
                    </span>

                </div>


                <div class="job-info-item">

                    <span class="info-label">
                        LOCATION
                    </span>

                    <span class="info-value">
                        Mumbai, India
                    </span>

                </div>

            </div>


            <div class="divider"></div>


            <div class="job-description">

                <h2>
                    Job Description
                </h2>

                <p>
                    We are looking for a Senior React Developer to join our
                    core development team. In this role, you will be responsible
                    for designing and developing robust web applications,
                    optimizing front-end performance, and leading a small team
                    of talented developers.
                </p>

            </div>


            <div class="responsibilities">

                <h2>
                    Responsibilities
                </h2>

                <ul>

                    <li>
                        Develop highly-responsive user interface components
                        using React concepts.
                    </li>

                    <li>
                        Collaborate with backend teams to integrate RESTful
                        and GraphQL APIs.
                    </li>

                    <li>
                        Optimize application performance for maximum speed
                        and scalability.
                    </li>

                    <li>
                        Write clean, maintainable, and well-documented
                        modular code.
                    </li>

                    <li>
                        Provide technical leadership and mentorship to
                        junior engineering staff.
                    </li>

                </ul>

            </div>


            <div class="skills-section">

                <h2>
                    Skills Tags
                </h2>

                <div class="skills">

                    <span>
                        React
                    </span>

                    <span>
                        JavaScript
                    </span>

                    <span>
                        TypeScript
                    </span>

                    <span>
                        Redux
                    </span>

                    <span>
                        Node.js
                    </span>

                </div>

            </div>


            <div class="divider bottom-divider"></div>


            <div class="job-buttons">

                <a href="#"
                   class="edit-button">

                    Edit Job

                </a>


                <a href="#"
                   class="deactivate-button">

                    Deactivate Job

                </a>

            </div>

        </div>

    </div>

</asp:Content>