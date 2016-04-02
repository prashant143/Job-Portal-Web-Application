<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="jobseeker_register.aspx.cs" Inherits="jobseeker_register" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 197px;
        }
        .style2
        {
            width: 197px;
            height: 12px;
        }
        .style3
        {
            width: 130px;
        }
        .style4
        {
            width: 197px;
            height: 19px;
        }
        .style11
        {
            width: 81%;
        }
        .style12
        {
            width: 142px;
            height: 26px;
        }
        .style13
        {
            width: 81%;
            height: 26px;
        }
        .style15
        {
            width: 170px;
        }
        .style16
        {
            width: 29%;
        }
        .style17
        {
            width: 70%;
        }
        .BarIndicator_TextBox2_weak
{
    color:Red;
    background-color:Red;
}
.TextIndicator_TextBox1_Strength1
{
     background-color:Gray;
     color:White;
     font-family:Arial;
     font-size:x-small;
     font-style:italic;
     padding: 2px 3px 2px 3px;
     font-weight:bold;
}
.TextIndicator_TextBox1_Strength2
{
     background-color:Gray;
     color:Yellow;
     font-family:Arial;
     font-size:x-small;
     font-style:italic;
     padding: 2px 3px 2px 3px;
     font-weight:bold;
}
.TextIndicator_TextBox1_Strength3
{
     background-color:Gray;
     color: #FFCAAF;
     font-family:Arial;
     font-size:x-small;
     font-style:italic;
     padding: 2px 3px 2px 3px;
     font-weight:bold;
}
.TextIndicator_TextBox1_Strength4
{
     background-color:Gray;
     color:Aqua;
     font-family:Arial;
     font-size:x-small;
     font-style:italic;
     padding: 2px 3px 2px 3px;
     font-weight:bold;
}
.TextIndicator_TextBox1_Strength5
{
     background-color:Gray;
     color: #93FF9E;
     font-family:Arial;
     font-size:x-small;
     font-style:italic;
     padding: 2px 3px 2px 3px;
     font-weight:bold;
}

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <div class="article"><h1 style="color:White">&nbsp;&nbsp;&nbsp;Job-seeker Registration&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </h1></div>
     <asp:MultiView ID="MultiView1" runat="server">
         &nbsp;<asp:View ID="View1" runat="server"><br /><br />
             <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server"></asp:ToolkitScriptManager>
             
                      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnnum1" runat="server" BackColor="#333333" ForeColor="White" 
                         Height="30px" Text="1" Width="30px" onclick="btnnum1_Click" />
                     <asp:RoundedCornersExtender ID="btnnum1_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum1">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum1_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum1">
             </asp:DropShadowExtender>
                     <asp:Button ID="btnnum2" runat="server" ForeColor="Black" Height="30px" 
                         Text="2" Width="30px" onclick="btnnum2_Click"/>
                     <asp:RoundedCornersExtender ID="btnnum2_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum2">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum2_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum2">
             </asp:DropShadowExtender>
                     <asp:Button ID="btnnum3" runat="server" ForeColor="Black" Height="30px" 
                         Text="3" Width="30px" onclick="btnnum3_Click"/>
                      <asp:RoundedCornersExtender ID="btnnum3_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum3">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum3_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum3">
             </asp:DropShadowExtender>
                      &nbsp;<asp:Panel ID="personalpanel" runat="server" GroupingText="Personal Information"
             BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">

                 <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
           
      <tr>
          <td class="style4" colspan="2">
              <asp:ValidationSummary ID="ValidationSummary3" runat="server" 
                  ValidationGroup="g1" ShowMessageBox="True" ShowSummary="False" />
          </td>
          
      </tr>
      <tr>
          <td class="style3" 
              style="text-align: right; font-family: 'Times New Roman', Times, serif">
              &nbsp;&nbsp;Name:-</td>
          <td>
              &nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtfname" runat="server" CausesValidation="True" 
                  ForeColor="#606060" Height="27px" Width="100px"></asp:TextBox>
                   <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender7" runat="server" 
                                 FilterType="LowercaseLetters" TargetControlID="txtfname">
                             </asp:FilteredTextBoxExtender>
              <asp:RequiredFieldValidator ID="rfvfname" runat="server" 
                  ControlToValidate="txtfname" ErrorMessage="enter first name" 
                  ValidationGroup="g1">*</asp:RequiredFieldValidator>
              <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender11" runat="server" 
                  Enabled="true" TargetControlID="rfvfname">
              </asp:ValidatorCalloutExtender>
              <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender11" runat="server" 
                  TargetControlID="txtfname" WatermarkCssClass="WaterMarkedTextBox" 
                  WatermarkText="First name">
              </asp:TextBoxWatermarkExtender>
              <asp:TextBox ID="txtmname" runat="server" CausesValidation="True" 
                  ForeColor="#606060" Height="27px" Width="100px"></asp:TextBox>
                   <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender8" runat="server" 
                                 FilterType="LowercaseLetters" TargetControlID="txtmname">
                             </asp:FilteredTextBoxExtender>
              <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender1" runat="server" 
                  TargetControlID="txtmname" WatermarkCssClass="WaterMarkedTextBox" 
                  WatermarkText="Middle name">
              </asp:TextBoxWatermarkExtender>
              <asp:RequiredFieldValidator ID="rfvmname" runat="server" 
                  ControlToValidate="txtmname" ErrorMessage="enter middle name" 
                  ValidationGroup="g1">*</asp:RequiredFieldValidator>
              <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" 
                  Enabled="true" TargetControlID="rfvmname">
              </asp:ValidatorCalloutExtender>
              <asp:TextBox ID="txtlname" runat="server" CausesValidation="True" 
                  ForeColor="#606060" Height="27px" Width="100px"></asp:TextBox>
                   <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender9" runat="server" 
                                 FilterType="LowercaseLetters" TargetControlID="txtlname">
                             </asp:FilteredTextBoxExtender>
              <asp:TextBoxWatermarkExtender ID="txtlname_TextBoxWatermarkExtender" 
                  runat="server" TargetControlID="txtlname" 
                  WatermarkCssClass="WaterMarkedTextBox" WatermarkText="Last name">
              </asp:TextBoxWatermarkExtender>
              <asp:RequiredFieldValidator ID="rfvlname0" runat="server" 
                  ControlToValidate="txtlname" ErrorMessage="enter last name" 
                  ValidationGroup="g1">Enter name</asp:RequiredFieldValidator>
              <asp:ValidatorCalloutExtender ID="rfvlname0_ValidatorCalloutExtender" 
                  runat="server" Enabled="true" TargetControlID="rfvlname0">
              </asp:ValidatorCalloutExtender>
                  
          </td>
      </tr>
      <tr>
          <td class="style3" 
              style="text-align: right; font-family: 'Times New Roman', Times, serif">
              &nbsp;&nbsp;Address:- </td>
          <td>
              &nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtaddress" runat="server" Rows="3" TextMode="MultiLine" 
                  Width="330px" ForeColor="#606060" 
                  CausesValidation="True"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvaddress" runat="server" 
                  ControlToValidate="txtaddress" ErrorMessage="enter address" 
                  ValidationGroup="g1">Enter address</asp:RequiredFieldValidator>
                      <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender3" runat="server" TargetControlID="rfvaddress" Enabled="true">
                        </asp:ValidatorCalloutExtender>
          </td>
      </tr>
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             Date Of Birth:-</td>
                         <td>
                             &nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="txtdob" runat="server" CausesValidation="True" 
                                 ForeColor="#606060" Height="27px" Width="200px" 
                                 ontextchanged="txtdob_TextChanged"></asp:TextBox>
                             <asp:CalendarExtender ID="CalendarExtender1" runat="server" 
                                 TargetControlID="txtdob">
                             </asp:CalendarExtender>
                             &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                 ControlToValidate="txtdob" ErrorMessage="enter date of birth">enter DOB</asp:RequiredFieldValidator>
                         </td>
                     </tr>
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             Contact No:-</td>
                         <td>
                             &nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="txtcontectno" runat="server" CausesValidation="True" 
                                 ForeColor="#606060" Height="27px" MaxLength="10" Width="200px"></asp:TextBox>
                             <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" 
                                 FilterType="Numbers" TargetControlID="txtcontectno">
                             </asp:FilteredTextBoxExtender>
                             <asp:RequiredFieldValidator ID="rfvcno0" runat="server" 
                                 ControlToValidate="txtcontectno" ErrorMessage="plz, enter contect no.." 
                                 ValidationGroup="g1">Enter date of birth</asp:RequiredFieldValidator>
                             <asp:ValidatorCalloutExtender ID="rfvcno0_ValidatorCalloutExtender" 
                                 runat="server" Enabled="true" TargetControlID="rfvcno0">
                             </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             <br />
                             Gender:-</td>
                         <td>
                             &nbsp;<asp:RadioButtonList ID="rdolstgender" runat="server" ForeColor="#606060" 
                                 RepeatDirection="Horizontal" Width="150px">
                                 <asp:ListItem>Male</asp:ListItem>
                                 <asp:ListItem>Female</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                     </tr>
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             Email-Id:-</td>
                         <td>
                             &nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="txtemail" runat="server" CausesValidation="True" 
                                 ForeColor="#606060" Height="27px" Width="200px"></asp:TextBox>
                             <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender9" runat="server" 
                                 TargetControlID="txtemail" WatermarkCssClass="WaterMarkedTextBox" 
                                 WatermarkText="Eg:-bhumi_patel89@yahoo.com ">
                             </asp:TextBoxWatermarkExtender>
                             <asp:RequiredFieldValidator ID="rfvid1" runat="server" 
                                 ControlToValidate="txtemail" ErrorMessage="enter email id" ValidationGroup="g1">Enter email-id</asp:RequiredFieldValidator>
                             <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" 
                                 Enabled="true" TargetControlID="rfvid1">
                             </asp:ValidatorCalloutExtender>
                             <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                 ControlToValidate="txtemail" ErrorMessage="enter proper email-id" 
                                 ValidationGroup="g1" 
                                 ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Invalid email-id</asp:RegularExpressionValidator>
                         </td>
                     </tr>
      <tr>
          <td class="style3" 
              style="text-align: right; font-family: 'Times New Roman', Times, serif">
              &nbsp;&nbsp;Country:</td>
          <td>
              
             
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      &nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="True" 
                          CausesValidation="True" ForeColor="#606060" Height="27px" 
                          onselectedindexchanged="ddlcountry_SelectedIndexChanged" Width="80px">
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="rfvcountry" runat="server" 
                          ControlToValidate="ddlcountry" InitialValue="select" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                      State:-<asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="True" 
                          CausesValidation="True" ForeColor="#606060" Height="27px" 
                          onselectedindexchanged="ddlstate_SelectedIndexChanged" Width="75px">
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="rfvstate" runat="server" 
                          ControlToValidate="ddlstate" InitialValue="select" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                      City:-<asp:DropDownList ID="ddlcity" runat="server" CausesValidation="True" 
                          ForeColor="#606060" Height="27px" 
                           Width="70px">
                      </asp:DropDownList>
                      <asp:RequiredFieldValidator ID="rfvcity" runat="server" 
                          ControlToValidate="ddlcity" ErrorMessage="RequiredFieldValidator" 
                          InitialValue="select" ValidationGroup="g1">*</asp:RequiredFieldValidator>
                  </ContentTemplate>
                  
              </asp:UpdatePanel>
           
                         
          </td>
      </tr>
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             Merital&nbsp; Status:-
                         </td>
                         <td>
                             <asp:RadioButtonList ID="rbtnstatus" runat="server" CausesValidation="True" 
                                 ForeColor="#606060" RepeatDirection="Horizontal">
                                 <asp:ListItem>Married</asp:ListItem>
                                 <asp:ListItem>Unmarried</asp:ListItem>
                             </asp:RadioButtonList>
                         </td>
                     </tr>
      
                     <tr>
                         <td class="style3" 
                             style="text-align: right; font-family: 'Times New Roman', Times, serif">
                             &nbsp; Religion:-</td>
                         <td>
                            
                             &nbsp;&nbsp;&nbsp;&nbsp;
                             <asp:TextBox ID="txtreligion" runat="server" CausesValidation="True" 
                                 ForeColor="#606060" Height="27px"
                                 Width="200px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="rfvreligion" runat="server" 
                                 ControlToValidate="txtreligion" ErrorMessage="enter religion" 
                                 ValidationGroup="g1" InitialValue="--Select religion--">Enter religion</asp:RequiredFieldValidator>
                    
                                 

                         </td>
                     </tr>
  </table>
  
    </asp:Panel>
    
             <br />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Button ID="btnnext" runat="server" Height="30px" onclick="Button1_Click" 
                  Text="Continue" Width="100px" Font-Bold="True" Font-Italic="True" 
                  Font-Names="Modern No. 25" Font-Size="Large" ValidationGroup="g1" 
                 BackColor="#333333" ForeColor="White" />
  
     
             <asp:RoundedCornersExtender ID="btnnext_RoundedCornersExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnext">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnext_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnext">
             </asp:DropShadowExtender>
  
     
         </asp:View>
         <asp:View ID="View2" runat="server"><br /><br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="btnnum4" runat="server" ForeColor="Black" Height="30px" 
                     onclick="btnnum4_Click" Text="1" Width="30px" />
                 <asp:RoundedCornersExtender ID="btnnum4_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum4">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum4_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum4">
             </asp:DropShadowExtender>
                 <asp:Button ID="btnnum5" runat="server" BackColor="#333333" ForeColor="White" 
                     Height="30px" onclick="btnnum5_Click" Text="2" Width="30px" />
                 <asp:RoundedCornersExtender ID="btnnum5_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum5">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum5_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum5">
             </asp:DropShadowExtender>
                 <asp:Button ID="btnnum6" runat="server" ForeColor="Black" Height="30px" 
                     onclick="btnnum6_Click" Text="3" Width="30px" />
             <asp:RoundedCornersExtender ID="btnnum6_RoundedCornersExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum6">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum6_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum6">
             </asp:DropShadowExtender>
