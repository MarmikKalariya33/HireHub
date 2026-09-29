<%@ Page Title="Candidate Details"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Candidate_Details.aspx.cs"
    Inherits="Job_Portal.Employee.Candidate_Details" %>


<asp:Content ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/candidate_details.css") %>" />

</asp:Content>


<asp:Content ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="candidate-details-page">

        <!-- BACK -->
        <a href="Candidates.aspx"
           class="back-link">
            ← Back to Candidates
        </a>


        <!-- MAIN CARD -->
        <div class="candidate-details-card">


            <!-- CANDIDATE HEADER -->
            <div class="candidate-header">

                <div class="candidate-avatar">
                    RS
                </div>

                <div class="candidate-heading">

                    <h1>
                        Rahul Sharma
                    </h1>

                    <p>
                        Senior React Developer
                    </p>

                    <span class="candidate-status">
                        Available
                    </span>

                </div>

            </div>


            <div class="section-divider"></div>


            <!-- PERSONAL INFORMATION -->
            <div class="details-section">

                <h2>
                    Personal Information
                </h2>

                <div class="details-grid">

                    <div class="detail-item">

                        <span class="detail-label">
                            Full Name
                        </span>

                        <span class="detail-value">
                            Rahul Sharma
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Email
                        </span>

                        <span class="detail-value">
                            rahul.sharma@gmail.com
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Phone
                        </span>

                        <span class="detail-value">
                            +91 98765 43210
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Location
                        </span>

                        <span class="detail-value">
                            Ahmedabad, Gujarat
                        </span>

                    </div>

                </div>

            </div>


            <div class="section-divider"></div>


            <!-- PROFESSIONAL INFORMATION -->
            <div class="details-section">

                <h2>
                    Professional Information
                </h2>

                <div class="details-grid">

                    <div class="detail-item">

                        <span class="detail-label">
                            Applied Position
                        </span>

                        <span class="detail-value">
                            Senior React Developer
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Experience
                        </span>

                        <span class="detail-value">
                            4 Years
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Current Role
                        </span>

                        <span class="detail-value">
                            React Developer
                        </span>

                    </div>


                    <div class="detail-item">

                        <span class="detail-label">
                            Expected Salary
                        </span>

                        <span class="detail-value">
                            ₹12,00,000
                        </span>

                    </div>

                </div>

            </div>


            <div class="section-divider"></div>


            <!-- SKILLS -->
            <div class="details-section">

                <h2>
                    Skills
                </h2>

                <div class="skills-container">

                    <span class="skill-tag">
                        React
                    </span>

                    <span class="skill-tag">
                        JavaScript
                    </span>

                    <span class="skill-tag">
                        TypeScript
                    </span>

                    <span class="skill-tag">
                        Redux
                    </span>

                    <span class="skill-tag">
                        HTML
                    </span>

                    <span class="skill-tag">
                        CSS
                    </span>

                    <span class="skill-tag">
                        Tailwind CSS
                    </span>

                </div>

            </div>


            <div class="section-divider"></div>


            <!-- RESUME -->
            <div class="details-section">

                <h2>
                    Resume
                </h2>

                <div class="resume-box">

                    <div class="resume-left">

                        <div class="resume-icon">
                            <i class="bi bi-file-earmark-text"></i>
                        </div>

                        <div class="resume-info">

                            <span class="resume-name">
                                Rahul_Sharma_Resume.pdf
                            </span>

                            <span class="resume-size">
                                1.2 MB
                            </span>

                        </div>

                    </div>


                    <a href="#"
                       class="download-button">
                        Download
                    </a>

                </div>

            </div>


            <div class="section-divider"></div>


            <!-- ACTIONS -->
            <div class="candidate-actions">

                <button
                    type="button"
                    class="shortlist-button">
                    Shortlist Candidate
                </button>

                <button
                    type="button"
                    class="reject-button">
                    Reject Candidate
                </button>

            </div>


        </div>

    </div>

</asp:Content>
