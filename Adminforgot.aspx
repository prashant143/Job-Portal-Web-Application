<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Adminforgot.aspx.cs" Inherits="Adminforgot" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>

     <table align="center" width="65%">
     <tr>
        <td colspan="2"><div class="article"><h1 style="color:White;">Admin Forgot Password&nbsp;</h1>
</div><br /><hr /><hr /><br /></td>
     </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblnot" runat="server" ForeColor="#FF3300" ></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td>User Name:</td>
                            <td>
                            
                                <asp:TextBox ID="txtuname" runat="server" Height="28px" Width="250px" 
                                   ></asp:TextBox>
                                <asp:RoundedCornersExtender ID="txtuname_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtuname">
                                </asp:RoundedCornersExtender>
                                <asp:RequiredFieldValidator ID="rfvuname" runat="server" 
                                    ControlToValidate="txtuname" ValidationGroup="v" 
                                    ErrorMessage="Enter username"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>Security Question:</td>
                            <td>
                                <asp:DropDownList ID="ddlque" runat="server" Width="250px" Height="28px">
                                    <asp:ListItem Selected="True">--select Questions--</asp:ListItem>
                                </asp:DropDownList>
                                <asp:RoundedCornersExtender ID="ddlque_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="ddlque">
                                </asp:RoundedCornersExtender>
                                <asp:RequiredFieldValidator ID="rfvque" runat="server" 
                                    ControlToValidate="ddlque" ValidationGroup="v" 
                                    InitialValue="--select Questions--" ErrorMessage="Select questions"></asp:RequiredFieldValidator>
                               </td>
                               
                        </tr>
                        <tr>
                            <td>
                                Ans:</td>
                            <td>
                                <asp:TextBox ID="txtans" runat="server" Height="28px" Width="250px"></asp:TextBox>
                                <asp:RoundedCornersExtender ID="txtans_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="txtans">
                                </asp:RoundedCornersExtender>
                                <asp:RequiredFieldValidator ID="rfvans" runat="server" 
                                    ControlToValidate="txtans" ValidationGroup="v" ErrorMessage="Enter answer"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                &nbsp;</td>
                            <td>
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td colspan="2" align="center">
                                <asp:Button ID="btnlogin" runat="server" Text="Forgot password" Font-Bold="True" 
                                    Font-Names="Arial" Font-Size="Medium" Height="33px" 
                                    Width="150px" ValidationGroup="v" onclick="btnlogin_Click" 
                                    BackColor="#333333" ForeColor="White" />
                               
                                <asp:RoundedCornersExtender ID="btnlogin_RoundedCornersExtender" runat="server" 
                                    Enabled="True" TargetControlID="btnlogin">
                                </asp:RoundedCornersExtender>
                                <asp:DropShadowExtender ID="btnlogin_DropShadowExtender" runat="server" 
                                    Enabled="True" TargetControlID="btnlogin">
                                </asp:DropShadowExtender>
                               
                            </td>
                        </tr>

                    </table>


</asp:Content>

