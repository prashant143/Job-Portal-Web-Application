<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="jobseeker_login" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <body>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
      

             <table align="center"  width="50%">
                        <tr>
        <td colspan="2"><div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Log In&nbsp;</h1>
</div><br /><hr /><hr /><br /></td>
     </tr>
                        <tr>
                            <td colspan="2" style="color:Maroon; font-size:25px; font-family:Monotype Corsiva;">
                                <asp:RadioButton ID="rbtnjobseeker" runat="server" GroupName="login" 
                                    Text="Jobseeker" Font-Bold="True" Font-Size="X-Large" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                <asp:RadioButton ID="rbtncompany"
                                    runat="server" GroupName="login" 
                                    Text="Company" Font-Bold="True" Font-Size="X-Large" />&nbsp;&nbsp;<br />
                            </td>
           
                        </tr>
                        <tr>
                            <td colspan="2">
                                <br /><asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
                            </td>
                       
                        </tr>
                        <tr>
                            <td style="width:20%;">&nbsp;UserName:</td>
                            <td>
                                <asp:TextBox ID="txtuname" runat="server" Height="27px" CausesValidation="True" 
                                    Width="170px"></asp:TextBox>
                                <asp:RoundedCornersExtender ID="txtuname_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtuname">
                                </asp:RoundedCornersExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ErrorMessage="Enter username" ControlToValidate="txtuname" 
                                    ValidationGroup="login2"></asp:RequiredFieldValidator>    
                            </td>
                        </tr>
                        <tr>
                            <td style="width:20%;">Password:</td>
                            <td>
                                <asp:TextBox ID="txtpass" runat="server" TextMode="Password" Height="27px" 
                                    CausesValidation="True"  Width="170px"></asp:TextBox>
                                <asp:RoundedCornersExtender ID="txtpass_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtpass">
                                </asp:RoundedCornersExtender>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ErrorMessage="Enter Password" ControlToValidate="txtpass" 
                                    ValidationGroup="login2"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:CheckBox ID="chkkeep" runat="server" Text="Keep me signed in" 
                                 />
                                <br />
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnlogin" runat="server" Text="Login" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" 
                                  Width="104px"  ValidationGroup="login2" onclick="btnlogin_Click" />
                               
                                <asp:DropShadowExtender ID="btnlogin_DropShadowExtender" runat="server" 
                                    Enabled="True" TargetControlID="btnlogin">
                                </asp:DropShadowExtender>
                               
                                <br />
                               
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" style="color:#424A55; font-size:15px; font-style: italic;">
                                <a href="forgotpwd.aspx">Forgot password</a><br />
                                <br />If You Don&#39;t&nbsp; have Account then
                            <a href="jobseeker_register.aspx">Registration</a> <br />
                                <br />
                            </td>
                        </tr>

                    </table>

           
</body>
</asp:Content>

