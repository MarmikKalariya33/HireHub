<%@ Page Title="Edit Employer"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Edit_Employers.aspx.cs"
    Inherits="Job_Portal.Admin.Edit_Employers" %>




<asp:Content
    ID="Content1"
    ContentPlaceHolderID="head"
    runat="server">
</asp:Content>




<asp:Content
    ID="Content2"
    ContentPlaceHolderID="ContentPlaceHolder1"
    runat="server">


    <div class="employer-page">


        <div class="back-wrapper">

            <a href="Employers.aspx"
               class="back-link">

                <span class="back-arrow">←</span>

                Back to Employers

            </a>

        </div>


        
        <div class="employer-card">


            

            <div class="company-header">


                <!-- COMPANY LOGO -->

                <div class="company-logo">

                    TCS

                </div>


                <!-- COMPANY INFORMATION -->

                <div class="company-title-area">

                    <div class="company-name-row">

                        <h1>
                            Tata Consultancy Services
                        </h1>

                        <span class="status-badge status-active">
                            Active
                        </span>

                    </div>


                    <p class="company-type">
                        Enterprise Employer
                    </p>

                </div>


            </div>



            <div class="divider"></div>


            

            <div class="edit-form">


                <!-- COMPANY NAME -->

                <div class="form-group">

                    <label>
                        Company Name
                    </label>

                    <asp:TextBox
                        ID="txtCompanyName"
                        runat="server"
                        CssClass="form-control"
                        Text="Tata Consultancy Services">
                    </asp:TextBox>

                </div>


                <!-- COMPANY TYPE -->

                <div class="form-group">

                    <label>
                        Company Type
                    </label>

                    <asp:TextBox
                        ID="txtCompanyType"
                        runat="server"
                        CssClass="form-control"
                        Text="Enterprise Employer">
                    </asp:TextBox>

                </div>


                <!-- CONTACT EMAIL -->

                <div class="form-group">

                    <label>
                        Contact Email
                    </label>

                    <asp:TextBox
                        ID="txtContactEmail"
                        runat="server"
                        CssClass="form-control"
                        Text="hr@tcs.com">
                    </asp:TextBox>

                </div>


                <!-- CONTACT PHONE -->

                <div class="form-group">

                    <label>
                        Contact Phone
                    </label>

                    <asp:TextBox
                        ID="txtContactPhone"
                        runat="server"
                        CssClass="form-control"
                        Text="+91 22 6778 9999">
                    </asp:TextBox>

                </div>


                <!-- LOCATION -->

                <div class="form-group">

                    <label>
                        Location
                    </label>

                    <asp:TextBox
                        ID="txtLocation"
                        runat="server"
                        CssClass="form-control"
                        Text="Mumbai, India">
                    </asp:TextBox>

                </div>


                <!-- INDUSTRY -->

                <div class="form-group">

                    <label>
                        Industry
                    </label>

                    <asp:TextBox
                        ID="txtIndustry"
                        runat="server"
                        CssClass="form-control"
                        Text="IT &amp; Software">
                    </asp:TextBox>

                </div>


                <!-- COMPANY SIZE -->

                <div class="form-group">

                    <label>
                        Company Size
                    </label>

                    <asp:TextBox
                        ID="txtCompanySize"
                        runat="server"
                        CssClass="form-control"
                        Text="500,000+ employees">
                    </asp:TextBox>

                </div>


                <!-- WEBSITE -->

                <div class="form-group">

                    <label>
                        Website
                    </label>

                    <asp:TextBox
                        ID="txtWebsite"
                        runat="server"
                        CssClass="form-control"
                        Text="https://www.tcs.com/">
                    </asp:TextBox>

                </div>


                <!-- REGISTRATION DATE -->

                <div class="form-group">

                    <label>
                        Registration Date
                    </label>

                    <asp:TextBox
                        ID="txtRegistrationDate"
                        runat="server"
                        CssClass="form-control"
                        Text="2024-01-10">
                    </asp:TextBox>

                </div>


                <!-- STATUS -->

                <div class="form-group">

                    <label>
                        Status
                    </label>

                    <asp:DropDownList
                        ID="ddlStatus"
                        runat="server"
                        CssClass="form-select">

                        <asp:ListItem
                            Text="Active"
                            Value="Active"
                            Selected="True">
                        </asp:ListItem>

                        <asp:ListItem
                            Text="Inactive"
                            Value="Inactive">
                        </asp:ListItem>

                    </asp:DropDownList>

                </div>


                <!-- ABOUT COMPANY -->

                <div class="form-group full-width">

                    <label>
                        About Company
                    </label>

                    <asp:TextBox
                        ID="txtAboutCompany"
                        runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        Rows="6"/>
                    </asp:Content>