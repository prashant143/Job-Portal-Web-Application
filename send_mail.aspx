<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="send_mail.aspx.cs" Inherits="send_mail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <table style="width: 70%;">
        <tr>
            <td colspan="2">
                &nbsp;<div class="article"><h1 style="color:White;">Send Mail</h1></div>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;<asp:Label ID="Label1" runat="server"></asp:Label></td>
          
        </tr>
       <tr>
            <td>
                Email-id:
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server" ReadOnly="false" Height="28px" 
                    Width="220px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Textbox1" ErrorMessage="Enter Email-id" 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ErrorMessage="enter proper email-id" ValidationGroup="v"  
                    ControlToValidate="Textbox1" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td>
                Subject:
            </td>
            <td>
                <asp:TextBox ID="txtsubject" runat="server" Height="28px" Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                Message:
            </td>
            <td>
                <asp:TextBox ID="txtmsg" runat="server" Rows="7" TextMode="MultiLine" 
                    Width="220px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Send" Height="38px" 
                    Width="73px" BackColor="#333333" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="White" onclick="Button1_Click" ValidationGroup="v" />
                <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Button1">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="Button1">
                </asp:DropShadowExtender>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" Text="Reset" Height="38px" 
                    Width="73px" BackColor="#333333" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="White" onclick="Button2_Click" />
                <asp:RoundedCornersExtender ID="Button2_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Button2">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="Button2_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="Button2">
                </asp:DropShadowExtender>
            </td>
            
        </tr>
    </table>
</asp:Content>

