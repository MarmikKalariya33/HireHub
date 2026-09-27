<%@ Page Title="" Language="C#" MasterPageFile="~/Employee/Employee.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Job_Portal.Employee.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

     <!-- Employee CSS -->
 <link
     rel="stylesheet"
     href="<%= ResolveUrl("~/Assets/Employeecss/dashboard.css") %>" />



    <!-- =========================================
         DASHBOARD MAIN PAGE
    ========================================= -->

    <div class="dashboard-page">


        <!-- =====================================
             WELCOME HEADER
        ====================================== -->

        <div class="dashboard-header">

            <h1>
                Welcome back, TCS!
            </h1>

            <p>
                Here is what is happening with your job postings today.
            </p>

        </div>


        <!-- =====================================
             STATISTICS CARDS
        ====================================== -->

        <div class="dashboard-stats">


            <!-- ACTIVE JOBS -->

            <div class="stat-card">

                <div class="stat-icon stat-icon-blue">

                    <i class="bi bi-briefcase-fill"></i>

                </div>

                <div class="stat-text">

                    <span class="stat-text-title">
                        Active Jobs
                    </span>

                    <span class="stat-text-number">
                        12
                    </span>

                </div>

            </div>


            <!-- APPLICATIONS -->

            <div class="stat-card">

                <div class="stat-icon stat-icon-green">

                    <i class="bi bi-file-earmark-text-fill"></i>

                </div>

                <div class="stat-text">

                    <span class="stat-text-title">
                        Applications
                    </span>

                    <span class="stat-text-number">
                        156
                    </span>

                </div>

            </div>


            <!-- SHORTLISTED -->

            <div class="stat-card">

                <div class="stat-icon stat-icon-orange">

                    <i class="bi bi-record-circle"></i>

                </div>

                <div class="stat-text">

                    <span class="stat-text-title">
                        Shortlisted
                    </span>

                    <span class="stat-text-number">
                        24
                    </span>

                </div>

            </div>


            <!-- INTERVIEWS -->

            <div class="stat-card">

                <div class="stat-icon stat-icon-red">

                    <i class="bi bi-bar-chart-line"></i>

                </div>

                <div class="stat-text">

                    <span class="stat-text-title">
                        Interviews Scheduled
                    </span>

                    <span class="stat-text-number">
                        8
                    </span>

                </div>

            </div>


        </div>


        <!-- =====================================
             RECENT APPLICATIONS
        ====================================== -->

        <div class="recent-applications">


            <!-- HEADER -->

            <div class="recent-header">

                <h2>
                    Recent Applications
                </h2>

                <a href="Applications.aspx"
                   class="view-all">

                    View All Applications
                    <span class="view-all-arrow">→</span>

                </a>

            </div>


            <!-- =================================
                 APPLICATION 1
            ================================== -->

            <div class="application-row">

                <div class="candidate-avatar">
                    RS
                </div>

                <div class="candidate-info">

                    <span class="candidate-name">
                        Rahul Sharma
                    </span>

                    <span class="candidate-job">
                        Applied for: Senior React Developer
                    </span>

                </div>

                <div class="application-date">
                    Jan 22, 2024
                </div>

                <div class="application-status shortlisted">
                    Shortlisted
                </div>

            </div>


            <!-- =================================
                 APPLICATION 2
            ================================== -->

            <div class="application-row">

                <div class="candidate-avatar">
                    PP
                </div>

                <div class="candidate-info">

                    <span class="candidate-name">
                        Priya Patel
                    </span>

                    <span class="candidate-job">
                        Applied for: UI/UX Designer
                    </span>

                </div>

                <div class="application-date">
                    Jan 25, 2024
                </div>

                <div class="application-status interview">
                    Interview Scheduled
                </div>

            </div>


            <!-- =================================
                 APPLICATION 3
            ================================== -->

            <div class="application-row">

                <div class="candidate-avatar">
                    AK
                </div>

                <div class="candidate-info">

                    <span class="candidate-name">
                        Amit Kumar
                    </span>

                    <span class="candidate-job">
                        Applied for: Data Analyst
                    </span>

                </div>

                <div class="application-date">
                    Feb 1, 2024
                </div>

                <div class="application-status rejected">
                    Rejected
                </div>

            </div>


            <!-- =================================
                 APPLICATION 4
            ================================== -->

            <div class="application-row">

                <div class="candidate-avatar">
                    SG
                </div>

                <div class="candidate-info">

                    <span class="candidate-name">
                        Sneha Gupta
                    </span>

                    <span class="candidate-job">
                        Applied for: Backend Developer
                    </span>

                </div>

                <div class="application-date">
                    Feb 5, 2024
                </div>

                <div class="application-status shortlisted">
                    Shortlisted
                </div>

            </div>


        </div>


    </div>


</asp:Content>