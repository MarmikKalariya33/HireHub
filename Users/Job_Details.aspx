<%@ Page
    Title="Job Details"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Job_Details.aspx.cs"
    Inherits="Job_Portal.Users.Job_Details" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Userscss/job_details.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="job-details-page">


        <div class="back-to-jobs">

            <a href="<%= ResolveUrl("~/Users/Find_Job.aspx") %>">

                <span>←</span>
                Back to Jobs

            </a>

        </div>



        <!-- =================================================
             JOB DETAILS CARD
        ================================================== -->

        <div class="job-details-card">


            <!-- =================================================
                 JOB HEADER
            ================================================== -->

            <div class="job-details-header">


                <!-- COMPANY LOGO -->

                <div class="details-company-logo">
                    TCS
                </div>



                <!-- JOB TITLE -->

                <div class="details-title-section">

                    <h1>
                        Senior React Developer
                    </h1>

                    <p>
                        TCS
                        <span>•</span>
                        Mumbai, Maharashtra
                    </p>

                </div>



                <!-- ACTION BUTTONS -->

                <div class="job-action-buttons">


                    <a
                        href="Apply_Job.aspx"
                        class="apply-now-button">

                        Apply Now

                    </a>


                    <a
                        href="Saved_Jobs.aspx"
                        class="save-job-button">

                        Save Job

                    </a>


                </div>


            </div>



            <!-- =================================================
                 SEPARATOR
            ================================================== -->

            <div class="job-header-line"></div>



            <!-- =================================================
                 JOB INFORMATION
            ================================================== -->

            <div class="job-basic-information">


                <div class="job-info-item">

                    <span class="job-info-label">
                        Salary
                    </span>

                    <strong>
                        ₹12-18 LPA
                    </strong>

                </div>



                <div class="job-info-item">

                    <span class="job-info-label">
                        Job Type
                    </span>

                    <strong>
                        Full Time
                    </strong>

                </div>



                <div class="job-info-item">

                    <span class="job-info-label">
                        Experience
                    </span>

                    <strong>
                        3-5 years
                    </strong>

                </div>



                <div class="job-info-item">

                    <span class="job-info-label">
                        Posted Date
                    </span>

                    <strong>
                        January 20, 2024
                    </strong>

                </div>


            </div>



            <!-- =================================================
                 JOB DESCRIPTION
            ================================================== -->

            <section class="job-content-section">


                <h2>
                    Job Description
                </h2>


                <p>

                    We are looking for a highly skilled Senior React
                    Developer to join our growing development team.
                    In this role, you will be responsible for
                    architecting, building, and deploying highly
                    responsive, pixel-perfect user interfaces.
                    You will work closely with product managers and
                    designers to translate product visions into
                    scalable frontend codebases.

                </p>


            </section>



            <!-- =================================================
                 KEY RESPONSIBILITIES
            ================================================== -->

            <section class="job-content-section">


                <h2>
                    Key Responsibilities
                </h2>


                <ul>

                    <li>
                        Design and build scalable and reusable React
                        components from scratch.
                    </li>

                    <li>
                        Collaborate with backend engineers to integrate
                        RESTful and GraphQL APIs seamlessly.
                    </li>

                    <li>
                        Optimize application architectures for maximum
                        performance and cross-browser responsiveness.
                    </li>

                    <li>
                        Write unit and integration tests to ensure
                        code quality and prevent application regressions.
                    </li>

                    <li>
                        Provide technical mentorship and run comprehensive
                        code reviews for junior engineers.
                    </li>

                </ul>


            </section>



            <!-- =================================================
                 JOB REQUIREMENTS
            ================================================== -->

            <section class="job-content-section">


                <h2>
                    Job Requirements
                </h2>


                <ul>

                    <li>
                        Minimum 3-5 years of experience building
                        modern single-page applications with React.
                    </li>

                    <li>
                        Expert knowledge of raw JavaScript, TypeScript,
                        modern ES6+ syntaxes, and markup/styling.
                    </li>

                    <li>
                        Proven experience with global state management
                        architectures such as Redux Toolkit or Recoil.
                    </li>

                    <li>
                        Strong working familiarity with modern
                        development tools like Git, Webpack, and Vite.
                    </li>

                    <li>
                        Excellent communication, documentation, and
                        technical team coordination skills.
                    </li>

                </ul>


            </section>



            <!-- =================================================
                 REQUIRED SKILLS
            ================================================== -->

            <section class="job-content-section skills-section">


                <h2>
                    Required Skills
                </h2>


                <div class="skills-list">


                    <span class="skill-tag">
                        React
                    </span>


                    <span class="skill-tag">
                        JavaScript
                    </span>


                    <span class="skill-tag">
                        TypeScript
                    </span>


                    <span class="skill-tag">
                        Redux
                    </span>


                    <span class="skill-tag">
                        Node.js
                    </span>


                </div>


            </section>


        </div>


    </div>


</asp:Content>