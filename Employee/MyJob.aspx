<%@ Page Title="My Jobs"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="MyJob.aspx.cs"
    Inherits="Job_Portal.Employee.MyJob" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link
        rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/myjob.css") %>" />

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="my-jobs-page">

        <!-- =========================================
             HEADER
        ========================================= -->

        <div class="jobs-header">

            <h1 class="jobs-title">
                My Jobs
            </h1>

            <div class="jobs-header-actions">

                <!-- Search -->
                <div class="search-box">

                    <span class="search-icon">
                        &#128269;
                    </span>

                    <input
                        type="text"
                        id="jobSearch"
                        class="search-input"
                        placeholder="Search jobs..."
                        autocomplete="off" />

                </div>


                <!-- Post New Job -->
                <a
                    href="PostNewJob.aspx"
                    class="post-job-button">

                    <span class="plus-icon">
                        +
                    </span>

                    <span>
                        Post New Job
                    </span>

                </a>

            </div>

        </div>


        <!-- =========================================
             FILTER TABS
        ========================================= -->

        <div class="job-filter-tabs">

            <button
                type="button"
                class="job-filter active"
                data-filter="all">
                All Jobs
            </button>

            <button
                type="button"
                class="job-filter"
                data-filter="active">
                Active
            </button>

            <button
                type="button"
                class="job-filter"
                data-filter="inactive">
                Inactive
            </button>

            <button
                type="button"
                class="job-filter"
                data-filter="draft">
                Draft
            </button>

        </div>


        <!-- =========================================
             JOB 1
        ========================================= -->

        <div class="job-card" data-status="active">

            <div class="company-logo">
                TCS
            </div>


            <div class="job-information">

                <h2 class="job-name">
                    Senior React Developer
                </h2>

                <div class="job-meta">

                    <span>
                        Mumbai
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <span>
                        Full Time
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <a href="#" class="applications-link">
                        24 Applications
                    </a>

                </div>

            </div>


            <div class="job-actions">

                <span class="status active-status">
                    Active
                </span>

                <a href="EditJob.aspx" class="edit-action">
                    <span class="action-icon">✎</span>
                    Edit
                </a>

                <button
                    type="button"
                    class="danger-action"
                    onclick="return confirm('Are you sure you want to deactivate this job?');">

                    <span class="action-icon">
                        ♙
                    </span>

                    Deactivate

                </button>

            </div>

        </div>


        <!-- =========================================
             JOB 2
        ========================================= -->

        <div class="job-card" data-status="active">

            <div class="company-logo">
                TCS
            </div>


            <div class="job-information">

                <h2 class="job-name">
                    UI/UX Designer
                </h2>

                <div class="job-meta">

                    <span>
                        Bangalore
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <span>
                        Full Time
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <a href="#" class="applications-link">
                        18 Applications
                    </a>

                </div>

            </div>


            <div class="job-actions">

                <span class="status active-status">
                    Active
                </span>

                <a href="EditJob.aspx" class="edit-action">
                    <span class="action-icon">✎</span>
                    Edit
                </a>

                <button
                    type="button"
                    class="danger-action"
                    onclick="return confirm('Are you sure you want to deactivate this job?');">

                    <span class="action-icon">
                        ♙
                    </span>

                    Deactivate

                </button>

            </div>

        </div>


        <!-- =========================================
             JOB 3
        ========================================= -->

        <div class="job-card" data-status="inactive">

            <div class="company-logo">
                TCS
            </div>


            <div class="job-information">

                <h2 class="job-name">
                    Data Analyst
                </h2>

                <div class="job-meta">

                    <span>
                        Pune
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <span>
                        Part Time
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <a href="#" class="applications-link">
                        12 Applications
                    </a>

                </div>

            </div>


            <div class="job-actions">

                <span class="status inactive-status">
                    Inactive
                </span>

                <a href="EditJob.aspx" class="edit-action">
                    <span class="action-icon">✎</span>
                    Edit
                </a>

                <button
                    type="button"
                    class="danger-action">

                    <span class="action-icon">
                        ♙
                    </span>

                    Publish

                </button>

            </div>

        </div>


        <!-- =========================================
             JOB 4
        ========================================= -->

        <div class="job-card" data-status="draft">

            <div class="company-logo">
                TCS
            </div>


            <div class="job-information">

                <h2 class="job-name">
                    Backend Developer
                </h2>

                <div class="job-meta">

                    <span>
                        Hyderabad
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <span>
                        Remote
                    </span>

                    <span class="dot">
                        •
                    </span>

                    <a href="#" class="applications-link">
                        31 Applications
                    </a>

                </div>

            </div>


            <div class="job-actions">

                <span class="status draft-status">
                    Draft
                </span>

                <a href="EditJob.aspx" class="edit-action">
                    <span class="action-icon">✎</span>
                    Edit
                </a>

                <button
                    type="button"
                    class="danger-action">

                    <span class="action-icon">
                        ♙
                    </span>

                    Publish

                </button>

            </div>

        </div>


        <!-- =========================================
             NO RESULTS MESSAGE
        ========================================= -->

        <div
            id="noJobsMessage"
            class="no-jobs-message"
            style="display: none;">

            No jobs found.

        </div>

    </div>

</asp:Content>