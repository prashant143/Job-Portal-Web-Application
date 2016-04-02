<%@ Page Title="" Language="C#" MasterPageFile="~/admin.master" AutoEventWireup="true" CodeFile="admin_profile.aspx.cs" Inherits="admin_profile" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
<table align="center" border="5" style="border-bottom-color:Black; font-family:Times New Roman; color:Black; font-size:medium; font-weight:bold; width:70%;">
    <tr>
        <td align="center" colspan="2"><div class="article"><h1 style="color:White;">Admin 
            Profile</h1></div></td>
    </tr>
    <tr>
        <td style="width:35%;">
           <li style="list-style-type:none; margin-left:7px;" >Name:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Contact no:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Email-Id:-</li><br />
           
        </td>
        <td style="width:65%;">
            <% 
                if (Session["admin"] != null)
                {
                    Class1 obj = new Class1();
                    System.Data.DataSet ds = new System.Data.DataSet();
                    DateTime da = DateTime.Today;
                    ds = obj.conne("select * from admin_reg where username='"+ Session["admin"] +"'");
                    Response.Write("<li style='list-style-type:none; margin-left:7px; ' >" + ds.Tables[0].Rows[0].ItemArray[1].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[2].ToString() + "</li><br />");

                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[3].ToString() + "</li><br />");
                    
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
             %>
       
        
        </td>
    </tr>
    <tr>
        
        <td align="center" colspan="2"><br />
            <asp:Button ID="Button1" runat="server" Text="Edit" BackColor="#333333" 
                Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
                Height="35px" Width="80px" onclick="Button1_Click" />
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

