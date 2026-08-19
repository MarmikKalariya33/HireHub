<%@ Page Title="Dashboard"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Dashboard.aspx.cs"
    Inherits="Job_Portal.Admin.Dashboard" %>



<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- ================= WELCOME ================= -->

    <div class="welcome">

        <h1>
            Welcome back, Admin!
        </h1>

        <p>
            Here is what's happening with HireHub today.
        </p>

    </div>


    <!-- ================= STATISTICS ================= -->

    <div class="stats">


        <!-- USERS -->

        <div class="stat-card">

            <div class="stat-left">

                <h6>
                    Total Users
                </h6>

                <h3>
                    2,847
                </h3>

            </div>

            <div class="stat-icon">

                <i class="bi bi-people"></i>

            </div>

        </div>


        <!-- EMPLOYERS -->

        <div class="stat-card">

            <div class="stat-left">

                <h6>
                    Total Employers
                </h6>

                <h3>
                    456
                </h3>

            </div>

            <div class="stat-icon">

                <i class="bi bi-building"></i>

            </div>

        </div>


        <!-- JOBS -->

        <div class="stat-card">

            <div class="stat-left">

                <h6>
                    Total Jobs
                </h6>

                <h3>
                    1,234
                </h3>

            </div>

            <div class="stat-icon">

                <i class="bi bi-briefcase"></i>

            </div>

        </div>


        <!-- APPLICATIONS -->

        <div class="stat-card">

            <div class="stat-left">

                <h6>
                    Total Applications
                </h6>

                <h3>
                    8,912
                </h3>

            </div>

            <div class="stat-icon">

                <i class="bi bi-file-earmark-text"></i>

            </div>

        </div>


    </div>


    <!-- ================= DASHBOARD GRID ================= -->

    <div class="dashboard-grid">


        <!-- APPLICATION OVERVIEW -->

        <div class="box">

            <div class="box-title">

                Application Overview

            </div>


            <div class="chart">


                <!-- JAN -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:25%;">
                    </div>

                    <div class="bar-label">
                        Jan
                    </div>

                </div>


                <!-- FEB -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:50%;">
                    </div>

                    <div class="bar-label">
                        Feb
                    </div>

                </div>


                <!-- MAR -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:35%;">
                    </div>

                    <div class="bar-label">
                        Mar
                    </div>

                </div>


                <!-- APR -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:70%;">
                    </div>

                    <div class="bar-label">
                        Apr
                    </div>

                </div>


                <!-- MAY -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:60%;">
                    </div>

                    <div class="bar-label">
                        May
                    </div>

                </div>


                <!-- JUN -->

                <div class="bar-container">

                    <div class="bar"
                         style="height:85%;">
                    </div>

                    <div class="bar-label">
                        Jun
                    </div>

                </div>


            </div>

        </div>


        <!-- ================= RECENT ACTIVITY ================= -->

        <div class="box">

            <div class="box-title">

                Recent Activity

            </div>


            <div class="activity">


                <!-- ACTIVITY 1 -->

                <div class="activity-item">

                    <div class="activity-icon">

                        <i class="bi bi-person-plus"></i>

                    </div>

                    <div class="activity-text">

                        New employer registered

                        <span class="activity-time">
                            10 minutes ago
                        </span>

                    </div>

                </div>


                <!-- ACTIVITY 2 -->

                <div class="activity-item">

                    <div class="activity-icon">

                        <i class="bi bi-briefcase"></i>

                    </div>

                    <div class="activity-text">

                        New job posted

                        <span class="activity-time">
                            1 hour ago
                        </span>

                    </div>

                </div>


                <!-- ACTIVITY 3 -->

                <div class="activity-item">

                    <div class="activity-icon">

                        <i class="bi bi-person-check"></i>

                    </div>

                    <div class="activity-text">

                        User registered successfully

                        <span class="activity-time">
                            3 hours ago
                        </span>

                    </div>

                </div>


            </div>

        </div>


    </div>


</asp:Content>