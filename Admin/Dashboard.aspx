<%@ Page Title="Admin Dashboard"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="Job_Portal.Admin.Dashboard" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <!-- Dashboard CSS -->
    <link href="../Assets/Admincss/dashboard.css"
          rel="stylesheet" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="admin-dashboard">


        <!-- ==========================
             WELCOME SECTION
        =========================== -->

        <div class="welcome-box">

            <h1>
                Welcome back, Admin! 👋
            </h1>

            <p>
                Manage your HireHub platform from one place.
            </p>

        </div>


        <!-- ==========================
             STATISTICS
        =========================== -->

        <div class="stats">


            <!-- Total Users -->

            <div class="stat-card">

                <div class="icon">
                    <i class="bi bi-people"></i>
                </div>

                <h6>
                    Total Users
                </h6>

                <h2>
                    2,847
                </h2>

            </div>


            <!-- Total Employers -->

            <div class="stat-card">

                <div class="icon">
                    <i class="bi bi-building"></i>
                </div>

                <h6>
                    Total Employers
                </h6>

                <h2>
                    456
                </h2>

            </div>


            <!-- Total Jobs -->

            <div class="stat-card">

                <div class="icon">
                    <i class="bi bi-briefcase"></i>
                </div>

                <h6>
                    Total Jobs
                </h6>

                <h2>
                    1,234
                </h2>

            </div>


            <!-- Total Applications -->

            <div class="stat-card">

                <div class="icon">
                    <i class="bi bi-file-earmark-text"></i>
                </div>

                <h6>
                    Total Applications
                </h6>

                <h2>
                    8,912
                </h2>

            </div>

        </div>


        <!-- ==========================
             HIREHUB OVERVIEW
        =========================== -->

        <div class="overview">

            <h3>
                HireHub Overview
            </h3>


            <div class="overview-items">


                <!-- Users -->

                <div class="overview-item">

                    <i class="bi bi-person-check"></i>

                    <h5>
                        Users
                    </h5>

                    <p>
                        Manage registered job seekers.
                    </p>

                </div>


                <!-- Employers -->

                <div class="overview-item">

                    <i class="bi bi-building-check"></i>

                    <h5>
                        Employers
                    </h5>

                    <p>
                        Manage companies and recruiters.
                    </p>

                </div>


                <!-- Jobs -->

                <div class="overview-item">

                    <i class="bi bi-search"></i>

                    <h5>
                        Jobs & Applications
                    </h5>

                    <p>
                        Manage jobs and submitted applications.
                    </p>

                </div>


            </div>

        </div>


    </div>

</asp:Content>