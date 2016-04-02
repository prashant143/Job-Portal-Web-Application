<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="search_candidate.aspx.cs" Inherits="search_candidate" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 250px;
        }
        .style3
        {
            width: 150px;
        }
        .style4
        {
            width: 350px;
        }
    </style>
    <link href="css/home.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
         <table class="style1">
                        <tr>
                            <td colspan="3" align="center"> 
                              <div class="article"> <h1 style="color:White;"> Search Candidates</h1></div></td>
                                                 </tr>
                        <tr>
                            <td colspan="3"><hr /></td>
                            
                        </tr>
                        <tr>
                            <td class="style2">Category:</td>
                            <td class="style3">Post Graduation Institute</td>
                            <td class="style4">&nbsp;&nbsp;Location:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:DropDownList ID="ddlcategory" runat="server" Width="150px" Height="25px">
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="ddlinstitute" runat="server" Height="25px" Width="150px" 
                                   >
                                </asp:DropDownList>
                            &nbsp;</td>
                            <td class="style4">
                                <asp:TextBox ID="txtlocation" runat="server" Height="25px" 
                                   Width="150px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="style2">Position Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td colspan="2">Minimum Salary:-</td>
                          
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:DropDownList ID="ddlpos" runat="server" Height="25px" Width="150px">
                                  
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <br />
                            </td>
                            <td colspan="2">
                            
                                <asp:TextBox ID="txtminsal" runat="server" 
                                    Width="150px" Height="25px"></asp:TextBox>
                                
                            </td>
                                                 </tr>
                        <tr>
                            <td colspan="3" align="left">
                                &nbsp;</td>
                            </tr>
                        <tr>
                            <td colspan="3" align="center">
                                &nbsp;<asp:Button ID="btnsearch" runat="server" Text="Search" Font-Bold="True" 
                                    Font-Names="Arial Black" Font-Size="Large" Height="42px" Width="86px" 
                                    onclick="btnsearch_Click" BackColor="#333333" ForeColor="White" />
                                <asp:RoundedCornersExtender ID="btnsearch_RoundedCornersExtender" 
                                    runat="server" Enabled="True" TargetControlID="btnsearch">
                                </asp:RoundedCornersExtender>
                                <asp:DropShadowExtender ID="btnsearch_DropShadowExtender" runat="server" 
                                    Enabled="True" TargetControlID="btnsearch">
                                </asp:DropShadowExtender>
                                <br />
                                <br />
                            </td>
                        </tr>
                         
                    </table>

        </asp:View>
 </asp:MultiView>
    <asp:Panel ID="Panel1" runat="server">
  
        <div class="latest_post_top" style="margin: 7px;padding: 0.5px;">
  <div class="latest_post_bottom" style="margin: 7px;padding: 0.5px;">
    <div class="latest_post_job" style="margin: 7px;padding: 0.5px;" >
        <ul>
        <% 
            Class1 obj = new Class1();
            System.Data.DataSet ds = new System.Data.DataSet();
            DateTime da = DateTime.Today;
            string qry = "select d.*,e.*,p.*,s.*,c1.*,s1.*,c2.*,c3.* from jobseeker_detail d,jobseeker_education e,jobseeker_profesional p,skill s,city c1,state s1,country c2,category c3 where d.jobseeker_id=e.jobseeker_id and d.jobseeker_id=p.jobseeker_id and d.jobseeker_id=s.jobseeker_id and p.skill_id=s.skill_id and d.city_id=c1.city_id and c1.state_id=s1.state_id and c2.country_id=s1.country_id and p.category_id=c3.category_id ";
            if (ddlcategory.SelectedValue != "0")
            {
                qry = qry + " and c3.category_name='" + ddlcategory.SelectedValue + "'";
            }
            if (ddlpos.SelectedValue != "0")
            {
                qry = qry + " and s.position_type='" + ddlpos.SelectedValue + "'";
            }
            if (txtminsal.Text != "")
            {
                qry = qry + " and p.salary >= '" + Convert.ToInt64(txtminsal.Text) + "' ";
            }
            if (ddlinstitute.SelectedValue != "0")
            {
                qry = qry + " and e.institute_post_grad='" + ddlinstitute.SelectedValue + "'";
            }
            if (txtlocation.Text != "")
            {
                qry = qry + " and c1.city_name='" + txtlocation.Text + "'";
            }
            
            ds = obj.conne(qry);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<li style='border-bottom : solid 1px #BDBCBD; padding-bottom:10px;padding-top:10px; list-style-type:none; margin-left:7px;'>");
                Response.Write("<div class='dated'>");
                Response.Write("<span class='date'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[4]).Day + "</span> <span class='month'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[4]).ToString("MMM") + "</span> <span >"+Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[4]).Year+"</span>");
                Response.Write("</div>");
                Response.Write("<div class='job_detail'>");
                Response.Write("<h3>");
                Response.Write("<a href='candidate_detail.aspx?id="+ds.Tables[0].Rows[i].ItemArray[0]+"'>");
                Response.Write("Name :-" + ds.Tables[0].Rows[i].ItemArray[5] + "   " + ds.Tables[0].Rows[i].ItemArray[6] + "     " + ds.Tables[0].Rows[i].ItemArray[7] + "</a></h3>");
                
                Response.Write("<span class='job_info'>Education:-   " + ds.Tables[0].Rows[i].ItemArray[24] + " <br> ");
                Response.Write(" (<a href='#' style='color:#2DBDEA'>");
                Response.Write(ds.Tables[0].Rows[i].ItemArray[42] + "</a>)</span>");
                Response.Write("</div>");
                Response.Write("</li>");
               
            }
       %>
        </ul>
    </div>
  </div>
   </div>     
             
  </asp:Panel>
   
</asp:Content>

