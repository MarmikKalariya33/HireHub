<%@ Page Title="Employer Details"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/employer_details.css") %>" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="employer-details-page">


        <!-- =========================================
             BACK BUTTON
        ========================================== -->

        <div class="back-section">

            <a href="<%= ResolveUrl("~/Admin/Employers.aspx") %>"
               class="back-link">

                <span class="back-arrow">←</span>

                <span>Back to Employers</span>

            </a>

        </div>



        <!-- =========================================
             EMPLOYER DETAILS CARD
        ========================================== -->

        <div class="employer-details-card">


            <!-- =========================================
                 COMPANY HEADER
            ========================================== -->

            <div class="company-header">


                <!-- COMPANY LOGO -->

                <div class="company-logo">
                    TCS
                </div>


                <!-- COMPANY INFORMATION -->

                <div class="company-heading">

                    <div class="company-title-row">

                        <h1>
                            Tata Consultancy Services
                        </h1>


                        <span class="active-badge">
                            Active
                        </span>

                    </div>


                    <p>
                        Enterprise Employer
                    </p>

                </div>


            </div>



            <!-- =========================================
                 HEADER DIVIDER
            ========================================== -->

            <div class="details-divider"></div>



            <!-- =========================================
                 COMPANY DETAILS
            ========================================== -->

            <div class="company-details">


                <!-- CONTACT EMAIL -->

                <div class="detail-item">

                    <div class="detail-label">
                        CONTACT EMAIL
                    </div>

                    <div class="detail-value">
                        hr@tcs.com
                    </div>

                </div>



                <!-- CONTACT PHONE -->

                <div class="detail-item">

                    <div class="detail-label">
                        CONTACT PHONE
                    </div>

                    <div class="detail-value">
                        +91 22 6778 9999
                    </div>

                </div>



                <!-- LOCATION -->

                <div class="detail-item">

                    <div class="detail-label">
                        LOCATION
                    </div>

                    <div class="detail-value">
                        Mumbai, India
                    </div>

                </div>



                <!-- INDUSTRY -->

                <div class="detail-item">

                    <div class="detail-label">
                        INDUSTRY
                    </div>

                    <div class="detail-value">
                        IT &amp; Software
                    </div>

                </div>



                <!-- COMPANY SIZE -->

                <div class="detail-item">

                    <div class="detail-label">
                        COMPANY SIZE
                    </div>

                    <div class="detail-value">
                        500,000+ employees
                    </div>

                </div>



                <!-- WEBSITE -->

                <div class="detail-item">

                    <div class="detail-label">
                        WEBSITE
                    </div>

                    <div class="detail-value website-value">

                        <a href="https://www.tcs.com"
                           target="_blank">
                            www.tcs.com
                        </a>

                    </div>

                </div>



                <!-- REGISTRATION DATE -->

                <div class="detail-item">

                    <div class="detail-label">
                        REGISTRATION DATE
                    </div>

                    <div class="detail-value">
                        January 10, 2024
                    </div>

                </div>


            </div>



            <!-- =========================================
                 ABOUT COMPANY DIVIDER
            ========================================== -->

            <div class="about-divider"></div>



            <!-- =========================================
                 ABOUT COMPANY
            ========================================== -->

            <div class="about-company">

                <h2>
                    About Company
                </h2>

                <p>
                    Tata Consultancy Services is a global leader in IT
                    services, consulting, and business solutions. The company
                    provides technology and digital transformation services
                    to organizations across multiple industries worldwide.
                </p>

                <p>
                    TCS helps businesses transform their operations through
                    innovative technology solutions, cloud services,
                    consulting, and digital engineering.
                </p>

            </div>



            <!-- =========================================
                 ACTION SECTION
            ========================================== -->

            <div class="details-actions">

                <a href="<%= ResolveUrl("~/Admin/Employers.aspx") %>"
                   class="back-employers-btn">

                    ← Back to Employers

                </a>

                <button type="button"
                        class="edit-employer-btn">

                    Edit Employer

                </button>

            </div>


        </div>


    </div>


</asp:Content>