<%@ Page Title="My Applications"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Applications.aspx.cs"
    Inherits="Job_Portal.Users.Applications" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Userscss/applications.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="applications-page">


        <!-- TITLE -->

        <div class="applications-header">

            <h1>
                My Applications
            </h1>

        </div>


        <!-- FILTERS -->

        <div class="application-filters">

            <button
                type="button"
                class="application-filter active"
                onclick="filterApplications('all', this)">

                All

            </button>


            <button
                type="button"
                class="application-filter"
                onclick="filterApplications('Applied', this)">

                Applied

            </button>


            <button
                type="button"
                class="application-filter"
                onclick="filterApplications('Interview', this)">

                Interview

            </button>


            <button
                type="button"
                class="application-filter"
                onclick="filterApplications('Shortlisted', this)">

                Shortlisted

            </button>

        </div>


        <!-- APPLICATION LIST -->

        <div id="applicationsList">


            <!-- TCS -->

            <div class="application-card"
                 data-status="Applied">

                <div class="application-company-logo">
                    TCS
                </div>


                <div class="application-information">

                    <h2>
                        Senior React Developer
                    </h2>

                    <p>
                        TCS
                        <span>•</span>
                        Applied Jan 22, 2024
                    </p>

                </div>


                <div class="application-status applied">
                    Applied
                </div>

            </div>


            <!-- INFOSYS -->

            <div class="application-card"
                 data-status="Interview">

                <div class="application-company-logo">
                    INF
                </div>


                <div class="application-information">

                    <h2>
                        UI/UX Designer
                    </h2>

                    <p>
                        Infosys
                        <span>•</span>
                        Applied Jan 25, 2024
                    </p>

                </div>


                <div class="application-status interview">
                    Interview Scheduled
                </div>

            </div>


            <!-- WIPRO -->

            <div class="application-card"
                 data-status="Shortlisted">

                <div class="application-company-logo">
                    WIP
                </div>


                <div class="application-information">

                    <h2>
                        Data Analyst
                    </h2>

                    <p>
                        Wipro
                        <span>•</span>
                        Applied Feb 1, 2024
                    </p>

                </div>


                <div class="application-status shortlisted">
                    Shortlisted
                </div>

            </div>


            <!-- HCL -->

            <div class="application-card"
                 data-status="Applied">

                <div class="application-company-logo">
                    HCL
                </div>


                <div class="application-information">

                    <h2>
                        Backend Developer
                    </h2>

                    <p>
                        HCL
                        <span>•</span>
                        Applied Feb 5, 2024
                    </p>

                </div>


                <div class="application-status applied">
                    Applied
                </div>

            </div>


        </div>


        <!-- VIEW ALL -->

        <div class="view-all-applications">

            <a href="javascript:void(0)"
               onclick="showAllApplications()">

                View All Applications →

            </a>

        </div>


    </div>


    <script>

        function filterApplications(status, button) {

            var cards =
                document.querySelectorAll(".application-card");


            var buttons =
                document.querySelectorAll(".application-filter");


            buttons.forEach(function (btn) {

                btn.classList.remove("active");

            });


            button.classList.add("active");


            cards.forEach(function (card) {

                if (
                    status === "all" ||
                    card.getAttribute("data-status") === status
                ) {

                    card.style.display = "flex";

                }
                else {

                    card.style.display = "none";

                }

            });

        }


        function showAllApplications() {

            var allButton =
                document.querySelector(".application-filter");

            filterApplications(
                "all",
                allButton
            );

        }

    </script>

</asp:Content>