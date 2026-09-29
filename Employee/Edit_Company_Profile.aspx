<%@ Page Title="Edit Employer Profile"
    Language="C#"
    MasterPageFile="~/Employee/Employee.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Company_Profile.aspx.cs"
    Inherits="Job_Portal.Employee.Edit_Company_Profile" %>


<asp:Content ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link rel="stylesheet"
        href="<%= ResolveUrl("~/Assets/Employeecss/edit_company_profile.css") %>" />

</asp:Content>


<asp:Content ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <!-- =========================================
         EDIT EMPLOYER PROFILE PAGE
    ========================================= -->

    <div class="edit-company-page">


        <!-- BACK BUTTON -->

        <a href="Company_Profile.aspx"
           class="back-button">
            ← Back to Company Profile
        </a>


        <!-- =========================================
             PAGE HEADER
        ========================================= -->

        <div class="edit-company-header">

            <h1>
                Edit Employer Profile
            </h1>

            <p>
                Update your company details, contact information, and business coordinates.
            </p>

        </div>


        <!-- =========================================
             MAIN FORM CARD
        ========================================= -->

        <div class="edit-company-card">


            <!-- =========================================
                 COMPANY LOGO SECTION
            ========================================= -->

            <div class="company-logo-section">


                <!-- COMPANY LOGO -->

                <div class="edit-company-logo">
                    TCS
                </div>


                <!-- LOGO CONTENT -->

                <div class="logo-content">

                    <h2>
                        Company Logo
                    </h2>


                    <div class="logo-buttons">

                        <button
                            type="button"
                            class="change-logo-button">
                            Change Logo
                        </button>


                        <button
                            type="button"
                            class="remove-logo-button">
                            Remove
                        </button>

                    </div>

                </div>

            </div>


            <!-- =========================================
                 DIVIDER
            ========================================= -->

            <div class="edit-divider"></div>


            <!-- =========================================
                 FORM FIELDS
            ========================================= -->

            <div class="company-form-grid">


                <!-- =====================================
                     COMPANY NAME
                ====================================== -->

                <div class="form-group">

                    <label>
                        Company Name
                    </label>

                    <input
                        type="text"
                        class="form-input"
                        value="Tata Consultancy Services" />

                </div>


                <!-- =====================================
                     CONTACT PERSON
                ====================================== -->

                <div class="form-group">

                    <label>
                        Contact Person
                    </label>

                    <input
                        type="text"
                        class="form-input"
                        value="Priya Patel" />

                </div>


                <!-- =====================================
                     EMAIL ADDRESS
                ====================================== -->

                <div class="form-group">

                    <label>
                        Email Address
                    </label>

                    <input
                        type="email"
                        class="form-input"
                        value="recruitment@tcs.com" />

                </div>


                <!-- =====================================
                     PHONE NUMBER
                ====================================== -->

                <div class="form-group">

                    <label>
                        Phone Number
                    </label>

                    <input
                        type="text"
                        class="form-input"
                        value="+91 22 6778 9999" />

                </div>


                <!-- =====================================
                     WEBSITE
                ====================================== -->

                <div class="form-group">

                    <label>
                        Website
                    </label>

                    <input
                        type="text"
                        class="form-input"
                        value="www.tcs.com" />

                </div>


                <!-- =====================================
                     FOUNDED YEAR
                ====================================== -->

                <div class="form-group">

                    <label>
                        Founded Year
                    </label>

                    <input
                        type="text"
                        class="form-input"
                        value="1968" />

                </div>


                <!-- =====================================
                     INDUSTRY
                ====================================== -->

                <div class="form-group">

                    <label>
                        Industry
                    </label>

                    <div class="select-wrapper">

                        <select class="form-input form-select">

                            <option selected>
                                IT Consulting &amp; Enterprise Solutions
                            </option>

                            <option>
                                Information Technology
                            </option>

                            <option>
                                Software Development
                            </option>

                            <option>
                                Consulting
                            </option>

                            <option>
                                Finance
                            </option>

                            <option>
                                Healthcare
                            </option>

                        </select>

                    </div>

                </div>


                <!-- =====================================
                     COMPANY SIZE
                ====================================== -->

                <div class="form-group">

                    <label>
                        Company Size
                    </label>

                    <div class="select-wrapper">

                        <select class="form-input form-select">

                            <option>
                                1-50 Employees
                            </option>

                            <option>
                                51-200 Employees
                            </option>

                            <option>
                                201-500 Employees
                            </option>

                            <option>
                                501-1000 Employees
                            </option>

                            <option>
                                1000-5000 Employees
                            </option>

                            <option selected>
                                500,000+ Employees
                            </option>

                        </select>

                    </div>

                </div>


            </div>


            <!-- =========================================
                 ABOUT COMPANY
            ========================================= -->

            <div class="form-group full-width">

                <label>
                    About Tata Consultancy Services
                </label>

                <textarea
                    class="form-textarea"
                    rows="4">Tata Consultancy Services is an IT services, consulting and business solutions organization that has been partnering with many</textarea>

            </div>


            <!-- =========================================
                 ADDRESS
            ========================================= -->

            <div class="form-group full-width">

                <label>
                    Address
                </label>

                <input
                    type="text"
                    class="form-input"
                    value="TCS House, Raveline Street, Fort" />

            </div>


            <!-- =========================================
                 FORM ACTIONS
            ========================================= -->

            <div class="form-actions">

                <button
                    type="button"
                    class="save-button">
                    Save Changes
                </button>


                <button
                    type="button"
                    class="cancel-button">
                    Cancel
                </button>

            </div>


        </div>

    </div>

</asp:Content>