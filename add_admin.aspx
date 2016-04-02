<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="add_admin.aspx.cs" Inherits="add_admin" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table style="width: 100%;">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
        <tr>
            <td colspan="2">
              <div class="article"> <h1 style="color:White;"> Add Admin</h1></div>
            </td>
           
        </tr>
        <tr>
            <td colspan="2">
                <hr />
            </td>
           
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Admin Name:</td>
            <td>
                &nbsp;<asp:TextBox 
                    ID="txtadmin" runat="server" Height="27px" 
                     Width="250px" AutoPostBack="True" ontextchanged="txtadmin_TextChanged"></asp:TextBox>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Admin Already Exists" Visible="False"></asp:Label>
                <asp:RequiredFieldValidator ID="rfvoldpwd" runat="server" ControlToValidate="txtadmin" 
                    ErrorMessage="Enter the old password" ValidationGroup="change">Enter Admin name</asp:RequiredFieldValidator>
&nbsp;</td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Password: <td>
                &nbsp;<asp:TextBox ID="txtnewpwd" runat="server" 
                    Height="27px" Width="250px" 
                    TextMode="Password" ></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvnewpwd" runat="server" 
                    ControlToValidate="txtnewpwd" ErrorMessage="Enter the new password" 
                    ValidationGroup="change">Enter password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;Confirm Password:&nbsp;</td>
            <td>
                &nbsp;<asp:TextBox ID="txtretypepwd" runat="server" Height="27px" Width="250px" 
                    TextMode="Password"></asp:TextBox>
            &nbsp;<asp:RequiredFieldValidator ID="rfvretype" runat="server" 
                    ControlToValidate="txtretypepwd" ErrorMessage="Enter the retype password" 
                    ValidationGroup="change">Enter confirm password</asp:RequiredFieldValidator>
&nbsp;&nbsp;
                <asp:CompareValidator ID="cvmatch" runat="server" ControlToCompare="txtnewpwd" 
                    ControlToValidate="txtretypepwd" ErrorMessage="password doesn't match" 
                    ValidationGroup="change">password doesn&#39;t match</asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Contact No:&nbsp;</td>
            <td>
                <asp:TextBox ID="txtcno" runat="server" Height="27px" Width="250px" 
                    MaxLength="10"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ErrorMessage="Enter Contact no" ControlToValidate="txtcno" 
                    ValidationGroup="change"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Email-Id:&nbsp;</td>
            <td>
                <asp:TextBox ID="txtemail" runat="server" Height="27px" Width="250px"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="txtemail" ErrorMessage="Enter Email-id" 
                    ValidationGroup="change"></asp:RequiredFieldValidator>
                
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Security Question:&nbsp;</td>
            <td>
                <asp:DropDownList ID="ddlque" runat="server" Height="27px" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ans:</td>
            <td>
                <asp:TextBox ID="txtans" runat="server" Height="27px" Width="250px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="txtans" ErrorMessage="Enter Answer" ValidationGroup="change"></asp:RequiredFieldValidator>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="btnchangepwd" runat="server" Text="Add Admin" 
                    ValidationGroup="change" BackColor="#333333" 
                    Font-Bold="True" Font-Size="Medium" ForeColor="White" Height="35px" 
                    Width="150px" onclick="btnchangepwd_Click" Font-Italic="True" 
                    Font-Names="Arial" />
                <asp:RoundedCornersExtender ID="btnchangepwd_RoundedCornersExtender" 
                    runat="server" Enabled="True" TargetControlID="btnchangepwd">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="btnchangepwd_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="btnchangepwd">
                </asp:DropShadowExtender>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnreset" runat="server" Text="Reset" Width="100px" 
                     BackColor="#333333" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="White" Height="35px" 
                    onclick="btnreset_Click" Font-Italic="True" Font-Names="Arial" 
                     />
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

