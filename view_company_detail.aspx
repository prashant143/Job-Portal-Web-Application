<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="view_company_detail.aspx.cs" Inherits="view_company_info" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 
    <style type="text/css">
        .style1
        {
            width: 272px;
        }
    </style>
 
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
                 <asp:Label ID="Label1" runat="server" ></asp:Label>
                 <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
              <div class="article"><h1 style="color:White;"> Company Information</h1></div>
          </td>
          
      </tr>     
      <tr>
          <td class="style4" colspan="2" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<hr />
          </td>
          
      </tr>
      <tr>
          <td class="style4" colspan="2" style="font-weight: bold">
              
          </td>
          
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Username:&nbsp;</td>
          <td class="style4">
              <asp:Label ID="lbluname" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Company Name:</td>
          <td class="style4">
              <asp:Label ID="lblname" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Address&nbsp;:</td>
          <td class="style4">
              <asp:Label ID="lbladdress" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Country:</td>
          <td class="style4">
              <asp:Label ID="lblcountry" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;State:</td>
          <td class="style4">
              
                      <asp:Label ID="lblstate" runat="server"></asp:Label>
                 
              
          </td>
      </tr>
      <tr>
        <td class="style1" style="font-weight: bold">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;City:</td>
        <td class="style4">
            
                      <asp:Label ID="lblcity" runat="server"></asp:Label>
               

        </td>
      </tr>
      
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ZipCode:</td>
          <td class="style4">
              <asp:Label ID="lblziptype" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Company Type:</td>
          <td class="style4">
              <asp:Label ID="lbltype" runat="server"></asp:Label>
          </td>
      </tr>
                     <tr>
                         <td class="style1" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Category:</td>
                         <td class="style4">
                             <asp:Label ID="lblcategory" runat="server"></asp:Label>
                         </td>
                     </tr>
                     <tr>
                         <td class="style1" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Company Detail:</td>
                         <td class="style4">
                             <asp:Label ID="lbldetail" runat="server"></asp:Label>
                         </td>
                     </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Company_logo:</td>
          <td class="style4">
              <asp:Image ID="Image1" runat="server" Height="50px" Width="50px" />
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Contact_Person:</td>
          <td class="style4">
              <asp:Label ID="lblcontactname" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_id:</td>
          <td class="style4">
              <asp:Label ID="lblemail" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No:</td>
          <td class="style4">
              <asp:Label ID="lblcno" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Website:</td>
          <td class="style4">
              <asp:Label ID="lblwebsite" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1">
              &nbsp;</td>
          <td class="style4">
              &nbsp;</td>
      </tr>
      <tr>
          <td class="style3" colspan="2">
              
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              
           <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Text="Edit" Width="104px" 
                  PostBackUrl="~/edit_company_profile.aspx" onclick="btnedit_Click" />
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

