<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_professional_detail.aspx.cs" Inherits="view_professional_detail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 219px;
        }
    </style>
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
            &nbsp;<table style="width: 70%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label1" 
                      runat="server" ></asp:Label>
                  <asp:ToolkitScriptManager 
                      ID="ToolkitScriptManager1" runat="server">
                  </asp:ToolkitScriptManager>
                 <div class="article">  <h1 style="color:White;"> &nbsp;&nbsp; Profesional Information</h1></div>
          </td>
          
      </tr>     
      <tr>
          <td class="style4" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;<hr />
<hr />
          </td>
          
      </tr>
      <tr>
          <td class="style4" colspan="2">
              
          </td>
          
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Key Skill:</td>
          <td class="style4">
              <asp:Label ID="lblkeyskill" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Industery&nbsp;:</td>
          <td class="style4">
              <asp:Label ID="lblIndustry" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Industry Role:</td>
          <td class="style4">
              <asp:Label ID="lblIndustryRole" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Profile:</td>
          <td class="style4">
              <asp:Label ID="lbljobprofile" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Position Type:</td>
          <td class="style4">
             
            
                      <asp:Label ID="lblpositiontype" runat="server"></asp:Label>
              
           
                         
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Minimum Salary:</td>
          <td class="style4">
              
                      <asp:Label ID="lblminsal" runat="server"></asp:Label>
                 
              
          </td>
      </tr>
      
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Currency:</td>
          <td class="style4">
              <asp:Label ID="lblcurrency" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Category:</td>
          <td class="style4">
              <asp:Label ID="lblcategory" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
          <td class="style4">
              &nbsp;</td>
      </tr>
                     <tr>
                         <td class="style1">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                         <td class="style4">
                             &nbsp;</td>
                     </tr>
                                     <tr>
          <td class="style5" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
           <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Text="Edit" Width="104px" 
                  PostBackUrl="~/edit_professional_info.aspx" />
              <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                  Enabled="True" TargetControlID="btnedit">
              </asp:RoundedCornersExtender>
              <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                  Enabled="True" TargetControlID="btnedit">
              </asp:DropShadowExtender>
              &nbsp; &nbsp;</td>
      </tr>
                         <tr>
          <td class="style5" colspan="2">
              &nbsp;</td>
      </tr>      
  </table>
</asp:Content>

