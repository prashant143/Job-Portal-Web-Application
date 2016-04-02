<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feeback" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
        <table width="70%" align="center">
        <tr>
            <td colspan="2"> <div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; FeedBack</h1></div><br />
       </td>
        </tr>
            <tr>
                <td>
                    Name:
                </td>
                <td>
                    <asp:TextBox ID="txtname" runat="server" Height="33px" Width="278px" 
                        CausesValidation="True" ></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvalname" runat="server" 
                        ErrorMessage="Enter name" ControlToValidate="txtname" 
                        ValidationGroup="feed"></asp:RequiredFieldValidator>
                </td>
            </tr>

            <tr>
                <td>
                    Email-id:
                </td>
                <td>
                    <asp:TextBox ID="txtemail" runat="server" Height="32px" Width="278px" 
                        CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="Enter email-id" 
                        ValidationGroup="feed"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="txtemail" ErrorMessage="enter proper email-id" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                        ValidationGroup="feed"></asp:RegularExpressionValidator>
                </td>
            </tr>

            <tr>
                <td>
                    Message:
                </td>
                <td>
                    <asp:TextBox ID="txtcontent" runat="server" TextMode="MultiLine" Rows="7" 
                        Height="170px" Width="278px" CausesValidation="True"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rvalcontent" runat="server" ErrorMessage="Enter feedback msg" 
                        ControlToValidate="txtcontent" ValidationGroup="feed"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnfeedback" runat="server" Text="Submit" Height="41px" 
                        Width="75px" ValidationGroup="feed" onclick="btnfeedback_Click" 
                        BackColor="#333333" Font-Bold="True" Font-Names="Arial" Font-Size="Medium" 
                        ForeColor="White" />
                    <asp:RoundedCornersExtender ID="btnfeedback_RoundedCornersExtender" 
                        runat="server" Enabled="True" TargetControlID="btnfeedback">
                    </asp:RoundedCornersExtender>
                    <asp:DropShadowExtender ID="btnfeedback_DropShadowExtender" runat="server" 
                        Enabled="True" TargetControlID="btnfeedback">
                    </asp:DropShadowExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="btnreset" runat="server" Text="Reset" Height="41px" 
                        onclick="btnreset_Click" Width="75px" BackColor="#333333" Font-Bold="True" 
                        Font-Italic="False" Font-Size="Medium" ForeColor="White" />
                    <asp:RoundedCornersExtender ID="btnreset_RoundedCornersExtender" runat="server" 
                        Enabled="True" TargetControlID="btnreset">
                    </asp:RoundedCornersExtender>
                    <asp:DropShadowExtender ID="btnreset_DropShadowExtender" runat="server" 
                        Enabled="True" TargetControlID="btnreset">
                    </asp:DropShadowExtender>
                </td>
            </tr>
        </table>
  
</asp:Content>

