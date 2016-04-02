<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_profile_edit.aspx.cs" Inherits="admin_profile_edit" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 39%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<table align="center" border="5" style="border-bottom-color:Black; font-family:Times New Roman; color:Black; font-size:medium; font-weight:bold; width:80%;">
    <tr>

        <td align="center" colspan="2"><div class="article"><h1 style="color:White;">Admin 
            Profile</h1></div></td>
    </tr>
    <tr>
        <td class="style1">
            <asp:Label ID="Label1" runat="server" Text="Username:-"></asp:Label>
        </td>
        <td style="width:65%;">
             <asp:Label ID="Label4" runat="server"></asp:Label><br />

           
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:Label ID="Label2" runat="server" Text="Contact no:-"></asp:Label>
        </td>
        <td style="width:65%;">
            <asp:TextBox ID="txtcno" runat="server" Height="27px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                ErrorMessage="Enter contact no" ControlToValidate="txtcno" 
                ValidationGroup="v1"></asp:RequiredFieldValidator>
            <br />

           
        </td>
    </tr>
    <tr>
        <td class="style1">
            <asp:Label ID="Label3" runat="server" Text="Email-id:-"></asp:Label>
        </td>
        <td style="width:65%; margin-left: 40px;">
            <asp:TextBox ID="txteid" runat="server" Height="27px" Width="200px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ErrorMessage="Enter Email-id" ControlToValidate="txteid" 
                ValidationGroup="v1"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                ErrorMessage="Enter Proper email-id" ControlToValidate="txteid" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                ValidationGroup="v1"></asp:RegularExpressionValidator>
            <br />

           
        </td>
    </tr>
    <tr>
        
        <td align="center" colspan="2"><br />
            <asp:Button ID="Button1" runat="server" Text="Edit" BackColor="#333333" 
                Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
                Height="35px" Width="80px" onclick="Button1_Click" ValidationGroup="v1" />
            <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                Enabled="True" TargetControlID="Button1">
            </asp:RoundedCornersExtender>
            <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="Button1">
            </asp:DropShadowExtender>&nbsp;&nbsp;&nbsp;



            <br />



            <br />

        </td>
    </tr>
    
</table>

</asp:Content>

