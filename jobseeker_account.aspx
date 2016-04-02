<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="jobseeker_account.aspx.cs" Inherits="jobseeker_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
 <div class="article">   <h1 style="text-align:left; color:White;">MY Account</h1></div>
    <table style="width: 70%; text-align:left;">
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/myprofile_ico.png" />
&nbsp;<a href="view_personal_info.aspx"> my Profile</a></td>
            <td>
                &nbsp;
                <asp:Image ID="Image2" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="view_apply_job.aspx">&nbsp; My Apply Jobs</a></td>
            
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;<a href="add_certificate.aspx"> Add Certificate</a></td>
            <td>
                &nbsp;
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;
&nbsp;<a href="post_resume.aspx">Post Resume</a></td>
            
        </tr>
     
        <tr>
            
            <td>
                &nbsp;
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;<a href="advance_job_search.aspx">Advance Job Search</a></td>
<td></td>
        </tr>
     
     
    </table>
  

</asp:Content>

