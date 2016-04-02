<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="edit_professional_info.aspx.cs" Inherits="edit_professional_info" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

                     <table align="center" 
                         style="width: 100%; font-size: medium; color: #606060; font-weight: normal; font-family: David;">
                         <tr>
                             <td class="style2" colspan="2">
                             </td>
                         </tr>
                          <tr>
                             <td class="style2" colspan="2">
                                 &nbsp;<asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                                 </asp:ToolkitScriptManager>
                                <div class="article"> <h1 style="color:White;">Edit Professional Information</h1></div></td>
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
                             <td class="style3" style="font-weight: bold">
                                 Key Skill:</td>
                             <td>
                                 <asp:TextBox ID="txtkeyskill" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px"></asp:TextBox>
                                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                     ControlToValidate="txtkeyskill" ErrorMessage="Enter key skill name" 
                                     ValidationGroup="p"></asp:RequiredFieldValidator>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Industry:</td>
                             <td>
                                 <asp:DropDownList ID="ddlindustry" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>         -- select  Industry--</asp:ListItem>
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
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Industry Role:</td>
                             <td>
                                 <asp:DropDownList ID="ddlindusrole" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>         -- select  Industry Role --</asp:ListItem>
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
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Job Profile:</td>
                             <td>
                                 <asp:DropDownList ID="ddljobprofile" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>         -- select  Job Profile --</asp:ListItem>
                                     <asp:ListItem>Junior Management</asp:ListItem>
                                     <asp:ListItem>Middle Management</asp:ListItem>
                                     <asp:ListItem>Senior Management</asp:ListItem>
                                     <asp:ListItem>Top Management</asp:ListItem>
                                     <asp:ListItem>Team Management</asp:ListItem>
                                     <asp:ListItem>Other</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Position Type:</td>
                             <td>
                                 <asp:DropDownList ID="ddlpostype" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                     <asp:ListItem>         -- select  Position Type --</asp:ListItem>
                                     <asp:ListItem>Full Time</asp:ListItem>
                                     <asp:ListItem>Freelance</asp:ListItem>
                                     <asp:ListItem>Project Based</asp:ListItem>
                                     <asp:ListItem>Part Time</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Minimum Salary:</td>
                             <td>
                                 <asp:TextBox ID="txtsalary" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px"></asp:TextBox>
                                 <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1" runat="server" FilterType="Numbers" TargetControlID="txtsalary">
                                 </asp:FilteredTextBoxExtender>
                                 &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                     ControlToValidate="txtsalary" ErrorMessage="Enter salary" ValidationGroup="p"></asp:RequiredFieldValidator>
&nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Currency:</td>
                             <td>
                                 <asp:DropDownList ID="ddlcurrency" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px">
                                     <asp:ListItem>--Currency type--</asp:ListItem>
                                     <asp:ListItem>Rs</asp:ListItem>
                                     <asp:ListItem>$</asp:ListItem>
                                 </asp:DropDownList>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3" style="font-weight: bold">
                                 Category:</td>
                             <td>
                                 <asp:DropDownList ID="ddljobcategory" runat="server" CausesValidation="True" 
                                     ForeColor="#606060" Height="27px" Width="250px">
                                 </asp:DropDownList>
                             </td>
                         </tr>
                          <tr>
                             <td class="style16">
                                 &nbsp;</td>
                             <td class="style17">
                                 &nbsp;</td>
                         </tr>
                         <tr>
                             <td class="style16" colspan="2">
                                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                 <asp:Button ID="btnedit" runat="server" BackColor="#333333" Font-Bold="True" 
                                     Font-Names="Book Antiqua" Font-Size="Large" ForeColor="White" Height="35px" 
                                     Text="Edit" Width="104px" onclick="btnedit_Click" ValidationGroup="p" />
                                 <asp:RoundedCornersExtender ID="btnedit_RoundedCornersExtender" runat="server" 
                                     Enabled="True" TargetControlID="btnedit">
                                 </asp:RoundedCornersExtender>
                                 <asp:DropShadowExtender ID="btnedit_DropShadowExtender" runat="server" 
                                     Enabled="True" TargetControlID="btnedit">
                                 </asp:DropShadowExtender>
                             </td>
                         </tr>
                         <tr>
                             <td class="style3">
                                 &nbsp;</td>
                             <td>
                                 &nbsp;</td>
                         </tr>

                     </table>
               

</asp:Content>

