<%@ Page Title="Edit Job"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="EditJob.aspx.cs"
    Inherits="Job_Portal.Employee.EditJob" %>


<asp:Content
    ID="Content3"
    ContentPlaceHolderID="head"
    runat="server">

    <link
        rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/postnewjob.css") %>" />

</asp:Content>


<asp:Content
    ID="Content4"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="post-job-page">


        <!-- Back Button -->

        <a href="MyJob.aspx"
           class="back-button">

            ← Back

        </a>



        <!-- Page Header -->

        <h1 class="post-job-title">

            Edit Job

        </h1>



        <!-- Main Form Card -->

        <div class="post-job-card">


            <!-- =========================================
                 JOB TITLE
            ========================================== -->

            <div class="job-form-group">

                <asp:Label
                    ID="lblJobTitle"
                    runat="server"
                    Text="Job Title"
                    CssClass="field-label">
                </asp:Label>


                <asp:TextBox
                    ID="txtJobTitle"
                    runat="server"
                    CssClass="job-input"
                    Text="Senior React Developer">
                </asp:TextBox>

            </div>



            <!-- =========================================
                 CATEGORY + JOB TYPE
            ========================================== -->

            <div class="job-row">


                <!-- Job Category -->

                <div class="job-form-group">

                    <asp:Label
                        ID="lblCategory"
                        runat="server"
                        Text="Job Category"
                        CssClass="field-label">
                    </asp:Label>


                    <asp:DropDownList
                        ID="ddlCategory"
                        runat="server"
                        CssClass="job-select">

                        <asp:ListItem
                            Text="IT &amp; Software"
                            Value="IT &amp; Software"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Design"
                            Value="Design">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Marketing"
                            Value="Marketing">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Finance"
                            Value="Finance">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Human Resources"
                            Value="Human Resources">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>



                <!-- Job Type -->

                <div class="job-form-group">

                    <asp:Label
                        ID="lblJobType"
                        runat="server"
                        Text="Job Type"
                        CssClass="field-label">
                    </asp:Label>


                    <asp:DropDownList
                        ID="ddlJobType"
                        runat="server"
                        CssClass="job-select">

                        <asp:ListItem
                            Text="Full Time"
                            Value="Full Time"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Part Time"
                            Value="Part Time">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Contract"
                            Value="Contract">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Internship"
                            Value="Internship">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>

            </div>



            <!-- =========================================
                 WORK MODE
            ========================================== -->

            <div class="work-mode-group">

                <span class="field-label">
                    Work Mode
                </span>


                <div class="work-mode-buttons">


                    <!-- On-site -->

                    <asp:RadioButton
                        ID="rbOnsite"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio"
                        Checked="true" />


                    <label
                        for="<%= rbOnsite.ClientID %>"
                        class="work-mode-label">

                        On-site

                    </label>



                    <!-- Hybrid -->

                    <asp:RadioButton
                        ID="rbHybrid"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio" />


                    <label
                        for="<%= rbHybrid.ClientID %>"
                        class="work-mode-label">

                        Hybrid

                    </label>



                    <!-- Remote -->

                    <asp:RadioButton
                        ID="rbRemote"
                        runat="server"
                        GroupName="WorkMode"
                        CssClass="work-mode-radio" />


                    <label
                        for="<%= rbRemote.ClientID %>"
                        class="work-mode-label">

                        Remote

                    </label>

                </div>

            </div>



            <!-- =========================================
                 ANNUAL SALARY
            ========================================== -->

            <div class="job-form-group">

                <span class="field-label">

                    Annual Salary Range (INR)

                </span>


                <div class="job-row">


                    <!-- Minimum Salary -->

                    <div class="salary-box">

                        <span class="salary-prefix">

                            Min (₹)

                        </span>


                        <asp:TextBox
                            ID="txtMinSalary"
                            runat="server"
                            CssClass="job-input salary-input"
                            Text="8,00,000">
                        </asp:TextBox>

                    </div>



                    <!-- Maximum Salary -->

                    <div class="salary-box">

                        <span class="salary-prefix">

                            Max (₹)

                        </span>


                        <asp:TextBox
                            ID="txtMaxSalary"
                            runat="server"
                            CssClass="job-input salary-input"
                            Text="15,00,000">
                        </asp:TextBox>

                    </div>

                </div>

            </div>



            <!-- =========================================
                 JOB DESCRIPTION
            ========================================== -->

            <div class="job-form-group">

                <asp:Label
                    ID="lblDescription"
                    runat="server"
                    Text="Job Description"
                    CssClass="field-label">
                </asp:Label>


                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    TextMode="MultiLine"
                    CssClass="job-textarea"
                    Text="We are looking for a Senior React Developer to join our team at TCS. You will design, build and optimize modular user interfaces using React, TypeScript, and Tailwind CSS.">
                </asp:TextBox>

            </div>



            <!-- =========================================
                 REQUIRED SKILLS
            ========================================== -->

            <div class="job-form-group">

                <span class="field-label">

                    Required Skills

                </span>


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
                        Tailwind CSS
                    </span>

                </div>

            </div>



            <!-- =========================================
                 BUTTONS
            ========================================== -->
<div class="edit-job-buttons">

    <button
        type="button"
        class="publish-button"
        onclick="window.location.href='MyJob.aspx';">

        Update Job

    </button>



                <!-- Cancel Button -->

                <a
                    href="MyJob.aspx"
                    class="back-button">

                    Cancel

                </a>


            </div>


        </div>

    </div>


</asp:Content>

