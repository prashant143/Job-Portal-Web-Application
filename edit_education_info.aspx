<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="edit_education_info.aspx.cs" Inherits="edit_education_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
    <style type="text/css">
        .style1
        {
            width: 289px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                                 &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                 </asp:ToolkitScriptManager>
                     <table align="center" 
                         style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
                         <tr>
                             <td class="style2" colspan="2">
                                <div class="article"> <h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Edit Educational Information</h1></div></td>
                         </tr>
                         <tr>
                             <td class="style2" colspan="2">
                                 &nbsp;<hr /></td>
                         </tr>
                         <tr>
                             <td class="style2" colspan="2">
                                 <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
                             </td>
                         </tr>
                         <tr>
                             <td class="style2" colspan="2">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10th percentage</td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12th percentage:</td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txt10per" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="170px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ControlToValidate="txt10per" ErrorMessage="enter percen" 
                                     ValidationGroup="grp"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txt12per" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="110px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                     ControlToValidate="txt12per" ErrorMessage="enter 12th percentage" 
                                     ValidationGroup="grp"></asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation:</td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Institute Graduation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlgrad" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="170px">
                                     <asp:ListItem>         --select  Graduation--</asp:ListItem>
                                     <asp:ListItem>BCA</asp:ListItem>
                                     <asp:ListItem>BBA</asp:ListItem>
                                     <asp:ListItem>Bcom</asp:ListItem>
                                     <asp:ListItem>BA</asp:ListItem>
                                     <asp:ListItem>Bsc</asp:ListItem>
                                     <asp:ListItem>BSC IT</asp:ListItem>
                                     <asp:ListItem>B.Arch.</asp:ListItem>
                                     <asp:ListItem>B.A.M.S</asp:ListItem>
                                     <asp:ListItem>B.D.S</asp:ListItem>
                                     <asp:ListItem>B.E.D</asp:ListItem>
                                     <asp:ListItem>B.M.S</asp:ListItem>
                                     <asp:ListItem>L.L.B</asp:ListItem>
                                     <asp:ListItem>B.Pharm.</asp:ListItem>
                                     <asp:ListItem>BSW</asp:ListItem>
                                     <asp:ListItem>B.D</asp:ListItem>
                                     <asp:ListItem>B.P.T</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlgradinstitute" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="150px">
                                     <asp:ListItem>         -Graduation Institute-</asp:ListItem>
                                     <asp:ListItem>VNSGU</asp:ListItem>
                                     <asp:ListItem>saurastra</asp:ListItem>
                                 </asp:DropDownList>
                                 &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                             </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Graduation:</td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Institute Post Graduation:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlpostgrad" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="170px">
                                     <asp:ListItem>         --select Post Graduation--</asp:ListItem>
                                     <asp:ListItem>MCA</asp:ListItem>
                                     <asp:ListItem>MBA</asp:ListItem>
                                     <asp:ListItem>MA</asp:ListItem>
                                     <asp:ListItem>Msc</asp:ListItem>
                                     <asp:ListItem>MCom</asp:ListItem>
                                     <asp:ListItem>Msc IT</asp:ListItem>
                                     <asp:ListItem>M.B.E</asp:ListItem>
                                     <asp:ListItem>M.C.S</asp:ListItem>
                                     <asp:ListItem>M.D</asp:ListItem>
                                     <asp:ListItem>M.Ed</asp:ListItem>
                                     <asp:ListItem>M.H.sc</asp:ListItem>
                                     <asp:ListItem>M.Tech</asp:ListItem>
                                     <asp:ListItem>M.ED</asp:ListItem>
                                     <asp:ListItem>M.Arch</asp:ListItem>
                                     <asp:ListItem>M.B.S</asp:ListItem>
                                     <asp:ListItem>M.Phil</asp:ListItem>
                                     <asp:ListItem>M.S</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlpostgradinsti" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="190px">
                                     <asp:ListItem>         --Post Graduation Institute--</asp:ListItem>
                                     <asp:ListItem>VNSGU</asp:ListItem>
                                 </asp:DropDownList>
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation Percentage:&nbsp;</td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Graduation Percentage:&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txtgradper" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="170px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                     ControlToValidate="txtgradper" ErrorMessage="enter  percen." 
                                     ValidationGroup="grp"></asp:RequiredFieldValidator>
                             </td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txtpostgradper" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="150px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                     ControlToValidate="txtpostgradper" ErrorMessage="enter post grad percentage" 
                                     ValidationGroup="grp"></asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Other Educations:</td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txtphd" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" 
                                     Width="170px"></asp:TextBox>
                                 
                             </td>
                             <td class="style4">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 </td>
                         </tr>
                         <tr>
                             <td class="style1">
                                 &nbsp;</td>
                             <td class="style4">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style16" colspan="2">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                     Font-Names="Book Antiqua" Font-Size="Large" ForeColor="White" Height="35px" 
                                     Text="Edit" Width="104px" onclick="btnedit_Click" ValidationGroup="grp" />
                                 <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                                     Enabled="True" TargetControlID="btnedit">
                                 </asp:RoundedCornersExtender>
                                 <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                                     Enabled="True" TargetControlID="btnedit">
                                 </asp:DropShadowExtender>
                             </td>
                         </tr>
                     </table>
                
</asp:Content>