&nbsp;
                 <asp:Panel ID="educationpanel" runat="server" BorderColor="Black" 
                     Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black" 
                     GroupingText="Education Detail">
                     <table align="center" 
                         style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
                         <tr>
                             <td class="style2" colspan="2">
                                 <asp:ValidationSummary ID="ValidationSummary2" runat="server" 
                                     ValidationGroup="g2" ShowMessageBox="True" ShowSummary="False" />
                             </td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;&nbsp; 10th percentage</td>
                             <td class="style17">
                                 &nbsp;&nbsp; 12th percentage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Graduation:</td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;&nbsp; <asp:TextBox ID="txt10per" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="110px"></asp:TextBox>
                                      <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender3" runat="server" 
                                 FilterType="Numbers" TargetControlID="txt10per">
                             </asp:FilteredTextBoxExtender>
                                 <asp:RequiredFieldValidator ID="rfv10per" runat="server" 
                                     ControlToValidate="txt10per" ErrorMessage="enter 10th percentage" 
                                     ValidationGroup="g2">*</asp:RequiredFieldValidator>
                                     <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender6" runat="server" TargetControlID="rfv10per" Enabled="true">
                           </asp:ValidatorCalloutExtender>

                             </td>
                             <td class="style17">
                                 &nbsp;&nbsp;
                                 <asp:TextBox ID="txt12per" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="110px" 
                                  ></asp:TextBox>
                                   <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender4" runat="server" 
                                 FilterType="Numbers" TargetControlID="txt12per">
                             </asp:FilteredTextBoxExtender>
                                 <asp:RequiredFieldValidator ID="rfv12per" runat="server" 
                                     ControlToValidate="txt12per" ErrorMessage="enter 12th percentage" 
                                     ValidationGroup="g2">*</asp:RequiredFieldValidator>
                                     <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender7" runat="server" TargetControlID="rfv12per" Enabled="true">
                           </asp:ValidatorCalloutExtender>
 
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlgrad" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" 
                                    Width="140px">
                                     <asp:ListItem>--select&nbsp; 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                     Graduation--</asp:ListItem>
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
                                 <asp:RequiredFieldValidator ID="rfvgrad" runat="server" 
                                     ControlToValidate="ddlgrad" ErrorMessage="select graduations" 
                                     InitialValue="--select  Graduation--" ValidationGroup="g2">*</asp:RequiredFieldValidator>
 
                             </td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;&nbsp; Institute Graduation:</td>
                             <td class="style17">
                                 &nbsp;&nbsp; &nbsp;Graduation Percentage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Post Graduation:</td>
                         </tr>
                         <tr>
                             <td>
                                 &nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlgradinstitute" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="150px">
                                      <asp:ListItem> -Graduation Institute-</asp:ListItem>
                                     <asp:ListItem>Acharya N.G. Ranga Agricultural University</asp:ListItem>
                                     <asp:ListItem>Rajiv Gandhi University</asp:ListItem>
                                     <asp:ListItem>B.N.Mandal University</asp:ListItem>
                                     <asp:ListItem>Baba Farid University of Health Sciences</asp:ListItem>
                                     <asp:ListItem>Babasaheb Bhimrao Ambedkar Bihar University</asp:ListItem>
                                     <asp:ListItem>Babasaheb Bhimrao Ambedkar University</asp:ListItem>
                                     <asp:ListItem>Barkatullah Vishwavidyalaya</asp:ListItem>
                                     <asp:ListItem>Biju Patnaik University of Technology</asp:ListItem>
                                     <asp:ListItem>Birla Institute of Technology</asp:ListItem>
                                     <asp:ListItem>Chatrapati Shahu ji Maharaj University</asp:ListItem>
                                     <asp:ListItem>Chaudhary Sarwan Kumar Himachal Pradesh Krishi Vishvavidyalaya</asp:ListItem>
                                     <asp:ListItem>Chhatrapati Shahuji Maharaj Medical University</asp:ListItem>
                                     <asp:ListItem>Dr. B.R.Ambedkar Open University</asp:ListItem>
                                     <asp:ListItem>Dr. Babasaheb Ambedkar Marathwada University</asp:ListItem>
                                     <asp:ListItem>Gujarat Ayurved University</asp:ListItem>
                                     <asp:ListItem>Gujarat University</asp:ListItem>
                                     <asp:ListItem>Gujarat Vidyapith</asp:ListItem>
                                     <asp:ListItem>Indian Institute of Technology</asp:ListItem>
                                     <asp:ListItem>Jai Narain Vyas University</asp:ListItem>
                                     <asp:ListItem>Jamia Millia Islamia</asp:ListItem>
                                     <asp:ListItem>M.S. University of Baroda</asp:ListItem>
                                     <asp:ListItem>M.J.P Rohilkhand University</asp:ListItem>
                                     <asp:ListItem>Maharaja Sayajirao University</asp:ListItem>
                                     <asp:ListItem>Maharashtra Animal and Fishery Sciences University</asp:ListItem>
                                     <asp:ListItem>Maharashtra University of Health Sciences</asp:ListItem>
                                     <asp:ListItem>Mahatma Gandhi Antarashtriya Hindi Visvavidyalaya</asp:ListItem>
                                     <asp:ListItem>Potti Sriramulu Telugu University</asp:ListItem>
                                     <asp:ListItem>Sardar Patel University</asp:ListItem>
                                     <asp:ListItem>Saurashtra University</asp:ListItem>
                                     <asp:ListItem>SNDT Womens&#39; University</asp:ListItem>
                                     <asp:ListItem>Veer Narmad South Gujarat University</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>                                     


                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvinstigrad" runat="server" 
                                     ControlToValidate="ddlgradinstitute" 
                                     ErrorMessage="select graduation institutes" 
                                     InitialValue="-Graduation Institute-" ValidationGroup="g2">*</asp:RequiredFieldValidator>
                                 &nbsp;</td>
                             <td class="style17">
                                 &nbsp;&nbsp;
                                 <asp:TextBox ID="txtgradper" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="150px" 
                                    ></asp:TextBox>
                                     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender5" runat="server" 
                                 FilterType="Numbers" TargetControlID="txtgradper">
                             </asp:FilteredTextBoxExtender>
                                 <asp:RequiredFieldValidator ID="rfvgradper" runat="server" 
                                     ControlToValidate="txtgradper" ErrorMessage="enter graduations percentages" 
                                     ValidationGroup="g2">*</asp:RequiredFieldValidator>

                                     <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender8" runat="server" TargetControlID="rfvgradper" Enabled="true">
                           </asp:ValidatorCalloutExtender>

                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlpostgrad" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" 
                                  Width="150px">
                                     <asp:ListItem>--select Post Graduation--</asp:ListItem>
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
                                 <asp:RequiredFieldValidator ID="rfvpostgrad" runat="server" 
                                     ControlToValidate="ddlpostgrad" ErrorMessage="select post graduations" 
                                     InitialValue="         --select Post Graduation--" ValidationGroup="g2">*</asp:RequiredFieldValidator>

                             </td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;&nbsp;&nbsp;Institute Post Graduation:</td>
                             <td class="style17">
                                 &nbsp;&nbsp;&nbsp; &nbsp;Post Graduation Percentage:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Other Educations:-</td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;&nbsp;&nbsp;
                                 <asp:DropDownList ID="ddlpostgradinsti" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" 
                                   Width="150px">
                                       <asp:ListItem> -Graduation Institute-</asp:ListItem>
                                     <asp:ListItem>Acharya N.G. Ranga Agricultural University</asp:ListItem>
                                     <asp:ListItem>Rajiv Gandhi University</asp:ListItem>
                                     <asp:ListItem>B.N.Mandal University</asp:ListItem>
                                     <asp:ListItem>Baba Farid University of Health Sciences</asp:ListItem>
                                     <asp:ListItem>Babasaheb Bhimrao Ambedkar Bihar University</asp:ListItem>
                                     <asp:ListItem>Babasaheb Bhimrao Ambedkar University</asp:ListItem>
                                     <asp:ListItem>Barkatullah Vishwavidyalaya</asp:ListItem>
                                     <asp:ListItem>Biju Patnaik University of Technology</asp:ListItem>
                                     <asp:ListItem>Birla Institute of Technology</asp:ListItem>
                                     <asp:ListItem>Chatrapati Shahu ji Maharaj University</asp:ListItem>
                                     <asp:ListItem>Chaudhary Sarwan Kumar Himachal Pradesh Krishi Vishvavidyalaya</asp:ListItem>
                                     <asp:ListItem>Chhatrapati Shahuji Maharaj Medical University</asp:ListItem>
                                     <asp:ListItem>Dr. B.R.Ambedkar Open University</asp:ListItem>
                                     <asp:ListItem>Dr. Babasaheb Ambedkar Marathwada University</asp:ListItem>
                                     <asp:ListItem>Gujarat Ayurved University</asp:ListItem>
                                     <asp:ListItem>Gujarat University</asp:ListItem>
                                     <asp:ListItem>Gujarat Vidyapith</asp:ListItem>
                                     <asp:ListItem>Indian Institute of Technology</asp:ListItem>
                                     <asp:ListItem>Jai Narain Vyas University</asp:ListItem>
                                     <asp:ListItem>Jamia Millia Islamia</asp:ListItem>
                                     <asp:ListItem>M.S. University of Baroda</asp:ListItem>
                                     <asp:ListItem>M.J.P Rohilkhand University</asp:ListItem>
                                     <asp:ListItem>Maharaja Sayajirao University</asp:ListItem>
                                     <asp:ListItem>Maharashtra Animal and Fishery Sciences University</asp:ListItem>
                                     <asp:ListItem>Maharashtra University of Health Sciences</asp:ListItem>
                                     <asp:ListItem>Mahatma Gandhi Antarashtriya Hindi Visvavidyalaya</asp:ListItem>
                                     <asp:ListItem>Potti Sriramulu Telugu University</asp:ListItem>
                                     <asp:ListItem>Sardar Patel University</asp:ListItem>
                                     <asp:ListItem>Saurashtra University</asp:ListItem>
                                     <asp:ListItem>SNDT Womens&#39; University</asp:ListItem>
                                    <asp:ListItem>Veer Narmad South Gujarat University</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>                                     
</asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvinstipostgrad" runat="server" 
                                     ControlToValidate="ddlpostgradinsti" 
                                     ErrorMessage="select post graduations institutes" 
                                     InitialValue="         --Post Graduation Institute--" ValidationGroup="g2">*</asp:RequiredFieldValidator>
                             </td>
                             <td class="style17">
                                 &nbsp;&nbsp;
                                 <asp:TextBox ID="txtpostgradper" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="150px"></asp:TextBox>
                                      <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender6" runat="server" 
                                 FilterType="Numbers" TargetControlID="txtpostgradper">
                             </asp:FilteredTextBoxExtender>
                                 <asp:RequiredFieldValidator ID="rfvpostgradper" runat="server" 
                                     ControlToValidate="txtpostgradper" 
                                     ErrorMessage="enter post graduations percentages" ValidationGroup="g2">*</asp:RequiredFieldValidator>
                              <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender10" runat="server" TargetControlID="rfvpostgradper" Enabled="true">
                           </asp:ValidatorCalloutExtender>
  
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:TextBox ID="txtphd" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px"
                                     TextMode="MultiLine" Width="150px"></asp:TextBox>
  
                             </td>
                         </tr>
                         <tr>
                             <td class="style16">
                                 &nbsp;</td>
                             <td class="style17">
                                 &nbsp;&nbsp;</td>
                         </tr>
                     </table>
                 </asp:Panel>
                 <asp:Panel ID="profesionalpanel" runat="server" BorderColor="Black" 
                     Font-Bold="True" Font-Italic="False" Font-Size="Medium" ForeColor="Black" 
                     GroupingText="Professional Detail">
                     <table align="center" 
                         style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
                         <tr>
                             <td class="style2" colspan="2">
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Key Skill:</td>
                             <td>
                                 <asp:TextBox ID="txtkeyskill" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="rfvskill" runat="server" 
                                     ControlToValidate="txtkeyskill" ErrorMessage="enter key skills" 
                                     ValidationGroup="g2">enter key skill</asp:RequiredFieldValidator>
                                      <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender13" runat="server" TargetControlID="rfvskill" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender13" runat="server" TargetControlID="txtkeyskill" 
                         WatermarkText="Eg:-Designing,programmer" WatermarkCssClass="WaterMarkedTextBox"> 
                        </asp:TextBoxWatermarkExtender>

                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Industry:</td>
                             <td>
                                 <asp:DropDownList ID="ddlindustry" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>&nbsp;&nbsp;&nbsp; -- select&nbsp; Industry--</asp:ListItem>
                                     <asp:ListItem>Arts &amp; Humanities</asp:ListItem>
                                     <asp:ListItem>Telecom service</asp:ListItem>
                                     <asp:ListItem>Export,Import,Manufecturing</asp:ListItem>
                                     <asp:ListItem>IT-Software development</asp:ListItem>
                                     <asp:ListItem>Logistic-Transpertation/shipping</asp:ListItem>
                                     <asp:ListItem>IT-QA &amp; Testing</asp:ListItem>
                                     <asp:ListItem>Engineering-Mech/Automobile</asp:ListItem>
                                     <asp:ListItem>Geology/Geophysics</asp:ListItem>
                                     <asp:ListItem>Media &amp; Entertainment</asp:ListItem>
                                     <asp:ListItem>Banking &amp; Insurance</asp:ListItem>
                                     <asp:ListItem>Education/Teaching</asp:ListItem>
                                     <asp:ListItem>IT-Client server</asp:ListItem>
                                     <asp:ListItem>IT-Database Application</asp:ListItem>
                                     <asp:ListItem>IT-Internet Technology</asp:ListItem>
                                     <asp:ListItem>Accounting &amp; Finance</asp:ListItem>
                                     <asp:ListItem>Fesion,Garments,Jewellory</asp:ListItem>
                                     <asp:ListItem>Architecture,Interior design</asp:ListItem>
                                     <asp:ListItem>BPO-Call center</asp:ListItem>
                                     <asp:ListItem>Construction project</asp:ListItem>
                                     <asp:ListItem>Creative web graphic design</asp:ListItem>
                                     <asp:ListItem>Data entry services</asp:ListItem>
                                     <asp:ListItem>Marketing/Sales/Retailing</asp:ListItem>
                                     <asp:ListItem>Human Resource Management</asp:ListItem>
                                     <asp:ListItem>Engineering-Gas-Chemical</asp:ListItem>
                                     <asp:ListItem>Security Service</asp:ListItem>
                                     <asp:ListItem>Hospitality</asp:ListItem>
                                     <asp:ListItem>Healthcare-Medical-Nursing</asp:ListItem>
                                     <asp:ListItem>Engineering Design</asp:ListItem>
                                     <asp:ListItem>Manufecturing/maintenance/Quality</asp:ListItem>
                                     <asp:ListItem>Civil Engineering</asp:ListItem>
                                     <asp:ListItem>Electronic Engineering</asp:ListItem>
                                     <asp:ListItem>Advertising</asp:ListItem>
                                     <asp:ListItem>Administrator &amp; Support</asp:ListItem>
                                     <asp:ListItem>IT-Embedded System</asp:ListItem>
                                     <asp:ListItem>IT-Hardware Networking Security</asp:ListItem>
                                     <asp:ListItem>IT-ERP &amp; CRM</asp:ListItem>
                                     <asp:ListItem Value="Medical Transcription">Medical Trascription</asp:ListItem>
                                     <asp:ListItem>BIO-Technology</asp:ListItem>
                                     <asp:ListItem>Web-Development</asp:ListItem>
                                     <asp:ListItem>Production Maintenance Quality</asp:ListItem>
                                     <asp:ListItem>Freshers</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvindustry" runat="server" 
                                     ControlToValidate="ddlindustry" ErrorMessage="select industry" 
                                     InitialValue="&nbsp;&nbsp;&nbsp; -- select&nbsp; Industry--" 
                                     ValidationGroup="g2">select industry</asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender12" runat="server" TargetControlID="rfvindustry" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Industry Role:</td>
                             <td>
                                 <asp:DropDownList ID="ddlindusrole" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>&nbsp;&nbsp; -- select&nbsp; Industry Role --</asp:ListItem>
                                     <asp:ListItem>General Manager</asp:ListItem>
                                     <asp:ListItem>Production manager</asp:ListItem>
                                     <asp:ListItem>Sales manager</asp:ListItem>
                                     <asp:ListItem>Quality manager</asp:ListItem>
                                     <asp:ListItem>Programmer</asp:ListItem>
                                     <asp:ListItem>Designer</asp:ListItem>
                                     <asp:ListItem>Database Administrator</asp:ListItem>
                                     <asp:ListItem>Head of Department</asp:ListItem>
                                     <asp:ListItem>PA</asp:ListItem>
                                     <asp:ListItem>CEO</asp:ListItem>
                                     <asp:ListItem>Asistante</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvindurole" runat="server" 
                                     ControlToValidate="ddlindusrole" ErrorMessage="select industry role" 
                                     InitialValue="&nbsp;&nbsp; -- select&nbsp; Industry Role --" 
                                     ValidationGroup="g2">Choose industry role</asp:RequiredFieldValidator>
                             <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender25" runat="server" TargetControlID="rfvindurole" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Job Profile:</td>
                             <td>
                                 <asp:DropDownList ID="ddljobprofile" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>&nbsp;&nbsp; -- select  Job Profile --</asp:ListItem>
                                     <asp:ListItem>Junior Management</asp:ListItem>
                                     <asp:ListItem>Middle Management</asp:ListItem>
                                     <asp:ListItem>Senior Management</asp:ListItem>
                                     <asp:ListItem>Top Management</asp:ListItem>
                                     <asp:ListItem>Team Management</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvjobprofile" runat="server" 
                                     ControlToValidate="ddljobprofile" ErrorMessage="select job profile" 
                                     InitialValue="         -- select  Job Profile --" ValidationGroup="g2">select job profile</asp:RequiredFieldValidator>
                            <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender21" runat="server" TargetControlID="rfvjobprofile" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Position Type:</td>
                             <td>
                                 <asp:DropDownList ID="ddlpostype" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>&nbsp;&nbsp; -- Select
 Position Type --</asp:ListItem>
                                     <asp:ListItem>Full Time</asp:ListItem>
                                     <asp:ListItem>Part Time</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvpostype" runat="server" 
                                     ControlToValidate="ddlpostype" ErrorMessage="select position types" 
                                     InitialValue="   -- Select
 Position Type --" ValidationGroup="g2">Select position type</asp:RequiredFieldValidator>
                             <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender22" runat="server" TargetControlID="rfvpostype" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Minimum Salary:</td>
                             <td>
                                 <asp:TextBox ID="txtsalary" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server"
                                 TargetControlID="txtsalary" FilterType="Numbers"></asp:FilteredTextBoxExtender>
                                 <asp:RequiredFieldValidator ID="rfvsal" runat="server" 
                                     ControlToValidate="txtsalary" ErrorMessage="enter minimum salary require" 
                                     ValidationGroup="g2">enter minimum salary</asp:RequiredFieldValidator>

                                      <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender14" runat="server" TargetControlID="rfvsal" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                        <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender14" runat="server" TargetControlID="txtsalary" 
                         WatermarkText="Eg:-7000" WatermarkCssClass="WaterMarkedTextBox"> 
                        </asp:TextBoxWatermarkExtender>

                                 &nbsp;&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Currency:</td>
                             <td>
                                 <asp:DropDownList ID="ddlcurrency" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px">
                                     <asp:ListItem>--Currency type--</asp:ListItem>
                                     <asp:ListItem>Rs</asp:ListItem>
                                     <asp:ListItem>$</asp:ListItem>
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvcurrency" runat="server" 
                                     ControlToValidate="ddlcurrency" ErrorMessage="select currency" 
                                     InitialValue="--Currency type--" ValidationGroup="g2">choose currency type</asp:RequiredFieldValidator>
                               <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender24" runat="server" TargetControlID="rfvcurrency" Enabled="true">
                           </asp:ValidatorCalloutExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 Category:</td>
                             <td>
                                 <asp:DropDownList ID="ddljobcategory" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                 </asp:DropDownList>
                                 <asp:RequiredFieldValidator ID="rfvjobcategory" runat="server" 
                                     ControlToValidate="ddljobcategory" ErrorMessage="select job category" 
                                     InitialValue="         -- select  Job Profile --" ValidationGroup="g2">select category</asp:RequiredFieldValidator>
                          
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>
                     </table>
                 </asp:Panel>
                 <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
             <asp:Button ID="btnnext1" runat="server" Height="30px"
                  Text="Continue" Width="100px" Font-Bold="True" Font-Italic="True" 
                  Font-Names="Modern No. 25" Font-Size="Large" onclick="btnnext1_Click" 
                    ValidationGroup="g2" BackColor="#333333" ForeColor="White" />
  

             <asp:RoundedCornersExtender ID="btnnext1_RoundedCornersExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnext1">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnext1_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnext1">
             </asp:DropShadowExtender>
  

         </asp:View>
         <asp:View ID="View3" runat="server"><br /><br />
        
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <asp:Button ID="btnnum7" runat="server" ForeColor="Black" Height="30px" 
                          Text="1" Width="30px" onclick="btnnum7_Click" />
                     <asp:RoundedCornersExtender ID="btnnum7_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum7">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum7_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum7">
             </asp:DropShadowExtender>
                     <asp:Button ID="btnnum8" runat="server" ForeColor="Black" 
                         Height="30px"  Text="2" 
                         Width="30px" onclick="btnnum8_Click"/>
                     <asp:RoundedCornersExtender ID="btnnum8_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum8">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum8_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum8">
             </asp:DropShadowExtender>
                     <asp:Button ID="btnnum9" runat="server" ForeColor="White" Height="30px" 
                          Text="3" Width="30px" BackColor="#333333" 
                 onclick="btnnum9_Click" />
              
          
             
                <asp:RoundedCornersExtender ID="btnnum9_RoundedCornersExtender" 
                 runat="server" Enabled="True" TargetControlID="btnnum9">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnnum9_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnnum9">
             </asp:DropShadowExtender>
              
          
             
                <asp:Panel ID="experiencepanel" runat="server" GroupingText="       Work Experience Detail" 
                 BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
                                    &nbsp;<asp:UpdatePanel ID="UpdatePanel7" runat="server">
                                        <ContentTemplate>
                                            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Small" 
                                                ForeColor="#666666" Text="Work Experience:-"></asp:Label>
                                            &nbsp;
                                            <asp:RadioButton ID="rbtnno" runat="server" AutoPostBack="True" 
                                                Font-Bold="True" Font-Size="Small" ForeColor="#666666" GroupName="exp" 
                                                 Text="NO" oncheckedchanged="rbtnno_CheckedChanged" />
                                            <asp:RadioButton ID="rbtnyes" runat="server" AutoPostBack="True" 
                                                Font-Bold="True" Font-Size="Small" ForeColor="#666666" GroupName="exp" 
                                                Text="YES" oncheckedchanged="rbtnyes_CheckedChanged" />
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                                    
                    <asp:Panel ID="Panel2" runat="server" Visible="False">
                        <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
      
      <tr>
          <td class="style2" colspan="2">
              &nbsp;</td>
          
      </tr>
      <tr>
          <td class="style12">
              </td>
          <td class="style13">
              Company name:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Month:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;job 
              Post&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Leave Resion:</td>
      </tr>
      <tr>
          <td class="style15">
              Current employer:</td>
          <td class="style11">
              <asp:TextBox ID="txtcompname" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpyear" runat="server" Height="27px" Width="40px" 
                  Wrap="False" ForeColor="#606060" ontextchanged="txtexpyear_TextChanged"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpmonth" runat="server" Height="27px" Width="40px" 
                  Wrap="False" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpskill" runat="server" Height="27px" ForeColor="#606060" 
                  Width="100px"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtreasion" runat="server" Height="27px" Rows="4" 
                  TextMode="MultiLine" Width="100px"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="style15">
              Previos employer:</td>
          <td class="style11">
              <asp:TextBox ID="txtcompname1" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpyear1" runat="server" Height="27px" 
                   Width="40px" Wrap="False" 
                  ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpmonth1" runat="server" Height="27px" Width="40px" 
                  Wrap="False" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpskill1" runat="server" Height="27px" ForeColor="#606060" 
                  Width="100px"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtreasion1" runat="server" Height="27px" Rows="4" 
                  TextMode="MultiLine" Width="100px"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="style15">
              Past employer:</td>
          <td class="style11">
              <asp:TextBox ID="txtcompname2" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="txtexpyear2" 
                  runat="server" Height="27px" 
                   Width="40px" Wrap="False" 
                  ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpmonth2" runat="server" Height="27px" Width="40px" 
                  Wrap="False" ForeColor="#606060"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtexpskill2" runat="server" Height="27px" ForeColor="#606060" 
                  Width="100px"></asp:TextBox>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:TextBox ID="txtreasion2" runat="server" Height="27px" Rows="4" 
                  TextMode="MultiLine" Width="100px"></asp:TextBox>
          </td>
      </tr>
      <tr>
          <td class="style1" colspan="2" 
              style="font-size: large; color: #000000;">&nbsp;</td>
          
      </tr></table>
       </asp:Panel>
    </asp:Panel>
      <br />
      
      <asp:Panel ID="langpanel" runat="server" GroupingText="       Languages known Detail" 
                 BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
             
                  <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
      
      <tr>
          <td class="style2" colspan="2">&nbsp;</td>
          
      </tr>
      <tr>
          <td class="style12">
              Language Know:</td>
          <td class="style13">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Read:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;Write:&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;Speak:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
      </tr>
      <tr>
          <td class="style15">
              <asp:TextBox ID="txtlang1" runat="server" Height="27px" ForeColor="#606060" ></asp:TextBox>
          </td>
          <td class="style11">
              <asp:RequiredFieldValidator ID="rfvlan" runat="server" 
                  ControlToValidate="txtlang1" ErrorMessage="write the language known" 
                  ValidationGroup="g3">*</asp:RequiredFieldValidator>
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkread1" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="chkwrite1" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="chkspeak1" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender19" runat="server" TargetControlID="rfvlan" Enabled="true">
                        </asp:ValidatorCalloutExtender>
               
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:TextBox ID="txtlang2" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:CheckBox ID="chkread2" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:CheckBox ID="chkwrite2" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkspeak2" runat="server" />
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:TextBox ID="txtlang3" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkread3" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkwrite3" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkspeak3" runat="server" />
          </td>
      </tr>
      <tr>
          <td class="style15">
              <asp:TextBox ID="txtlang4" runat="server" Height="27px" ForeColor="#606060"></asp:TextBox>
          </td>
          <td class="style11">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkread4" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkwrite4" runat="server" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <asp:CheckBox ID="chkspeak4" runat="server" />
          </td>
      </tr>
      </table></asp:Panel>
