<%@ Page Title="Manage Jobs"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Jobs.aspx.cs"
    Inherits="Job_Portal.Admin.Jobs" %>

<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        type="text/css"
        href="<%= ResolveUrl("~/Assets/Admincss/jobs.css") %>" />

</asp:Content>

<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">

    <div class="jobs-page">

        <div class="jobs-header">

            <h1 class="jobs-title">
                Manage Jobs
            </h1>

            <div class="jobs-actions">

                <div class="job-search">
                    <i class="bi bi-search job-search-icon"></i>

                    <input type="text"
                           id="jobSearch"
                           placeholder="Search jobs..."
                           autocomplete="off" />
                </div>

                <div class="job-filter">
                    <select id="jobTypeFilter">
                        <option value="all">All Types</option>
                        <option value="full time">Full Time</option>
                        <option value="part time">Part Time</option>
                        <option value="remote">Remote</option>
                        <option value="internship">Internship</option>
                        <option value="contract">Contract</option>
                    </select>
                </div>

                <a href="Add_Jobs.aspx" class="add-job-btn">
                    <i class="bi bi-plus-lg"></i>
                    <span>Add New Job</span>
                </a>

            </div>

        </div>

        <div class="jobs-table-wrapper">

            <table class="jobs-table" id="jobsTable">

                <thead>
                    <tr>
                        <th>Job Title</th>
                        <th>Company</th>
                        <th>Job Type</th>
                        <th>Applications</th>
                        <th>Status</th>
                        <th>Actions</th>
                    </tr>
                </thead>

                <tbody>

                    <tr>
                        <td>
                            <span class="job-title-text">
                                Senior React Developer
                            </span>
                        </td>

                        <td>
                            <span class="company-text">
                                TCS
                            </span>
                        </td>

                        <td>
                            <span class="job-type-text">
                                Full Time
                            </span>
                        </td>

                        <td>
                            <a href="#" class="applications-link">
                                24 apps
                            </a>
                        </td>

                        <td>
                            <span class="job-status job-status-active">
                                Active
                            </span>
                        </td>

                        <td>
                            <div class="job-actions">

                                <a href="Edit_jobs.aspx"
                                   class="job-action job-edit"
                                   title="Edit Job">
                                    <i class="bi bi-pencil"></i>
                                </a>

                                <a href="#"
                                   class="job-action job-delete"
                                   title="Delete Job"
                                   onclick="return confirm('Are you sure you want to delete this job?');">
                                    <i class="bi bi-trash3"></i>
                                </a>

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span class="job-title-text">
                                UI/UX Designer
                            </span>
                        </td>

                        <td>
                            <span class="company-text">
                                Infosys
                            </span>
                        </td>

                        <td>
                            <span class="job-type-text">
                                Full Time
                            </span>
                        </td>

                        <td>
                            <a href="#" class="applications-link">
                                18 apps
                            </a>
                        </td>

                        <td>
                            <span class="job-status job-status-active">
                                Active
                            </span>
                        </td>

                        <td>
                            <div class="job-actions">

                                <a href="Edit_Jobs.aspx"
                                   class="job-action job-edit"
                                   title="Edit Job">
                                    <i class="bi bi-pencil"></i>
                                </a>

                                <a href="#"
                                   class="job-action job-delete"
                                   title="Delete Job"
                                   onclick="return confirm('Are you sure you want to delete this job?');">
                                    <i class="bi bi-trash3"></i>
                                </a>

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span class="job-title-text">
                                Data Analyst
                            </span>
                        </td>

                        <td>
                            <span class="company-text">
                                Wipro
                            </span>
                        </td>

                        <td>
                            <span class="job-type-text">
                                Part Time
                            </span>
                        </td>

                        <td>
                            <a href="#" class="applications-link">
                                12 apps
                            </a>
                        </td>

                        <td>
                            <span class="job-status job-status-inactive">
                                Inactive
                            </span>
                        </td>

                        <td>
                            <div class="job-actions">

                                <a href="Edit_Jobs.aspx"
                                   class="job-action job-edit"
                                   title="Edit Job">
                                    <i class="bi bi-pencil"></i>
                                </a>

                                <a href="#"
                                   class="job-action job-delete"
                                   title="Delete Job"
                                   onclick="return confirm('Are you sure you want to delete this job?');">
                                    <i class="bi bi-trash3"></i>
                                </a>

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span class="job-title-text">
                                Backend Developer
                            </span>
                        </td>

                        <td>
                            <span class="company-text">
                                HCL
                            </span>
                        </td>

                        <td>
                            <span class="job-type-text">
                                Remote
                            </span>
                        </td>

                        <td>
                            <a href="#" class="applications-link">
                                31 apps
                            </a>
                        </td>

                        <td>
                            <span class="job-status job-status-active">
                                Active
                            </span>
                        </td>

                        <td>
                            <div class="job-actions">

                                <a href="Edit_Jobs.aspx"
                                   class="job-action job-edit"
                                   title="Edit Job">
                                    <i class="bi bi-pencil"></i>
                                </a>

                                <a href="#"
                                   class="job-action job-delete"
                                   title="Delete Job"
                                   onclick="return confirm('Are you sure you want to delete this job?');">
                                    <i class="bi bi-trash3"></i>
                                </a>

                            </div>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            <span class="job-title-text">
                                Marketing Manager
                            </span>
                        </td>

                        <td>
                            <span class="company-text">
                                Tech Mahindra
                            </span>
                        </td>

                        <td>
                            <span class="job-type-text">
                                Full Time
                            </span>
                        </td>

                        <td>
                            <a href="#" class="applications-link">
                                8 apps
                            </a>
                        </td>

                        <td>
                            <span class="job-status job-status-active">
                                Active
                            </span>
                        </td>

                        <td>
                            <div class="job-actions">

                                <a href="Edit_Jobs.aspx"
                                   class="job-action job-edit"
                                   title="Edit Job">
                                    <i class="bi bi-pencil"></i>
                                </a>

                                <a href="#"
                                   class="job-action job-delete"
                                   title="Delete Job"
                                   onclick="return confirm('Are you sure you want to delete this job?');">
                                    <i class="bi bi-trash3"></i>
                                </a>

                            </div>
                        </td>
                    </tr>

                </tbody>

            </table>

        </div>

    </div>   

</asp:Content>