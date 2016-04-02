<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="postjob.aspx.cs" Inherits="postjob" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
   
        <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
              <div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                  Post Jobs</h1></div>
          </td>
                    
      </tr>     
      
      <tr>
          <td class="style4" colspan="2">
              <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
          </td>
          
      </tr>
      <tr>
          <td class="style3">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Job Title:</td>
          <td class="style4">
              <asp:TextBox ID="txtjobtitle" runat="server" Height="30px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="txtjobtitle" ErrorMessage="Enter job title" 
                  ValidationGroup="v">Enter Job title</asp:RequiredFieldValidator>
              <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      
      <tr>
          <td class="style3">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Application 
              End Date:</td>
          <td class="style4">
              <asp:TextBox ID="txtappenddate" runat="server" Height="30px" Width="250px" ></asp:TextBox>
              <asp:CalendarExtender ID="CalendarExtender1" runat="server" TargetControlID="txtappenddate">
              </asp:CalendarExtender>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="txtappenddate" ErrorMessage="Enter Application end date" 
                  ValidationGroup="v">Enter application end date</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator2">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
                     <tr>
                         <td class="style3">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Total Job 
                             Vacancy:&nbsp;</td>
                         <td class="style4">
              <asp:TextBox ID="txtvacancy" runat="server" Height="30px" Width="250px" 
                ></asp:TextBox>
                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                             TargetControlID="txtvacancy" FilterType="Numbers"></asp:FilteredTextBoxExtender>
                         
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                 ControlToValidate="txtvacancy" ErrorMessage="Enter job vacancy" 
                                 ValidationGroup="v">Enter job vacancy</asp:RequiredFieldValidator>
                                 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator3">
              </asp:ValidatorCalloutExtender>
                         
                         </td>
                     </tr>
                     <tr>
                         <td class="style3">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Require Experience:</td>
                         <td class="style4">
              <asp:TextBox ID="txtreqexp" runat="server" Height="30px" Width="200px" 
                ></asp:TextBox>
                             Year&nbsp;
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                 ControlToValidate="txtreqexp" ErrorMessage="Enter require experience" 
                                 ValidationGroup="v">Enter require experience</asp:RequiredFieldValidator>
                                 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender4" runat="server" TargetControlID="RequiredFieldValidator4">
              </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
                     <tr>
                         
                         <td class="style3">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Min Salary:&nbsp;</td>
                         <td class="style4">
              <asp:TextBox ID="txtminsal" runat="server" Height="30px" Width="100px" 
                ></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server"
                             TargetControlID="txtminsal" FilterType="Numbers">
                             </asp:FilteredTextBoxExtender>
                             <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator6">
              </asp:ValidatorCalloutExtender>
                         &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                 ControlToValidate="txtminsal" ErrorMessage="Enter minimum salary" 
                                 ValidationGroup="v">*</asp:RequiredFieldValidator>
                             &nbsp;&nbsp;&nbsp; Max Salary:&nbsp;
              <asp:TextBox ID="txtmaxsal" runat="server" Height="30px" Width="100px" 
                ></asp:TextBox>
                
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server"
                             TargetControlID="txtmaxsal" FilterType="Numbers">
                             </asp:FilteredTextBoxExtender>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                 ControlToValidate="txtmaxsal" ErrorMessage="Enter maximum salary" 
                                 ValidationGroup="v">Enter maximum salary</asp:RequiredFieldValidator>
                                 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator5">
              </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
                     <tr>
                         <td class="style3">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                             Require Skill:</td>
                         <td class="style4">
              <asp:TextBox ID="txtreqskill" runat="server" Height="30px" Width="250px" 
                ></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                 ControlToValidate="txtreqskill" ErrorMessage="Enter require skill" 
                                 ValidationGroup="v">Enter require skill</asp:RequiredFieldValidator>
                                 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RequiredFieldValidator7">
              </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
      <tr>
          <td class="style3">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Require Education:</td>
          <td class="style4">
              <asp:TextBox ID="txtreqedu" runat="server" Height="30px" Width="250px" 
                  ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                  ControlToValidate="txtreqedu" ErrorMessage="Enter require education" 
                  ValidationGroup="v">Enter require education</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator8">
              </asp:ValidatorCalloutExtender>
                </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Require Position 
              Type:</td>
          <td class="style4">
              <asp:DropDownList ID="DropDownList1" runat="server" Height="27px" Width="200px">
                  <asp:ListItem>--select--</asp:ListItem>
                  <asp:ListItem>Full Time</asp:ListItem>
                  <asp:ListItem>Part Time</asp:ListItem>
              </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                  ControlToValidate="DropDownList1" ErrorMessage="Select position rtpe" 
                  InitialValue="--select--" ValidationGroup="v">select position type</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RequiredFieldValidator9">
              </asp:ValidatorCalloutExtender>
                </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Interview Date:</td>
          <td class="style4">
              <asp:TextBox ID="txtinterdate" runat="server" Height="30px" Width="250px" 
                 ></asp:TextBox>
              <asp:CalendarExtender ID="CalendarExtender2" runat="server" TargetControlID="txtinterdate">
              </asp:CalendarExtender>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                  ControlToValidate="txtinterdate" ErrorMessage="Enter interview date" 
                  ValidationGroup="v">Enter interview date</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="RequiredFieldValidator10">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      
      <tr>
          <td class="style5">
              &nbsp;</td>
          <td class="style4">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </td>
      </tr>
      <tr>
          <td class="style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:Button 
                  ID="btnpostjob" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="29px" 
                                  Text="post Job" Width="115px" onclick="btnpostjob_Click" 
                  ValidationGroup="v"/>
              <asp:RoundedCornersExtender ID="btnpostjob_RoundedCornersExtender" 
                  runat="server" Enabled="True" TargetControlID="btnpostjob">
              </asp:RoundedCornersExtender>
              <asp:DropShadowExtender ID="btnpostjob_DropShadowExtender" runat="server" 
                  Enabled="True" TargetControlID="btnpostjob">
              </asp:DropShadowExtender>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;<br />
              <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                  ShowMessageBox="True" ShowSummary="False" ValidationGroup="v" />
          </td>
          
      </tr>
                     </table>
      

</asp:Content>

