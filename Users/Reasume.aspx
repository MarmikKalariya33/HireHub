
<%@ Page Title="My Resume"
    Language="C#"
    MasterPageFile="~/Users/users.Master"
    AutoEventWireup="true"
    CodeBehind="Reasume.aspx.cs"
    Inherits="Job_Portal.Users.Resume" %>


<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">

    <link href="<%= ResolveUrl("~/Assets/Userscss/reasume.css") %>"
      rel="stylesheet"
      type="text/css" />

</asp:Content>


<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="resume-page">


        <!-- =================================================
             PAGE HEADER
        ================================================== -->

        <div class="page-header">

            <h1>My Resume</h1>

        </div>



        <!-- =================================================
             CURRENT RESUME
        ================================================== -->

        <div class="resume-card">

            <div class="resume-file-info">


                <!-- FILE ICON -->

                <div class="file-icon">

                    <i class="bi bi-file-earmark-text"></i>

                </div>



                <!-- FILE DETAILS -->

                <div class="file-details">

                    <h3>
                        Rahul_Sharma_Resume.pdf
                    </h3>

                    <p>
                        Uploaded 2 weeks ago
                        <span>•</span>
                        1.2 MB
                    </p>

                </div>



                <!-- RIGHT SIDE -->

                <div class="resume-file-action">

                    <button
                        type="button"
                        class="resume-icon-button"
                        title="Resume">

                        <i class="bi bi-file-earmark-pdf"></i>

                    </button>

                </div>


            </div>

        </div>



        <!-- =================================================
             UPLOAD NEW RESUME
        ================================================== -->

        <div class="upload-resume-card">


            <!-- UPLOAD ICON -->

            <div class="upload-icon">

                <i class="bi bi-cloud-arrow-up"></i>

            </div>



            <!-- TITLE -->

            <h2>
                Upload New Resume
            </h2>



            <!-- DESCRIPTION -->

            <p class="upload-description">

                Drag and drop your resume file here,
                or click to browse

            </p>
            <p class="upload-description">

                <asp:RequiredFieldValidator
                    ID="rfvResume"
                    runat="server"
                    ControlToValidate="fuResume"
                    ErrorMessage="Please choose your resume."
                    Display="Dynamic"
                    CssClass="validation-error" ForeColor="Red"></asp:RequiredFieldValidator>



                <asp:RegularExpressionValidator
                    ID="revResume"
                    runat="server"
                    ControlToValidate="fuResume"
                    ValidationExpression="^.*\.(pdf|doc|docx)$"
                    ErrorMessage="Only PDF, DOC and DOCX files are allowed."
                    Display="Dynamic"
                    CssClass="validation-error" ForeColor="Red"></asp:RegularExpressionValidator>



            </p>



            <!-- =================================================
                 BUTTONS
            ================================================== -->

            <div class="resume-upload-area">


                <!-- ASP.NET FILE UPLOAD -->

                <asp:FileUpload
                    ID="fuResume"
                    runat="server"
                    CssClass="resume-file-input"
                    accept=".pdf,.doc,.docx" />



                <!-- CHOOSE FILE BUTTON -->

                <label
                    for="<%= fuResume.ClientID %>"
                    class="choose-file-button">

                    <i class="bi bi-folder2-open"></i>

                    Choose File

                </label>



                <!-- REQUIRED VALIDATION -->



                <!-- FILE TYPE VALIDATION -->



                <!-- SUBMIT RESUME BUTTON -->

                <button
                    type="submit"
                    class="submit-resume-button">

                    Submit Resume

                </button>


            </div>



            <!-- =================================================
                 SELECTED FILE
            ================================================== -->

            <div
                id="selectedFileName"
                class="selected-file-name">

            </div>



            <!-- =================================================
                 SUPPORTED FORMAT
            ================================================== -->

            <p class="supported-format">

                Supported formats: PDF, DOC, DOCX (Max 5MB)

            </p>


        </div>


    </div>


</asp:Content>
