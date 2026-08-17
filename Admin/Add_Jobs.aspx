<%@ Page Title="Add New Job"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Add_Jobs.aspx.cs"
    Inherits="Job_Portal.Admin.Add_Jobs" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/css/add_jobs.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="add-job-page">

        <a href="Jobs.aspx" class="back-link">
            <i class="bi bi-arrow-left"></i>
            <span>Back to Jobs</span>
        </a>

       <a href="Add_Jobs.aspx" class="add-job-button">
            <i class="bi bi-plus-lg"></i>
            Add New Job
        </a>

        <div class="job-form-card">

            <div class="form-grid">

                <div class="form-group">

                    <label>
                        Job Title <span>*</span>
                    </label>

                    <input type="text"
                           placeholder="e.g. Lead React Developer" />

                </div>

                <div class="form-group">

                    <label>
                        Company <span>*</span>
                    </label>

                    <select>
                        <option>Select company</option>
                        <option>TCS</option>
                        <option>Infosys</option>
                        <option>Wipro</option>
                        <option>HCL</option>
                        <option>Tech Mahindra</option>
                    </select>

                </div>

                <div class="form-group">

                    <label>
                        Category <span>*</span>
                    </label>

                    <select>
                        <option>Select category</option>
                        <option>Software Development</option>
                        <option>Design</option>
                        <option>Data Science</option>
                        <option>Marketing</option>
                        <option>Finance</option>
                    </select>

                </div>

                <div class="form-group">

                    <label>
                        Job Type <span>*</span>
                    </label>

                    <select>
                        <option>Full Time</option>
                        <option>Part Time</option>
                        <option>Remote</option>
                        <option>Contract</option>
                        <option>Internship</option>
                    </select>

                </div>

                <div class="form-group">

                    <label>
                        Location <span>*</span>
                    </label>

                    <input type="text"
                           placeholder="e.g. Remote, Mumbai" />

                </div>

                <div class="form-group">

                    <label>
                        Salary Range
                    </label>

                    <input type="text"
                           placeholder="e.g. ₹15,00,000 - ₹25,00,000" />

                </div>

                <div class="form-group">

                    <label>
                        Experience Required
                    </label>

                    <input type="text"
                           placeholder="e.g. 5+ years" />

                </div>

                <div class="form-group">

                    <label>
                        Application Deadline
                    </label>

                    <input type="text"
                           placeholder="YYYY-MM-DD" />

                </div>

                <div class="form-group full-width">

                    <label>
                        Job Description <span>*</span>
                    </label>

                    <textarea
                        placeholder="Describe the roles, day-to-day duties, and team context..."></textarea>

                </div>

                <div class="form-group full-width">

                    <label>
                        Requirements <span>*</span>
                    </label>

                    <textarea
                        placeholder="List technical stack requirements, certifications, soft skills..."></textarea>

                </div>

            </div>

            <div class="form-divider"></div>

            <div class="form-buttons">

                <a href="Jobs.aspx"
                   class="cancel-button">
                    Cancel
                </a>

                <a href="#"
                   class="create-button">
                    Create Job
                </a>

            </div>

        </div>

    </div>

</asp:Content>