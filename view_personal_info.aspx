<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_personal_info.aspx.cs" Inherits="view_personal_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


                 <asp:Label ID="Label1" runat="server"></asp:Label>


                 &nbsp;<table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
            <div class="article">  <h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Personal Information</h1></div>
          </td>
          
      </tr>     
      <tr>
          <td class="style4" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
              </asp:ToolkitScriptManager>
<hr />
          </td>
          
      </tr>
      <tr>
          <td class="style4" colspan="2">
              
          </td>
          
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; First name:</td>
          <td class="style4">
              <asp:Label ID="lblfname" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Middle name&nbsp;:</td>
          <td class="style4">
              <asp:Label ID="lblmname" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last name:</td>
          <td class="style4">
              <asp:Label ID="lbllname" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address:</td>
          <td class="style4">
              <asp:Label ID="lbladdress" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Country:</td>
          <td class="style4">
             
            
                      <asp:Label ID="lblcountry" runat="server"></asp:Label>
              
           
                         
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:</td>
          <td class="style4">
              
                      <asp:Label ID="lblstate" runat="server"></asp:Label>
                 
              
          </td>
      </tr>
      <tr>
        <td class="style5" style="font-weight: bold">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:</td>
        <td class="style4">
            
                      <asp:Label ID="lblcity" runat="server"></asp:Label>
               

        </td>
      </tr>
      
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Gender:</td>
          <td class="style4">
              <asp:Label ID="lblgender" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email-id:</td>
          <td class="style4">
              <asp:Label ID="lblemail" runat="server"></asp:Label>
          </td>
      </tr>
                     <tr>
                         <td class="style5" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Merital Status:</td>
                         <td class="style4">
                             <asp:Label ID="lblstatus" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style5" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Religion:</td>
                         <td class="style4">
                             <asp:Label ID="lblreligion" runat="server"></asp:Label>
                         </td>
                     </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Date of birth:</td>
          <td class="style4">
              <asp:Label ID="lbldob" runat="server"></asp:Label>
          </td>
      </tr>
                     <tr>
                         <td class="style5" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contect No:</td>
                         <td class="style4">
                             <asp:Label ID="lblcontact" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style5" style="font-weight: bold">
                             &nbsp;</td>
                         <td class="style4" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Read&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Write&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Speak</td>
                     </tr>
                     <tr>
                         <td class="style5" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Language:</td>
                         <td class="style4">
                             <asp:Label ID="lbllang1" runat="server" Width="65px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                             <asp:Label ID="y1" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y5" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y9" runat="server" Width="20px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style5">
                             &nbsp;</td>
                         <td class="style4">
                             <asp:Label ID="lbllang2" runat="server" Width="65px"></asp:Label>
                             &nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                             <asp:Label ID="y2" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y6" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y10" runat="server" Width="20px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style5">
                             &nbsp;</td>
                         <td class="style4">
                             <asp:Label ID="lbllang3" runat="server" Width="65px"></asp:Label>
                             &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                             <asp:Label ID="y3" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y7" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y11" runat="server" Width="20px"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style5">
                             &nbsp;</td>
                         <td class="style4">
                             <asp:Label ID="lbllang4" runat="server" Width="65px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;
                             <asp:Label ID="y4" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y8" runat="server" Width="20px"></asp:Label>
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:Label ID="y12" runat="server" Width="20px"></asp:Label>
                         </td>
                     </tr>
                           <tr>
          <td class="style5" colspan="2">
              &nbsp;</td>
      </tr>
                           <tr>
          <td class="style5" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
              
           <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Text="Edit" Width="104px" 
                  PostBackUrl="~/edit_personal_info.aspx" />
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

