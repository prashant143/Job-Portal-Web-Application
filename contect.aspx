<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contect.aspx.cs" Inherits="contect" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="article"><h1 style="color:White;margin-left:150px;">Contact Information</h1></div> 
        
        <table width="100%">
            
            <tr>
                <td>
                    <table width="60%">
                        <tr>
                            <td colspan="2"><h3 style="color:Black;">HEAD OFFICE</h3><hr /></td>
                        </tr> 
                        <tr>
                            <td><img runat="server" src="~/images/name.png" height="24" width="24"/></td>
                            <td>Prashant Vaghela</td>
                        </tr>
                        <tr>
                            <td><img runat="server" src="~/images/address_web_icon.png" height="24" width="24"/></td>
                            <td>27B College Crescent<br />
                                Barrie, ON L4m 2W4
                               
                                </td>
                        </tr>
                        <tr>
                            <td><img runat="server" src="~/images/callicon.gif" height="24" width="24"/></td>
                            <td>+1249-877-7725</td>
                        </tr> 
                        <tr>
                            <td><img runat="server" src="~/images/emailicon.png" height="24" width="24"/></td>
                            <td>vaghelaprashant002@gmail.com</td>
                        </tr>
            
                    </table>
                </td>
                
            </tr>
        </table>
        
        
    <br />
</asp:Content>

