<%@ Page
    Title="Find Jobs"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Find_Job.aspx.cs"
    Inherits="Job_Portal.Users.Find_Jobs" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
          type="text/css"
          href="<%= ResolveUrl("~/Assets/Userscss/find_job.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="find-jobs-page">



        <div class="find-jobs-header">

            <h1>
                Find Jobs
            </h1>

        </div>



        <!-- =================================================
             SEARCH BOX
        ================================================== -->

        <div class="job-search-box">

            <div class="search-input-wrapper">

                <i class="bi bi-search search-icon"></i>

                <input
                    type="text"
                    id="jobSearchInput"
                    class="job-search-input"
                    placeholder="Search by job title, company, or keyword..." />

            </div>


            <button
                type="button"
                class="search-jobs-button"
                onclick="searchJobs()">

                Search Jobs

            </button>

        </div>



        <!-- =================================================
             FILTER BUTTONS
        ================================================== -->

        <div class="job-filters">

            <button
                type="button"
                class="job-filter active"
                onclick="filterJobs('all', this)">

                All Jobs

            </button>


            <button
                type="button"
                class="job-filter"
                onclick="filterJobs('Full Time', this)">

                Full Time

            </button>


            <button
                type="button"
                class="job-filter"
                onclick="filterJobs('Part Time', this)">

                Part Time

            </button>


            <button
                type="button"
                class="job-filter"
                onclick="filterJobs('Remote', this)">

                Remote

            </button>

        </div>



        <!-- =================================================
             JOB LIST
        ================================================== -->

        <div class="jobs-list" id="jobsList">


            <!-- =================================================
                 JOB 1
            ================================================= -->

            <div
                class="find-job-card"
                data-job-type="Full Time"
                data-search="Senior React Developer TCS Mumbai Full Time React Developer"
                onclick="openJob(1)">


                <div class="find-company-logo">
                    TCS
                </div>


                <div class="find-job-information">

                    <h2>
                        Senior React Developer
                    </h2>

                    <p>
                        TCS
                        <span>•</span>
                        Mumbai
                    </p>

                </div>


                <div class="find-job-type">
                    Full Time
                </div>


                <div class="find-job-salary">
                    ₹12-18 LPA
                </div>


                <div class="find-job-posted">
                    Posted 2 days ago
                </div>


            </div>



            <!-- =================================================
                 JOB 2
            ================================================== -->

            <div
                class="find-job-card"
                data-job-type="Full Time"
                data-search="UI UX Designer Infosys Bangalore Full Time Designer"
                onclick="openJob(2)">


                <div class="find-company-logo">
                    INF
                </div>


                <div class="find-job-information">

                    <h2>
                        UI/UX Designer
                    </h2>

                    <p>
                        Infosys
                        <span>•</span>
                        Bangalore
                    </p>

                </div>


                <div class="find-job-type">
                    Full Time
                </div>


                <div class="find-job-salary">
                    ₹8-14 LPA
                </div>


                <div class="find-job-posted">
                    Posted 3 days ago
                </div>


            </div>



            <!-- =================================================
                 JOB 3
            ================================================== -->

            <div
                class="find-job-card"
                data-job-type="Part Time"
                data-search="Data Analyst Wipro Pune Part Time Analyst"
                onclick="openJob(3)">


                <div class="find-company-logo">
                    WIP
                </div>


                <div class="find-job-information">

                    <h2>
                        Data Analyst
                    </h2>

                    <p>
                        Wipro
                        <span>•</span>
                        Pune
                    </p>

                </div>


                <div class="find-job-type">
                    Part Time
                </div>


                <div class="find-job-salary">
                    ₹6-10 LPA
                </div>


                <div class="find-job-posted">
                    Posted 5 days ago
                </div>


            </div>



            <!-- =================================================
                 JOB 4
            ================================================== -->

            <div
                class="find-job-card"
                data-job-type="Remote"
                data-search="Backend Developer HCL Hyderabad Remote Backend"
                onclick="openJob(4)">


                <div class="find-company-logo">
                    HCL
                </div>


                <div class="find-job-information">

                    <h2>
                        Backend Developer
                    </h2>

                    <p>
                        HCL
                        <span>•</span>
                        Hyderabad
                    </p>

                </div>


                <div class="find-job-type remote">
                    Remote
                </div>


                <div class="find-job-salary">
                    ₹10-16 LPA
                </div>


                <div class="find-job-posted">
                    Posted 1 week ago
                </div>


            </div>



            <!-- =================================================
                 JOB 5
            ================================================== -->

            <div
                class="find-job-card"
                data-job-type="Full Time"
                data-search="Marketing Manager Tech Mahindra Chennai Full Time Marketing"
                onclick="openJob(5)">


                <div class="find-company-logo">
                    TEM
                </div>


                <div class="find-job-information">

                    <h2>
                        Marketing Manager
                    </h2>

                    <p>
                        Tech Mahindra
                        <span>•</span>
                        Chennai
                    </p>

                </div>


                <div class="find-job-type">
                    Full Time
                </div>


                <div class="find-job-salary">
                    ₹7-12 LPA
                </div>


                <div class="find-job-posted">
                    Posted 1 week ago
                </div>


            </div>


        </div>



        <!-- =================================================
             NO JOB MESSAGE
        ================================================== -->

        <div
            id="noJobsMessage"
            class="no-jobs-message">

            No jobs found.

        </div>



        <!-- =================================================
             VIEW ALL JOBS
        ================================================== -->

        <div class="view-all-jobs">

            <a href="javascript:void(0);" onclick="showAllJobs()">

                View All Jobs
                <span>→</span>

            </a>

        </div>


    </div>



    <!-- =====================================================
         JAVASCRIPT
    ====================================================== -->

    <script type="text/javascript">

        /* =================================================
           OPEN JOB DETAILS
        ================================================= */

        function openJob(jobId) {

            window.location.href =
                '<%= ResolveUrl("~/Users/Job_Details.aspx") %>?job=' + jobId;

        }



        /* =================================================
           FILTER JOBS
        ================================================= */

        function filterJobs(jobType, selectedButton) {

            var jobCards =
                document.querySelectorAll(".find-job-card");

            var filterButtons =
                document.querySelectorAll(".job-filter");

            var noJobsMessage =
                document.getElementById("noJobsMessage");



            /* Remove active class */

            filterButtons.forEach(function (button) {

                button.classList.remove("active");

            });



            /* Add active class */

            selectedButton.classList.add("active");



            var visibleJobs = 0;



            /* Check every job */

            jobCards.forEach(function (jobCard) {

                var currentJobType =
                    jobCard.getAttribute("data-job-type");



                if (jobType === "all") {

                    jobCard.style.display = "flex";

                    visibleJobs++;

                }

                else if (currentJobType === jobType) {

                    jobCard.style.display = "flex";

                    visibleJobs++;

                }

                else {

                    jobCard.style.display = "none";

                }

            });



            /* Show / hide no jobs message */

            if (visibleJobs === 0) {

                noJobsMessage.style.display = "block";

            }
            else {

                noJobsMessage.style.display = "none";

            }

        }



        /* =================================================
           SEARCH JOBS
        ================================================= */

        function searchJobs() {

            var searchText =
                document.getElementById("jobSearchInput")
                    .value
                    .toLowerCase()
                    .trim();


            var jobCards =
                document.querySelectorAll(".find-job-card");


            var noJobsMessage =
                document.getElementById("noJobsMessage");


            var visibleJobs = 0;



            jobCards.forEach(function (jobCard) {

                var jobData =
                    jobCard.getAttribute("data-search")
                        .toLowerCase();


                if (searchText === "" ||
                    jobData.includes(searchText)) {

                    jobCard.style.display = "flex";

                    visibleJobs++;

                }
                else {

                    jobCard.style.display = "none";

                }

            });



            /* Remove active filter */

            document.querySelectorAll(".job-filter")
                .forEach(function (button) {

                    button.classList.remove("active");

                });



            /* No jobs */

            if (visibleJobs === 0) {

                noJobsMessage.style.display = "block";

            }
            else {

                noJobsMessage.style.display = "none";

            }

        }



        /* =================================================
           ENTER KEY SEARCH
        ================================================= */

        document.getElementById("jobSearchInput")
            .addEventListener("keypress", function (event) {

                if (event.key === "Enter") {

                    searchJobs();

                }

            });



        /* =================================================
           VIEW ALL JOBS
        ================================================= */

        function showAllJobs() {

            var allButton =
                document.querySelector(".job-filter");

            filterJobs("all", allButton);

            document.getElementById("jobSearchInput").value = "";

        }

    </script>


</asp:Content>