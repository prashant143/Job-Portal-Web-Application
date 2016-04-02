<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="edit_personal_info.aspx.cs" Inherits="edit_personal_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="article"><h1 style="color:White;">Edit Personal Information</h1></div>
<asp:Panel ID="personalpanel" runat="server" GroupingText="Edit Personal Information"
             BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">

                 <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
           
      <tr>
          <td class="style4" colspan="2">
              
              &nbsp;&nbsp;
              <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
              
          </td>
          
      </tr>
                     <tr>
                         <td class="style4" colspan="2">
                             &nbsp;</td>
                     </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;first name:</td>
          <td>
              <asp:TextBox ID="txtfname" runat="server" Height="27px" Width="300px" 
                  ForeColor="#606060" ></asp:TextBox>
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="txtfname" ErrorMessage="Enter first name" 
                  ValidationGroup="p">Enter first name</asp:RequiredFieldValidator>
              
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;middle name&nbsp;:</td>
          <td>
              <asp:TextBox ID="txtmname" runat="server" Height="27px" Width="300px" 
                  ForeColor="#606060"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="txtmname" ErrorMessage="Enter Middle name" 
                  ValidationGroup="p"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;last name:</td>
          <td>
              <asp:TextBox ID="txtlname" runat="server" Height="27px" Width="300px" 
                  ForeColor="#606060" ></asp:TextBox>
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="txtlname" ErrorMessage="Enter last name" ValidationGroup="p"></asp:RequiredFieldValidator>
              
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;address:</td>
          <td>
              <asp:TextBox ID="txtaddress" runat="server" Rows="5" TextMode="MultiLine" 
                  Width="300px" ForeColor="#606060" 
                  ></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                  ControlToValidate="txtaddress" ErrorMessage="Enter address" ValidationGroup="p"></asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;Country:</td>
          <td>
               <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
               </asp:ToolkitScriptManager>
             
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" 
                         ForeColor="#606060" Height="27px" 
                         Width="100px" onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                      </asp:DropDownList>
                  </ContentTemplate>
                  
              </asp:UpdatePanel>
           
                         
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
          
              &nbsp;&nbsp;State:</td>
          <td>
              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                      <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                          ForeColor="#606060" Height="27px" 
                           Width="100px" onselectedindexchanged="ddlstate_SelectedIndexChanged">
                      </asp:DropDownList>
                  </ContentTemplate>
              </asp:UpdatePanel>
              
          </td>
      </tr>
      <tr>
        <td class="style3" style="font-weight: bold">
        
            &nbsp;&nbsp;City:</td>
        <td>
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                  <ContentTemplate>
                      <asp:DropDownList ID="ddlcity" runat="server" 
                          ForeColor="#606060" Height="27px" Width="100px">
                      </asp:DropDownList>
                  </ContentTemplate>
              </asp:UpdatePanel>

        </td>
      </tr>
      
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;gender:</td>
          <td>
              <asp:RadioButton ID="rbtnmale" runat="server" GroupName="r1" Text="Male" />
              &nbsp;&nbsp;
              <asp:RadioButton ID="rbtnfemale" runat="server" GroupName="r1" Text="Female" />
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;email-id:</td>
          <td>
              <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="300px" 
                  ForeColor="#606060"></asp:TextBox>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="txtemail" ErrorMessage="Enter proper email-id" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                  ValidationGroup="p"></asp:RegularExpressionValidator>
          </td>
      </tr>
                     <tr>
                         <td class="style3" style="font-weight: bold">
                             &nbsp; Merital Status:</td>
                         <td>
                             <asp:RadioButton ID="rbtn1" runat="server" 
                                  Text="Married" 
                                 ValidationGroup="s1" />
                             &nbsp;&nbsp;
                             <asp:RadioButton ID="rbtn2" runat="server" 
                                  Text="Unmarried" 
                                 ValidationGroup="s1" />
                         </td>
                     </tr>
                     <tr>
                         <td class="style3" style="font-weight: bold">
                             &nbsp; Religion:</td>
                         <td>
                             <asp:TextBox ID="txtreligion" runat="server" Height="27px" Width="300px" 
                                 ForeColor="#606060" ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                 ControlToValidate="txtreligion" ErrorMessage="Enter religion" 
                                 ValidationGroup="p"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;Date of birth:</td>
          <td>
              <asp:TextBox ID="txtdob" runat="server" Height="27px" Width="300px"></asp:TextBox>
              <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtdob">
              </asp:CalendarExtender>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                  ControlToValidate="txtdob" ErrorMessage="Enter date of birth" 
                  ValidationGroup="p"></asp:RequiredFieldValidator>
          </td>
      </tr>
                     <tr>
                         <td class="style3" style="font-weight: bold">
                             &nbsp;&nbsp;Contect No:</td>
                         <td>
                             <asp:TextBox ID="txtcontectno" runat="server" Height="27px" Width="300px" 
                                 ForeColor="#606060" ></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" 
                             FilterType="Numbers" TargetControlID="txtcontectno">
                             </asp:FilteredTextBoxExtender>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                 ControlToValidate="txtcontectno" ErrorMessage="Enter contact no" 
                                 ValidationGroup="p"></asp:RequiredFieldValidator>
                         </td>
                     </tr>
  </table>
  
    </asp:Panel>
    <asp:Panel ID="langpanel" runat="server" GroupingText="Edit Language Information" 
                 BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
             
                  <table style="width: 70%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                   >
      
      <tr>
          <td class="style2" colspan="2">&nbsp;</td>
          
      </tr>
      <tr>
          <td class="style12" style="font-weight: bold">
              Language Know:</td>
          <td class="style13" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Read:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Write:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;Speak:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
      <tr>
          <td class="style15">
              <asp:Label ID="txtlang1" runat="server" Visible="False" Width="125px"></asp:Label>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlread" runat="server" Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                  ID="ddlwrite" runat="server" 
                  Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                  ID="ddlspeak" runat="server" 
                  Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:Label ID="txtlang2" runat="server" Visible="False" Width="125px"></asp:Label>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:DropDownList 
                  ID="ddlread1" runat="server" 
                   Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:DropDownList 
                  ID="ddlwrite1" runat="server" 
                  Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlspeak1" runat="server" Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:Label ID="txtlang3" runat="server" Visible="False" Width="125px"></asp:Label>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlread2" runat="server" Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlwrite2" runat="server" Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlspeak2" runat="server" Width="50px" Visible="False" 
                  >
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:Label ID="txtlang4" runat="server" Text="       " Visible="False" 
                  Width="125px"></asp:Label>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlread3" runat="server" Width="50px" Visible="False">
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlwrite3" runat="server" Width="50px" Visible="False" 
                  >
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:DropDownList ID="ddlspeak3" runat="server" Width="50px" Visible="False" 
                  >
                  <asp:ListItem>select</asp:ListItem>
                  <asp:ListItem>yes</asp:ListItem>
                  <asp:ListItem>no</asp:ListItem>
              </asp:DropDownList>
          </td>
      </tr>
      <tr>
      <td colspan="2">
          &nbsp;</td>
      </tr>
                      <tr>
                          <td colspan="2">
                              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                              <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" ForeColor="White" Height="35px" 
                                  onclick="btnedit_Click1" Text="Edit" Width="104px" ValidationGroup="p" />
                              <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                                  Enabled="True" TargetControlID="btnedit">
                              </asp:RoundedCornersExtender>
                              <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                                  Enabled="True" TargetControlID="btnedit">
                              </asp:DropShadowExtender>
                              <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                  ShowMessageBox="True" ShowSummary="False" ValidationGroup="p" />
                          </td>
                      </tr>
      </table></asp:Panel>


</asp:Content>

