<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="compdetail.aspx.cs" Inherits="compdetail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<table align="center" border="5" style="border-bottom-color:Black; font-family:Times New Roman; color:Black; font-size:medium; font-weight:bold; width:70%;">
    <tr>
        <td align="center" colspan="2"><div class="article"><h1 style="color:White;">Company Detail</h1></div></td>
    </tr>
    <tr>
        <td style="width:35%;">
           <li style="list-style-type:none; margin-left:7px;" >Company:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Address:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Zipcode:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Contact No:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >C.E.O:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Email-Id:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >City:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >State:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Country:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >WebSite:-</li>
        </td>
        <td style="width:65%;">
            <% 
                if (Request.QueryString["id"] != null)
                {
                    Class1 obj = new Class1();
                    System.Data.DataSet ds = new System.Data.DataSet();
                    DateTime da = DateTime.Today;
                    string str = Request.QueryString["id"];
                    ds = obj.conne("select c.company_name,c.company_address,c.zipcode,c.contect_person,c.company_contect,c.company_email,c1.city_name,s.state_name,c2.country_name,c.website from company c,job_post j,city c1,state s,country c2 where c.company_id=j.company_id and c.city_id=c1.city_id and c1.state_id=s.state_id and s.country_id=c2.country_id and c.company_id='" + Convert.ToInt16(str) + "'");
                    Response.Write("<li style='list-style-type:none; margin-left:7px; ' >" + ds.Tables[0].Rows[0].ItemArray[0].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[1].ToString() + "</li><br />");

                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[2].ToString() + "</li><br />");
                    
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[4].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[3].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[5].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[6].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[7].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[8].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[9].ToString() + "</li>");
                }
                else
                {
                    Response.Redirect("home.aspx");
                }
             %>
       
        
        </td>
    </tr>
    <tr>
        <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
        </asp:ToolkitScriptManager>
        <td align="center" colspan="2"><br />
            <asp:Button ID="Button1" runat="server" Text="Back" BackColor="#333333" 
                Font-Bold="True" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
                Height="35px" onclick="Button1_Click" Width="80px" />
            <asp:RoundedCornersExtender ID="Button1_RoundedCornersExtender" runat="server" 
                Enabled="True" TargetControlID="Button1">
            </asp:RoundedCornersExtender>
            <asp:DropShadowExtender ID="Button1_DropShadowExtender" runat="server" 
                Enabled="True" TargetControlID="Button1">
            </asp:DropShadowExtender><br />
        </td>
    </tr>
    
</table>
</asp:Content>

