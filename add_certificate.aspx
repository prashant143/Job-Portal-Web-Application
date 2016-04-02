<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="add_certificate.aspx.cs" Inherits="add_certificate" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style3
        {
            width: 139px;
        }
        .style4
        {
            width: 77%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <table style="width: 70%;" align="center">
        <tr>
        <td colspan="2">
            <div class="article"><h1 style="color:White;">Add Certificates</h1></div>
        </td>
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;
                <asp:Label ID="lblmsg1" runat="server" ForeColor="#666666"></asp:Label>
                <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
                </asp:ToolkitScriptManager>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
                Certificate Name:-</td>
            <td class="style4">
                &nbsp;
                <asp:TextBox ID="txtcerti" runat="server" Width="210px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="txtcerti" ErrorMessage="Enter certificate name" 
                    ValidationGroup="v"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style3">
                &nbsp;
                Upload Certificate:-</td>
            <td class="style4">
                &nbsp;
                <asp:FileUpload ID="FileUpload1" runat="server" />
            &nbsp;&nbsp;
                <asp:Label ID="lblmsg" runat="server" Text="Browse the file.." Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td colspan="2"><h5>&nbsp;</h5>
                </td>
            
        </tr>
        <tr>
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Add Certificates" BackColor="#333333" Font-Bold="True" 
                    Font-Italic="True" ForeColor="White" Height="30px" Width="180px" 
                    ValidationGroup="v" />
                <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                    Enabled="True" TargetControlID="Button1">
                </asp:RoundedCornersExtender>
                <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                    Enabled="True" TargetControlID="Button1">
                </asp:DropShadowExtender>
            </td>
          
        </tr>
    </table>
</asp:Content>

