<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="employer_account.aspx.cs" Inherits="employer_account" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

 <div class="article"><h1 style="text-align:left; color:White;">MY Account</h1></div>
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
                <asp:Image ID="Image1" runat="server" ImageUrl="~/images/myprofile_ico.png" />
&nbsp;&nbsp;&nbsp;<a href="view_company_detail.aspx"> my Profile</a></td>
            <td>
                &nbsp;
                <asp:Image ID="Image2" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;&nbsp;&nbsp;<a href="view_applied_job_company.aspx"> View Job Applied</a></td>
            
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image4" runat="server" 
                    ImageUrl="~/images/saved_listings_ico.png" />
&nbsp;&nbsp;&nbsp;<a href="save candidate.aspx"> Saved Candidates</a></td>
            <td>
                &nbsp;
                <asp:Image ID="Image3" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;&nbsp;
&nbsp;<a href="view_post_job.aspx">view Post Jobs</a></td>
            
        </tr>
     <tr>
            <td>
                &nbsp;
                <asp:Image ID="Image6" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;&nbsp;
&nbsp;<a href="postjob.aspx">Post Jobs</a></td>
         <td>
         
                &nbsp;
                <asp:Image ID="Image5" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;&nbsp;
&nbsp;<a href="view_save_candidate_company.aspx">View Save Candidates</a>
         </td>   
        </tr>
     <tr>
            <td>
                &nbsp;<asp:Image ID="Image7" runat="server" ImageUrl="~/images/myresumes_ico.png" />
&nbsp;&nbsp;
&nbsp;<a href="search_candidate.aspx">Search Candidates</a></td>
         <td>
         
                &nbsp;</td>   
        </tr>
    </table>
  
</asp:Content>

