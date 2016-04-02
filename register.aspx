<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table width="100%">
        <tr>
           <td colspan="2"> <div class="article"><h1 style="text-align:left; color:White;"> Registration</h1></div></td>
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
        </tr>
        <tr>
            <td colspan="2"><h3 id="colour">Plz, select the appropriate user group...<br /><br /></h3></td>
        </tr>
        
        <tr>
            <td> <a href="jobseeker_register.aspx"><img src="images/jobseeker.gif" height="400" width="370" /></a><br /><br /></td>
            <td><a href="employer_register.aspx"><img src="images/employer.gif" height="400" width="370" /></a><br /><br /></td>
        </tr>
        
    </table>
</asp:Content>

