<%@ Page Title="Saved Jobs"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Saved_Jobs.aspx.cs"
    Inherits="Job_Portal.Users.Saved_Jobs" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Userscss/saved_jobs.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="saved-jobs-page">


        <!-- PAGE TITLE -->

        <div class="saved-jobs-header">

            <h1>
                Saved Jobs
            </h1>

        </div>


        <!-- SAVED JOBS -->

        <div class="saved-jobs-list">


            <!-- SENIOR REACT DEVELOPER -->

            <div class="saved-job-card">

                <div class="company-logo">
                    TCS
                </div>


                <div class="job-information">

                    <h2>
                        Senior React Developer
                    </h2>

                    <p>
                        TCS
                        <span>•</span>
                        Mumbai
                    </p>

                </div>


                <div class="job-details">

                    <strong>
                        ₹12-18 LPA
                    </strong>

                    <span>
                        Posted
                    </span>

                    <span>
                        Saved Jan 20, 2024
                    </span>

                </div>


                <div class="job-action">

                    <a href="Job_Details.aspx"
                       class="view-job-btn">

                        View Job

                    </a>

                </div>

            </div>



            <!-- PRODUCT MANAGER -->

            <div class="saved-job-card">

                <div class="company-logo">
                    INF
                </div>


                <div class="job-information">

                    <h2>
                        Product Manager
                    </h2>

                    <p>
                        Infosys
                        <span>•</span>
                        Bangalore
                    </p>

                </div>


                <div class="job-details">

                    <strong>
                        ₹15-22 LPA
                    </strong>

                    <span>
                        Posted
                    </span>

                    <span>
                        Saved Jan 18, 2024
                    </span>

                </div>


                <div class="job-action">

                    <a href="Job_Details.aspx"
                       class="view-job-btn">

                        View Job

                    </a>

                </div>

            </div>



            <!-- FULL STACK DEVELOPER -->

            <div class="saved-job-card">

                <div class="company-logo">
                    WIP
                </div>


                <div class="job-information">

                    <h2>
                        Full Stack Developer
                    </h2>

                    <p>
                        Wipro
                        <span>•</span>
                        Pune
                    </p>

                </div>


                <div class="job-details">

                    <strong>
                        ₹10-15 LPA
                    </strong>

                    <span>
                        Posted
                    </span>

                    <span>
                        Saved Jan 15, 2024
                    </span>

                </div>


                <div class="job-action">

                    <a href="Job_Details.aspx"
                       class="view-job-btn">

                        View Job

                    </a>

                </div>

            </div>


        </div>


        <!-- VIEW ALL -->

        <div class="view-all-saved">

            <a href="Find_Jobs.aspx">

                View All Saved Jobs →

            </a>

        </div>


    </div>

</asp:Content>