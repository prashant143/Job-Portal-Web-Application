<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin.aspx.cs" Inherits="admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <h1 style="text-align:left; font-size:x-large;">&nbsp;&nbsp; MY Account</h1><hr />
    <table style="width: 100%; text-align:left;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image13" runat="server" ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="admin_profile.aspx">My Profile</a></td>
            <td>
                &nbsp; 
                <asp:Image ID="Image8" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_country.aspx">Add Country</a></td>
            
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="jobseeker_report.aspx">Jobseeker Report</a></td>
            <td>
                &nbsp;<asp:Image ID="Image9" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_state.aspx">Add State</a>
               </td>
            
        </tr>
     
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image5" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="Postjob_report.aspx">Job Posting Report</a></td>
            <td> &nbsp;<asp:Image ID="Image10" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_city.aspx">Add City</a>
                </td>
            
        </tr>

        <tr>
            <td>
                &nbsp; <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="company_report.aspx">Company Report</a>
               </td>
            <td> &nbsp; <asp:Image ID="Image12" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_category.aspx">Add Category</a>
               </td>
            
        </tr>
     <tr>
            <td>
                &nbsp; <asp:Image ID="Image3" runat="server" ImageUrl="~/images/saved_listings_ico.png" />
                &nbsp;<a href="job_apply_report.aspx">Job Apply Report</a>
               </td>
            <td> &nbsp; <asp:Image ID="Image7" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_admin.aspx">Add Admin</a>
                </td>
            
        </tr>
        <tr>
            <td>
                &nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="feedback_report.aspx">FeedBack Report</a>
               </td>
            <td>
               &nbsp;<asp:Image ID="Image16" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_company.aspx">Add Company</a>
                </td>
            
        </tr>
        <tr>
            <td>
                &nbsp; <asp:Image ID="Image11" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="admin_show.aspx">Show Admin Record</a></td>
            <td> &nbsp;<asp:Image ID="Image14" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="addque.aspx">Add Question</a></td>
            
        </tr>
         <tr>
            <td>&nbsp;<asp:Image ID="Image6" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="save_candidate_report.aspx">Save Candidates Report</a>
             </td>
            <td> 
 &nbsp;
<asp:Image ID="Image15" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="adminview.aspx">View</a></td>
            
        </tr>
         <tr>
            <td>&nbsp;<asp:Image ID="Image17" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="adminslider.aspx">Upload Slider Image</a>
             </td>
            <td>&nbsp;<asp:Image ID="Image18" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="send_mail.aspx">Send Mail</a> </td>
            
        </tr>
    </table>

</asp:Content>

