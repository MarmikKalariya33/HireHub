<%@ Page Title="Company Profile"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Company_Profile.aspx.cs"
    Inherits="Job_Portal.Employee.Company_Profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/company_profile.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="company-profile-page">

        <!-- PAGE TITLE -->
        <h1 class="company-page-title">
            Company Profile
        </h1>


        <!-- COMPANY CARD -->
        <div class="company-card">

            <!-- COMPANY HEADER -->
            <div class="company-header">

                <div class="company-logo">
                    TCS
                </div>


                <div class="company-heading">

                    <h2>
                        Tata Consultancy Services
                    </h2>

                    <p>
                        IT Consulting &amp; Enterprise Solutions
                    </p>

                </div>


                <a href="Edit_Company_Profile.aspx"
                   class="edit-profile-button">
                    Edit Profile
                </a>

            </div>


            <!-- DIVIDER -->
            <div class="company-divider"></div>


            <!-- COMPANY INFORMATION -->
            <div class="company-information">

                <div class="company-info-item">

                    <span class="info-label">
                        Industry
                    </span>

                    <span class="info-value">
                        IT &amp; Software
                    </span>

                </div>


                <div class="company-info-item">

                    <span class="info-label">
                        Company Size
                    </span>

                    <span class="info-value">
                        500,000+ Employees
                    </span>

                </div>


                <div class="company-info-item">

                    <span class="info-label">
                        Founded
                    </span>

                    <span class="info-value">
                        1968
                    </span>

                </div>


                <div class="company-info-item">

                    <span class="info-label">
                        Website
                    </span>

                    <a href="https://www.tcs.com"
                       target="_blank"
                       class="website-link">
                        www.tcs.com
                    </a>

                </div>


                <div class="company-info-item">

                    <span class="info-label">
                        Headquarters
                    </span>

                    <span class="info-value">
                        Mumbai, India
                    </span>

                </div>

            </div>


            <!-- DIVIDER -->
            <div class="company-divider"></div>


            <!-- ABOUT COMPANY -->
            <div class="about-company">

                <h2>
                    About Tata Consultancy Services
                </h2>

                <p>
                    Tata Consultancy Services is an IT services, consulting and business
                    solutions organization that has been partnering with many of the world's
                    largest solutions organization that has been partnering with many of the world's
                    largest businesses in their transformation journeys for over 50 years.
                    TCS offers a consulting-led, cognitive powered, integrated portfolio of
                    business, technology and engineering services and solutions. This is
                    </p>
                </div>
            </div>
        </div>
    </asp:Content>
                    
                
    