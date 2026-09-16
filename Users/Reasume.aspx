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



            <!-- =================================================
                 BUTTONS
            ================================================== -->

            <div class="resume-upload-area">


                <!-- ASP.NET FILE UPLOAD -->

                <asp:FileUpload
                    ID="fuResume"
                    runat="server"
                    CssClass="resume-file-input"
                    accept=".pdf,.doc,.docx"
                    onchange="showSelectedFile(this);" />



                <!-- CHOOSE FILE BUTTON -->

                <label
                    for="<%= fuResume.ClientID %>"
                    class="choose-file-button">

                    <i class="bi bi-folder2-open"></i>

                    Choose File

                </label>



                <!-- SUBMIT RESUME BUTTON -->

                <asp:Button
                    ID="btnSubmitResume"
                    runat="server"
                    Text="Submit Resume"
                    CssClass="submit-resume-button"
                    OnClientClick="return validateResume();" />


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



    <!-- =====================================================
         JAVASCRIPT
    ===================================================== -->

    <script type="text/javascript">

        function showSelectedFile(input) {

            var fileNameBox =
                document.getElementById("selectedFileName");


            if (input.files && input.files.length > 0) {

                var file = input.files[0];

                var fileName = file.name;

                var fileSize =
                    file.size / (1024 * 1024);



                /* FILE SIZE CHECK */

                if (fileSize > 5) {

                    alert(
                        "Resume file size must be less than 5 MB."
                    );

                    input.value = "";

                    fileNameBox.innerHTML = "";

                    return;
                }



                /* FILE EXTENSION CHECK */

                var allowedExtensions =
                    /(\.pdf|\.doc|\.docx)$/i;


                if (!allowedExtensions.exec(fileName)) {

                    alert(
                        "Only PDF, DOC and DOCX files are allowed."
                    );

                    input.value = "";

                    fileNameBox.innerHTML = "";

                    return;
                }



                /* SHOW FILE NAME */

                fileNameBox.innerHTML =
                    '<i class="bi bi-file-earmark-text"></i> '
                    + fileName;

            }

            else {

                fileNameBox.innerHTML = "";

            }

        }



        /* =================================================
           SUBMIT VALIDATION
        ================================================== */

        function validateResume() {

            var fileInput =
                document.getElementById(
                    "<%= fuResume.ClientID %>"
                );


            /* CHECK FILE */

            if (
                !fileInput.files ||
                fileInput.files.length === 0
            ) {

                alert("Please choose your resume first.");

                return false;

            }



            var file =
                fileInput.files[0];

            var fileName =
                file.name;

            var fileSize =
                file.size / (1024 * 1024);



            /* CHECK SIZE */

            if (fileSize > 5) {

                alert(
                    "Resume file size must be less than 5 MB."
                );

                return false;

            }



            /* CHECK EXTENSION */

            var allowedExtensions =
                /(\.pdf|\.doc|\.docx)$/i;


            if (!allowedExtensions.exec(fileName)) {

                alert(
                    "Only PDF, DOC and DOCX files are allowed."
                );

                return false;

            }



            return true;

        }

    </script>


</asp:Content>