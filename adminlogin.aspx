<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="adminlogin.aspx.cs" Inherits="adminlogin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<style type="text/css">
        .style1
        {
            width: 255px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
      
        <asp:MultiView ID="MultiView1" runat="server">
            <asp:View ID="View1" runat="server">

             <table align="center"  width="50%">
                        <tr>
        <td colspan="2"><div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;Admin Log In&nbsp;</h1>
</div><br /><hr /><hr /></td>
     </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblerror" runat="server" ForeColor="#CC0000"></asp:Label>
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
                                <a href="Adminforgot.aspx">Forgot password</a><br />
                            </td>
                        </tr>

                    </table>

            </asp:View>
            <asp:View ID="View2" runat="server">
           
             <table align="center"  width="50%" border="5px" style="border-color:Black">
                        <tr>
        <td colspan="2"><div class="article"><h1 style="color:White;"> Varify Step-2</h1>
</div><br /></td>
     </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="Label2" runat="server" ForeColor="#CC0000"></asp:Label>
                            </td>
                       
                        </tr>
                        <tr style="font-size: 12px; color: #000000; font-weight: bold">
                            <td >Enter varification Code:</td>
                            <td class="style1">
                                <asp:TextBox ID="TextBox1" runat="server" Height="27px" 
                                   Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td class="style1">
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="Button1" runat="server" Text="Submit" BackColor="#333333" Font-Bold="True" 
                                  Font-Names="Book Antiqua" Font-Size="Large" 
                  ForeColor="White" Height="35px" onclick="Button1_Click"
                                  Width="104px"  />
                               
                                <asp:DropShadowExtender ID="DropShadowExtender1" runat="server" 
                                    Enabled="True" TargetControlID="Button1">
                                </asp:DropShadowExtender>
                               
                                <br />
                               
                            </td>
                        </tr>
                        
                    </table>
  <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
    
            </asp:View>
        </asp:MultiView>
</asp:Content>

