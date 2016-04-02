<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="change_pwd2.aspx.cs" Inherits="change_pwd2" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%;">
        <tr>
            <td colspan="2">
                <div class="article"><h1 style="color:White;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Change Password</h1></div>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<hr />
            </td>
           
        </tr>
        <tr>
            <td>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Old Password:</td>
            <td>
                &nbsp;<asp:TextBox ID="txtoldpwd" runat="server" Height="27px" 
                     Width="250px" TextMode="Password"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="rfvoldpwd" runat="server" ControlToValidate="txtoldpwd" 
                    ErrorMessage="Enter the old password" ValidationGroup="change">Enter the old password</asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; New Password: <td>
                &nbsp;<asp:TextBox ID="txtnewpwd" runat="server" 
                    Height="27px" Width="250px" 
                    TextMode="Password" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvnewpwd" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="Enter the new password" 
                    ValidationGroup="change">Enter the new password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Retype New Password:&nbsp;</td>
            <td>
                &nbsp;<asp:TextBox ID="txtretypepwd" runat="server" Height="27px" Width="250px" 
                    TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvretype" runat="server" 
                    ControlToValidate="txtretypepwd" ErrorMessage="Enter the retype password" 
                    ValidationGroup="change">Enter the retype password</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="cvmatch" runat="server" ControlToCompare="txtnewpwd" 
                    ControlToValidate="txtretypepwd" ErrorMessage="password doesn't match" 
                    ValidationGroup="change">password doesn&#39;t match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" ForeColor="#CC0000"></asp:Label>
                &nbsp;</td>
            
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnchangepwd" runat="server" Text="Change Password" 
                    onclick="btnchangepwd_Click" ValidationGroup="change" BackColor="#333333" 
                    Font-Bold="True" Font-Size="Small" ForeColor="White" Height="35px" 
                    Width="195px" />
                <asp:RoundedCornersExtender ID="btnchangepwd_RoundedCornersExtender" 
                    runat="server" Enabled="True" TargetControlID="btnchangepwd">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="btnchangepwd_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="btnchangepwd">
                </asp:DropShadowExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" Width="100px" 
                    onclick="btnreset_Click" BackColor="#333333" Font-Bold="True" 
                    Font-Size="Small" ForeColor="White" Height="35px" />
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

