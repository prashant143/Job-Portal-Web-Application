<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="view_education_detail.aspx.cs" Inherits="view_education_detail" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 263px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 70%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
              <div class="article"><h1 style="color:White;">
                  <asp:ToolkitScriptManager 
                      ID="ToolkitScriptManager1" runat="server">
                  </asp:ToolkitScriptManager>
Education Information</h1></div><asp:Label ID="Label1" runat="server"></asp:Label>
          </td>
          
      </tr>     
      <tr>
          <td class="style4" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<hr />
          </td>
          
      </tr>
      <tr>
          <td class="style4" colspan="2">
              
          </td>
          
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 10th Percentage:</td>
          <td class="style4">
              <asp:Label ID="lbl10per" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 12th 
              Percentage&nbsp;:</td>
          <td class="style4">
              <asp:Label ID="lbl12per" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation Degree:</td>
          <td class="style4">
              <asp:Label ID="lblgraduation" runat="server"></asp:Label>
              
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation Institute:</td>
          <td class="style4">
              <asp:Label ID="lblgradinsti" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation Percentage:</td>
          <td class="style4">
             
            
                      <asp:Label ID="lblgradper" runat="server"></asp:Label>
              
           
                         
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post-Graduation Degree:</td>
          <td class="style4">
              
                      <asp:Label ID="lblpostgrad" runat="server"></asp:Label>
                 
              
          </td>
      </tr>
      <tr>
        <td class="style1" style="font-weight: bold">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post-Graduation Institute:</td>
        <td class="style4">
            
                      <asp:Label ID="lblpostgradinsti" runat="server"></asp:Label>
               

        </td>
      </tr>
      
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post-Graduation Percentage:</td>
          <td class="style4">
              <asp:Label ID="lblpostgradper" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Educations</td>
          <td class="style4">
              <asp:Label ID="lblphd" runat="server"></asp:Label>
          </td>
      </tr>
      <tr>
          <td class="style1">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
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
                  PostBackUrl="~/edit_education_info.aspx" onclick="btnedit_Click" />
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
              &nbsp; </td>
      </tr>             
                    
  </table>
</asp:Content>

