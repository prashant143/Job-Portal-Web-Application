<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="edit_company_profile.aspx.cs" Inherits="edit_company_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <table style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
      <tr>
          <td class="style4" colspan="2">
              <div class="article"><h1 style="color:White;"> Company Information</h1></div>
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
              <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
              </asp:ToolkitScriptManager>
              <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
          </td>
          
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Name:</td>
          <td class="style4">
              <asp:TextBox ID="txtcname" runat="server" Height="30px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                  ControlToValidate="txtcname" ErrorMessage="Enter company name" 
                  ValidationGroup="v1">Enter company name</asp:RequiredFieldValidator>
              <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender1" runat="server" TargetControlID="RequiredFieldValidator1">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Address&nbsp;:</td>
          <td class="style4">
              <asp:TextBox ID="txtaddress" runat="server" Height="30px" Width="250px" 
              Rows="5" TextMode="MultiLine"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                  ControlToValidate="txtaddress" ErrorMessage="Enter address" 
                  ValidationGroup="v1">Enter address</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender3" runat="server" TargetControlID="RequiredFieldValidator2">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Country:</td>
          <td class="style4">
              <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                  <ContentTemplate>
                      <asp:DropDownList ID="ddlcountry" runat="server" Height="30px" 
                          Width="250px" 
                          AutoPostBack="True" 
                          onselectedindexchanged="ddlcountry_SelectedIndexChanged">
                      </asp:DropDownList>
                  </ContentTemplate>
              </asp:UpdatePanel>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
          
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; State:</td>
          <td class="style4">
              <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                  <ContentTemplate>
                      <asp:DropDownList ID="ddlstate" runat="server" Height="30px" 
                          Width="250px" 
                          AutoPostBack="True" onselectedindexchanged="ddlstate_SelectedIndexChanged">
                      </asp:DropDownList>
                  </ContentTemplate>
              </asp:UpdatePanel>
          </td>
      </tr>
      <tr>
        <td class="style3" style="font-weight: bold">
        
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; City:</td>
        <td class="style4">
            <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                <ContentTemplate>
                    <asp:DropDownList ID="ddlcity" runat="server" 
    Height="30px" Width="250px" AutoPostBack="True">
                    </asp:DropDownList>
                </ContentTemplate>
            </asp:UpdatePanel>
          </td>
      </tr>
      
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ZipCode:</td>
          <td class="style4">
              <asp:TextBox ID="txtzipcode" runat="server" Height="30px" Width="250px" 
                  Font-Names="Arial"></asp:TextBox>
              <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" TargetControlID="txtzipcode"
              FilterType="Numbers">
              </asp:FilteredTextBoxExtender>
              <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender2" runat="server" TargetControlID="RequiredFieldValidator3">
              </asp:ValidatorCalloutExtender>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                  ControlToValidate="txtzipcode" ErrorMessage="Enter zip code" 
                  ValidationGroup="v1">enter zip code</asp:RequiredFieldValidator>
          </td>
      </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Category:</td>
          <td class="style4">
              <asp:DropDownList ID="ddljobcategory" runat="server" Height="30px" 
                  Width="250px">

                  <asp:ListItem>--select industry type--</asp:ListItem>
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
                                     <asp:ListItem>Medical Trascription</asp:ListItem>
                                     <asp:ListItem>BIO-Technology</asp:ListItem>
                                     <asp:ListItem>Web-Development</asp:ListItem>
                                     <asp:ListItem>Production Maintenance Quality</asp:ListItem>
                                     <asp:ListItem>Freshers</asp:ListItem>
              </asp:DropDownList>
          </td>
      </tr>
                     <tr>
                         <td class="style3" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company Type:</td>
                         <td class="style4">
                             <asp:DropDownList ID="ddlcompanytype" runat="server" Height="30px" 
                                 Width="250px" onselectedindexchanged="ddlcompanycat_SelectedIndexChanged">
                             <asp:ListItem>--select Company type--</asp:ListItem>
                             <asp:ListItem>Government</asp:ListItem>
                        <asp:ListItem>Private</asp:ListItem>
                        <asp:ListItem>Project based</asp:ListItem>
                             </asp:DropDownList>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                 ControlToValidate="ddlcompanytype" ErrorMessage="Choose company category" 
                                 InitialValue="--select Company type--" ValidationGroup="v1">Choose company Category</asp:RequiredFieldValidator>
                         <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender5" runat="server" TargetControlID="RequiredFieldValidator5">
              </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
                     <tr>
                         <td class="style3" style="font-weight: bold">
                             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company_detail:</td>
                         <td class="style4">
                             <asp:TextBox ID="txtcompdetail" runat="server" Height="30px" Rows="5" 
                                 TextMode="MultiLine" Width="250px"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                 ControlToValidate="txtcompdetail" ErrorMessage="Enter company detai" 
                                 ValidationGroup="v1">Enter company detail</asp:RequiredFieldValidator>
                                 <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender6" runat="server" TargetControlID="RequiredFieldValidator6">
              </asp:ValidatorCalloutExtender>
                         </td>
                     </tr>
      <tr>
          <td class="style3" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Company_logo:</td>
          <td class="style4">
              &nbsp;<asp:Image ID="Image1" runat="server" Height="50px" Width="50px" />
