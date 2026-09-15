<%@ Page
    Title="Dashboard"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="Job_Portal.Users.Dashboard" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="user-dashboard">


        <div class="dashboard-welcome">

            <h1>
                Welcome back, Rahul!
            </h1>

            <p>
                Your job search is looking great. Here is what is
                happening with your applications today.
            </p>

        </div>



        <div class="dashboard-stats">


            <!-- Applications -->

            <div class="stat-card">

                <div class="stat-icon applications-icon">

                    <i class="bi bi-file-earmark-text"></i>

                </div>


                <div class="stat-content">

                    <div class="stat-title">
                        Applications Sent
                    </div>

                    <div class="stat-number">
                        12
                    </div>

                </div>

            </div>



            <!-- Interviews -->

            <div class="stat-card">

                <div class="stat-icon interviews-icon">

                    <i class="bi bi-record-circle"></i>

                </div>


                <div class="stat-content">

                    <div class="stat-title">
                        Interviews Scheduled
                    </div>

                    <div class="stat-number">
                        3
                    </div>

                </div>

            </div>



            <!-- Alerts -->

            <div class="stat-card">

                <div class="stat-icon alerts-icon">

                    <i class="bi bi-briefcase-fill"></i>

                </div>


                <div class="stat-content">

                    <div class="stat-title">
                        Job Alerts
                    </div>

                    <div class="stat-number">
                        5
                    </div>

                </div>

            </div>


        </div>


        <div class="dashboard-lower-section">


            <div class="recommended-section">


                <h2>
                    Recommended Jobs
                </h2>



                <!-- Job 1 -->

                <div class="job-card">


                    <div class="company-logo">
                        TCS
                    </div>


                    <div class="job-information">

                        <h3>
                            Senior React Developer
                        </h3>

                        <p>
                            TCS
                            <span>•</span>
                            Mumbai
                        </p>

                    </div>


                    <div class="job-type">
                        Full Time
                    </div>


                    <div class="job-salary">
                        ₹12-18 LPA
                    </div>


                    <div class="job-posted">
                        Posted 2 days ago
                    </div>


                </div>



                <!-- Job 2 -->

                <div class="job-card">


                    <div class="company-logo">
                        INF
                    </div>


                    <div class="job-information">

                        <h3>
                            UI/UX Designer
                        </h3>

                        <p>
                            Infosys
                            <span>•</span>
                            Bangalore
                        </p>

                    </div>


                    <div class="job-type">
                        Full Time
                    </div>


                    <div class="job-salary">
                        ₹8-14 LPA
                    </div>


                    <div class="job-posted">
                        Posted 3 days ago
                    </div>


                </div>



                <!-- Job 3 -->

                <div class="job-card">


                    <div class="company-logo">
                        WIP
                    </div>


                    <div class="job-information">

                        <h3>
                            Data Analyst
                        </h3>

                        <p>
                            Wipro
                            <span>•</span>
                            Pune
                        </p>

                    </div>


                    <div class="job-type">
                        Part Time
                    </div>


                    <div class="job-salary">
                        ₹6-10 LPA
                    </div>


                    <div class="job-posted">
                        Posted 5 days ago
                    </div>


                </div>


            </div>


            <div class="activity-section">


                <div class="activity-card">


                    <h2>
                        Recent Application Activity
                    </h2>



                    <!-- Activity 1 -->

                    <div class="activity-item">

                        <div class="activity-dot green-dot">
                        </div>


                        <div class="activity-content">

                            <h3>
                                Interview scheduled at Infosys
                            </h3>

                            <p>
                                Jan 25, 2024
                            </p>

                        </div>

                    </div>



                    <!-- Activity 2 -->

                    <div class="activity-item">

                        <div class="activity-dot blue-dot">
                        </div>


                        <div class="activity-content">

                            <h3>
                                Applied for Senior React Developer at TCS
                            </h3>

                            <p>
                                Jan 22, 2024
                            </p>

                        </div>

                    </div>



                    <!-- Activity 3 -->

                    <div class="activity-item">

                        <div class="activity-dot orange-dot">
                        </div>


                        <div class="activity-content">

                            <h3>
                                Shortlisted as Data Analyst at Wipro
                            </h3>

                            <p>
                                Feb 1, 2024
                            </p>

                        </div>

                    </div>


                </div>


            </div>


        </div>


    </div>


</asp:Content>