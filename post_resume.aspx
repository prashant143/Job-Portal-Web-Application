<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="post_resume.aspx.cs" Inherits="post_resume" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 136px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 90%;">
        <tr>
            <td colspan="3">
                <div class="article"><h1 style="color:White;">Post Resumes</h1></div>
            </td>
            
        </tr>
        <tr>
            <td colspan="3">
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
                <br />
              <hr />  <hr />&nbsp;
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="#666666"></asp:Label>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="3">
               </td>
            
        </tr>
        <tr>
            <td colspan="3">
                &nbsp;</td>
            
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style1">
                Rsume Head Line: </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txthead" runat="server" Height="30px" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txthead" ErrorMessage="*" ValidationGroup="h">Enter Resume head line</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="style1">
                Upload Resume:</td>
            <td>
                &nbsp;
                <asp:FileUpload ID="furesume" runat="server" Height="30px" Width="220px" />
               &nbsp;<asp:Label ID="lblupload" runat="server" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td class="style1">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
           <asp:Button ID="btnpost" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Text="Post Resume" Width="120px" onclick="btnpost_Click" 
                    ValidationGroup="h" />
                <asp:RoundedCornersExtender ID="btnpost_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="btnpost">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="btnpost_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="btnpost">
                </asp:DropShadowExtender>
              </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;<asp:Label ID="lblmsg1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                <asp:LinkButton ID="lbtnresume" runat="server" onclick="lbtnresume_Click" 
                    Visible="False"></asp:LinkButton>
                
                <asp:LinkButton ID="lnkdownload" runat="server" onclick="lnkdownload_Click"></asp:LinkButton>
                
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndel" runat="server" onclick="btndel_Click" Text="Delete" 
                    Visible="False" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td colspan="2">
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

