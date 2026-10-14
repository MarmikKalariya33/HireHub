<%@ Page
    Title="Find Jobs"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Find_Job.aspx.cs"
    Inherits="Job_Portal.Users.Find_Jobs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet" type="text/css"
        href="<%= ResolveUrl("~/Assets/Userscss/find_job.css") %>" />

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="find-jobs-page">

        <div class="find-jobs-header">
            <h1>Find Jobs</h1>
        </div>

        <!-- Search Box -->
        <div class="job-search-box">

            <div class="search-input-wrapper">
                <i class="bi bi-search search-icon"></i>

                <input type="text"
                    id="jobSearchInput"
                    class="job-search-input"
                    placeholder="Search by job title, company, or keyword..." />
            </div>

            <button type="button" class="search-jobs-button"
                onclick="searchJobs()">
                Search Jobs
            </button>

        </div>

        <!-- Filters -->
        <div class="job-filters">

            <button type="button" class="job-filter active"
                onclick="filterJobs('all', this)">
                All Jobs
            </button>

            <button type="button" class="job-filter"
                onclick="filterJobs('Full Time', this)">
                Full Time
            </button>

            <button type="button" class="job-filter"
                onclick="filterJobs('Part Time', this)">
                Part Time
            </button>

            <button type="button" class="job-filter"
                onclick="filterJobs('Remote', this)">
                Remote
            </button>

        </div>

        <!-- Job List -->
        <div class="jobs-list" id="jobsList">

            <!-- Job 1 -->
            <div class="find-job-card"
                data-job-type="Full Time"
                data-search="Senior React Developer TCS Mumbai Full Time React Developer"
                onclick="openJob(1)">

                <div class="find-company-logo">TCS</div>

                <div class="find-job-information">
                    <h2>Senior React Developer</h2>
                    <p>TCS <span>•</span> Mumbai</p>
                </div>

                <div class="find-job-type">Full Time</div>
                <div class="find-job-salary">₹12-18 LPA</div>
                <div class="find-job-posted">Posted 2 days ago</div>

            </div>

            <!-- Job 2 -->
            <div class="find-job-card"
                data-job-type="Full Time"
                data-search="UI UX Designer Infosys Bangalore Full Time Designer"
                onclick="openJob(2)">

                <div class="find-company-logo">INF</div>

                <div class="find-job-information">
                    <h2>UI/UX Designer</h2>
                    <p>Infosys <span>•</span> Bangalore</p>
                </div>

                <div class="find-job-type">Full Time</div>
                <div class="find-job-salary">₹8-14 LPA</div>
                <div class="find-job-posted">Posted 3 days ago</div>

            </div>

            <!-- Job 3 -->
            <div class="find-job-card"
                data-job-type="Part Time"
                data-search="Data Analyst Wipro Pune Part Time Analyst"
                onclick="openJob(3)">

                <div class="find-company-logo">WIP</div>

                <div class="find-job-information">
                    <h2>Data Analyst</h2>
                    <p>Wipro <span>•</span> Pune</p>
                </div>

                <div class="find-job-type">Part Time</div>
                <div class="find-job-salary">₹6-10 LPA</div>
                <div class="find-job-posted">Posted 5 days ago</div>

            </div>

            <!-- Job 4 -->
            <div class="find-job-card"
                data-job-type="Remote"
                data-search="Backend Developer HCL Hyderabad Remote Backend"
                onclick="openJob(4)">

                <div class="find-company-logo">HCL</div>

                <div class="find-job-information">
                    <h2>Backend Developer</h2>
                    <p>HCL <span>•</span> Hyderabad</p>
                </div>

                <div class="find-job-type remote">Remote</div>
                <div class="find-job-salary">₹10-16 LPA</div>
                <div class="find-job-posted">Posted 1 week ago</div>

            </div>

            <!-- Job 5 -->
            <div class="find-job-card"
                data-job-type="Full Time"
                data-search="Marketing Manager Tech Mahindra Chennai Full Time Marketing"
                onclick="openJob(5)">

                <div class="find-company-logo">TEM</div>

                <div class="find-job-information">
                    <h2>Marketing Manager</h2>
                    <p>Tech Mahindra <span>•</span> Chennai</p>
                </div>

                <div class="find-job-type">Full Time</div>
                <div class="find-job-salary">₹7-12 LPA</div>
                <div class="find-job-posted">Posted 1 week ago</div>

            </div>

        </div>

        <!-- No Jobs Message -->
        <div id="noJobsMessage" class="no-jobs-message">
            No jobs found.
        </div>

        <!-- View All Jobs -->
        <div class="view-all-jobs">
            <a href="javascript:void(0);" onclick="showAllJobs()">
                View All Jobs <span>→</span>
            </a>
        </div>

    </div>

    <!-- Open Job Details Page -->
    <script>
        function openJob(id) {
            window.location.href = 'Job_Details.aspx?id=' + id;
        }
    </script>

</asp:Content>