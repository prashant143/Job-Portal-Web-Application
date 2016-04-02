<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="adminview.aspx.cs" Inherits="adminview" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 35%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /><br /><br /><br /><br />
    <table style="width: 60%; font-size:medium;" align="center" border="5">
        <tr>
            <td colspan="2">
                <div class="article"><h1 style="color:White;">Total View of Website</h1></div>
            </td>
            
        </tr>
        <tr>
            <td class="style1">
                &nbsp;Visitor View:
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label1" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;Jobseeker View:
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label2" runat="server"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style1">
                &nbsp;Company View:
            </td>
            <td>
                &nbsp;
                <asp:Label ID="Label3" runat="server"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