<asp:Panel ID="loginpanel" runat="server" GroupingText="       Login Detail" 
                 BorderColor="Black" Font-Bold="True" Font-Italic="False" Font-Size="Medium" 
                 ForeColor="Black">
             
                  <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;" 
                      align="center">
      
      <tr>
          <td class="style2" colspan="2"></td>
          
      </tr>
      <tr>
          
          <td class="style3">
              &nbsp; User Name:</td>
          <td>
              <asp:UpdatePanel ID="UpdatePanel8" runat="server">
                  <ContentTemplate>
                      <asp:TextBox ID="txtuname" runat="server" CausesValidation="True" 
                          ForeColor="#606060" Height="27px" Width="300px" AutoPostBack="True" 
                          ontextchanged="txtuname_TextChanged"></asp:TextBox>
                      <asp:RequiredFieldValidator ID="valuname" runat="server" 
                          ControlToValidate="txtuname" ValidationGroup="g3">*</asp:RequiredFieldValidator>
                      <asp:Label ID="Label2" runat="server" Text="plz,change the user name" 
                          Visible="False"></asp:Label>

                           <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender15" runat="server" TargetControlID="valuname" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender15" runat="server" TargetControlID="txtuname" 
                    WatermarkText="Eg:- Pintu_27" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>
                  </ContentTemplate>
              </asp:UpdatePanel>
          </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp; Password:</td>
          <td>
              <asp:TextBox ID="txtpwd" runat="server" Height="27px" Width="300px" 
                  TextMode="Password" ForeColor="#606060" CausesValidation="True"></asp:TextBox>
                  <br />
                  <asp:Label ID="lblpwd" runat="server"></asp:Label>
        <asp:PasswordStrength ID="PasswordStrength1" runat="server" TargetControlID="txtpwd"
                    DisplayPosition="RightSide"
            StrengthIndicatorType="Text"
            PreferredPasswordLength="6" 
            PrefixText="Strength:"
            HelpStatusLabelID="lblpwd"
            TextStrengthDescriptions="Very Poor;Weak;Average;Strong;Excellent"
            StrengthStyles="TextIndicator_TextBox1_Strength1;TextIndicator_TextBox1_Strength2;TextIndicator_TextBox1_Strength3;TextIndicator_TextBox1_Strength4;TextIndicator_TextBox1_Strength5"
            MinimumNumericCharacters="1"
            MinimumSymbolCharacters="1"
            RequiresUpperAndLowerCaseCharacters="false"></asp:PasswordStrength>
              <asp:RequiredFieldValidator ID="rfvpwd" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="txtpwd" 
                  ValidationGroup="g3">Enter password</asp:RequiredFieldValidator>

                   <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender16" runat="server" TargetControlID="rfvpwd" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                  
          </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp; Confirm-Pwd:</td>
          <td>
              <asp:TextBox ID="txtcpwd" runat="server" Height="27px" Width="300px" 
                  TextMode="Password" ForeColor="#606060" CausesValidation="True"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvconpwd" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="txtcpwd" 
                  ValidationGroup="g3">*</asp:RequiredFieldValidator>
              <asp:CompareValidator ID="cvconpwd" runat="server" ControlToCompare="txtpwd" 
                  ControlToValidate="txtcpwd" ValidationGroup="g3">password does not match</asp:CompareValidator>
                    <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender17" runat="server" TargetControlID="rfvconpwd" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                 
          </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp; Security Question:</td>
          <td>
              <asp:DropDownList ID="ddlque" runat="server" Height="27px" Width="300px" 
                  ForeColor="#606060" CausesValidation="True" >
              </asp:DropDownList>
              <asp:RequiredFieldValidator ID="rfvsequrityque" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="ddlque" 
                  InitialValue="-- select  Question --" ValidationGroup="g3">select security que</asp:RequiredFieldValidator>
                   <asp:ValidatorCalloutExtender
                            ID="ValidatorCalloutExtender18" runat="server" TargetControlID="rfvans" Enabled="true">
                        </asp:ValidatorCalloutExtender>
                    <asp:TextBoxWatermarkExtender ID="TextBoxWatermarkExtender18" runat="server" TargetControlID="txtans" 
                    WatermarkText="Eg:-Enter ans of the question" WatermarkCssClass="WaterMarkedTextBox"> 
                    </asp:TextBoxWatermarkExtender>

          </td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp; Ans:</td>
          <td>
              <asp:TextBox ID="txtans" runat="server" EnableViewState="False" Height="27px" 
                  Width="300px" ForeColor="#606060" 
                  CausesValidation="True"></asp:TextBox>
              <asp:RequiredFieldValidator ID="rfvans" runat="server" 
                  ErrorMessage="RequiredFieldValidator" ControlToValidate="txtans" 
                  ValidationGroup="g3">Enter security question&#39;s answer</asp:RequiredFieldValidator>
          </td>
      </tr> <tr>
            <td></td>
            <td> <asp:Image ID="ImgCaptcha" runat="server" ImageUrl="~/captcha.ashx" /><br /></td>
            </tr>
            <tr>
                
                <td>&nbsp;Enter Verification Code:&nbsp;
       </td>
       <td>  <asp:TextBox ID="txtInput" runat="server" Height="27px" Width="300px"></asp:TextBox>
           &nbsp;<asp:Label ID="lblmsg" runat="server"></asp:Label>
           <br /></td>
                <caption>
                    <br />
                </caption>
            </tr>
           
      
     
      </table></asp:Panel>

      <br /><br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
      <asp:Button ID="btnac" runat="server" Height="30px"
                  Text="Create Account" Width="250px" Font-Bold="True" Font-Italic="True" 
                  Font-Names="Modern No. 25" Font-Size="Large" ValidationGroup="g3" 
                 onclick="btnac_Click" BackColor="#333333" ForeColor="White" 
                 />


                 
                 
             <asp:RoundedCornersExtender ID="btnac_RoundedCornersExtender" runat="server" 
                 Enabled="True" TargetControlID="btnac">
             </asp:RoundedCornersExtender>
             <asp:DropShadowExtender ID="btnac_DropShadowExtender" runat="server" 
                 Enabled="True" TargetControlID="btnac">
             </asp:DropShadowExtender>


                 
                 
             <br />
             <asp:ValidationSummary ID="ValidationSummary4" runat="server" 
                 ShowMessageBox="True" ShowSummary="False" ValidationGroup="g3" />


                 
                 
         </asp:View>
     </asp:MultiView>
 
</asp:Content>