&nbsp;&nbsp;&nbsp;
                    <asp:FileUpload ID="FileUpload1" runat="server" Height="30px" Width="250px" 
                        ForeColor="#666666" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                  ControlToValidate="FileUpload1" ErrorMessage="plz,choose file" 
                  ValidationGroup="v1">Choose file</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender7" runat="server" TargetControlID="RequiredFieldValidator7">
              </asp:ValidatorCalloutExtender>
                </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact_Person:</td>
          <td class="style4">
              <asp:TextBox ID="txtcperson" runat="server" Height="30px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                  ControlToValidate="txtcperson" ErrorMessage="Enter contact person" 
                  ValidationGroup="v1">Enter contact person</asp:RequiredFieldValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender8" runat="server" TargetControlID="RequiredFieldValidator8">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email_id:</td>
          <td class="style4">
              
              
              <asp:TextBox ID="txtemail" runat="server" Height="30px" Width="250px"></asp:TextBox>
              
              
              <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                  ControlToValidate="txtemail" ErrorMessage="Enter email-id" ValidationGroup="v1">Enter email-id</asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                  ControlToValidate="txtemail" ErrorMessage="enter proper email-id" 
                  ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                  ValidationGroup="v1">Enter proper email-id</asp:RegularExpressionValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender9" runat="server" TargetControlID="RequiredFieldValidator9">
              </asp:ValidatorCalloutExtender>
              
              
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No:</td>
          <td class="style4">
              <asp:TextBox ID="txtcno" runat="server" Height="30px" Width="250px" 
                  Font-Names="Arial" MaxLength="10"></asp:TextBox>
                     <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender2" runat="server" TargetControlID="txtcno" FilterType="Numbers">
              </asp:FilteredTextBoxExtender>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                  ControlToValidate="txtcno" ErrorMessage="Enter contact no" ValidationGroup="v1">Enter contact no</asp:RequiredFieldValidator>
          <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender10" runat="server" TargetControlID="RequiredFieldValidator10">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      <tr>
          <td class="style5" style="font-weight: bold">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Website:</td>
          <td class="style4">
              <asp:TextBox ID="txtwebsite" runat="server" Height="30px" Width="250px"></asp:TextBox>
              <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                  ControlToValidate="txtwebsite" ErrorMessage="enter website" 
                  ValidationGroup="v1">Enter Website</asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                  ControlToValidate="txtwebsite" ErrorMessage="Enter proper website" 
                  ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" 
                  ValidationGroup="v1">Enter Proper website</asp:RegularExpressionValidator>
                  <asp:ValidatorCalloutExtender ID="ValidatorCalloutExtender11" runat="server" TargetControlID="RequiredFieldValidator11">
              </asp:ValidatorCalloutExtender>
          </td>
      </tr>
      <tr>
          <td class="style5">
              &nbsp;</td>
          <td class="style4">
              &nbsp;</td>
      </tr>
      <tr>
          <td class="style5" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Text="Edit" Width="104px" onclick="btnedit_Click" 
                  ValidationGroup="v1" />
              <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                  Enabled="True" TargetControlID="btnedit">
              </asp:RoundedCornersExtender>
              <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                  Enabled="True" TargetControlID="btnedit">
              </asp:DropShadowExtender>
              &nbsp;</td>
          
      </tr>
      <tr>
          <td class="style3">
              &nbsp;</td>
          <td class="style4">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:ValidationSummary 
                  ID="ValidationSummary1" runat="server" ShowMessageBox="True" 
                  ShowSummary="False" ValidationGroup="v1" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              &nbsp;</td>
      </tr>
      <tr>
          <td class="style3">
              &nbsp;</td>
          <td class="style4">
              &nbsp;</td>
      </tr>
                     </table>

</asp:Content>

