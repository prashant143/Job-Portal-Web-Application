<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Postdetail.aspx.cs" Inherits="css_Postdetail" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
        

    <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>


    
  <table align="center" class="table table-striped" style="border-bottom-color:Black; font-family:Times New Roman; color:Black; font-size:medium; font-weight:bold; width:70%;">
    <tr>
        <td align="center" colspan="2"><div class="article"><h1 style="color:White;">Post Job Detail</h1></div></td>
    </tr>
    <tr>
        <td style="width:35%;">
           <li style="list-style-type:none; margin-left:7px;" >Job Title:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Company:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Vacancy:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Position Type:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Minimum Salary:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Maximum Salary:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Require Experience:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Require Education:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Require Skill:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Application End Date:-</li><br />
           <li style="list-style-type:none; margin-left:7px;" >Interview Date:-</li>
        </td>
        <td style="width:65%;">
            <% 
                if (Request.QueryString["id"] != null)
                {
                    Class1 obj = new Class1();
                    System.Data.DataSet ds = new System.Data.DataSet();
                    DateTime da = DateTime.Today;
                    string str = Request.QueryString["id"];
                    ds = obj.conne("select j.jobpost_date,j.job_title,j.jobpost_id,c.company_name,c1.city_name,j.no_of_vacancy,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date,j.require_postype from company c,job_post j,city c1 where c.company_id=j.company_id and c.city_id=c1.city_id and j.jobpost_id='" + Convert.ToInt16(str) + "'");
                    Response.Write("<li style='list-style-type:none; margin-left:7px; ' >" + ds.Tables[0].Rows[0].ItemArray[1].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[3].ToString() + "</li><br />");

                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[5].ToString() + "</li><br />");

                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[13].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[6].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[7].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[9].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[11].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + ds.Tables[0].Rows[0].ItemArray[10].ToString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[8]).ToShortDateString() + "</li><br />");
                    Response.Write("<li style='list-style-type:none; margin-left:7px;' >" + Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[12]).ToShortDateString() + "</li>");
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
        <td colspan="2" align="center"><br />
            <asp:Button ID="Button1" runat="server" Text="Apply" BackColor="#333333" 
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

