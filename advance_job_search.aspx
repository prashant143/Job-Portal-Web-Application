<%@ Page Title="" Language="C#" MasterPageFile="~/jobseeker.master" AutoEventWireup="true" CodeFile="advance_job_search.aspx.cs" Inherits="advance_job_search" %>

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

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
    </asp:ToolkitScriptManager>
    <asp:MultiView ID="MultiView1" runat="server">
        <asp:View ID="View1" runat="server">
         <table class="style1">
                        <tr>
                            <td colspan="3" align="center"> 
                              <div class="article"> <h1 style="color:White;"> Advance Searching Jobs</h1></div></td>
                                                 </tr>
                        <tr>
                            <td colspan="3"><hr /></td>
                            
                        </tr>
                        <tr>
                            <td class="style2">Keywords:</td>
                            <td class="style3">Expireance:</td>
                            <td class="style4">Company:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:DropDownList ID="ddljob" runat="server" Width="250px" Height="25px">
                                </asp:DropDownList>
                            </td>
                            <td class="style2">
                                <asp:DropDownList ID="ddtexpireance" runat="server" Height="25px" Width="150px" 
                                    onselectedindexchanged="ddtexpireance_SelectedIndexChanged">
                                    <asp:ListItem>--select--</asp:ListItem>
                                    <asp:ListItem>Entry Level</asp:ListItem>
                                    <asp:ListItem>1</asp:ListItem>
                                    <asp:ListItem>2</asp:ListItem>
                                    <asp:ListItem>3</asp:ListItem>
                                    <asp:ListItem>4</asp:ListItem>
                                    <asp:ListItem>5</asp:ListItem>
                                    <asp:ListItem>6</asp:ListItem>
                                    <asp:ListItem>7</asp:ListItem>
                                    <asp:ListItem>8</asp:ListItem>
                                    <asp:ListItem>9</asp:ListItem>
                                    <asp:ListItem>10</asp:ListItem>
                                </asp:DropDownList>
                            &nbsp;</td>
                            <td class="style4">
                                <asp:DropDownList ID="ddlcompany" runat="server" Height="25px" Width="150px"  
                               >
                                  
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                                &nbsp;</td>
                        </tr>
                        <tr>
                            <td class="style2">Position Type:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Location:</td>
                            <td colspan="2">Salary Maximum To Minimum:-</td>
                          
                        </tr>
                        <tr>
                            <td class="style2">
                                <asp:DropDownList ID="ddlpos" runat="server" Height="25px" Width="100px">
                                  
                                </asp:DropDownList>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="txtlocation" runat="server" Height="25px" Width="100px"></asp:TextBox>
                                <br />
                            </td>
                            <td colspan="2">
                            
                                <asp:TextBox ID="txtminsal" runat="server" 
                                    Width="150px" Height="25px"></asp:TextBox>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                to&nbsp;&nbsp;&nbsp; 
                                <asp:TextBox ID="txtmaxsal" 
                                    runat="server" Width="150px" Height="25px"></asp:TextBox>
                                
                            </td>
                                                 </tr>
                        <tr>
                            <td colspan="3" align="left">
                                &nbsp;</td>
                            </tr>
                        <tr>
                            <td colspan="3" align="center" colspan="2">
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
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            string qry = "select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_postype,j.interview_date,c1.city_name,c.company_id from job_post j,company c,city c1 where c1.city_id=c.city_id and j.app_end_date >='" + da + "' and j.company_id=c.company_id and j.jobpost_id not in(select jobpost_id from job_applied where jobseeker_id='" + id + "')  ";
            if (ddljob.SelectedValue != "0")
            {
                qry = qry + " and j.job_title='" + ddljob.SelectedValue + "'";
            }
            if (ddlpos.SelectedValue != "0")
            {
                qry = qry + " and j.require_postype='" + ddlpos.SelectedValue + "'";
            }
            if (txtmaxsal.Text != "" && txtminsal.Text != "")
            {
                qry = qry + " and j.Max_sal >= '" + Convert.ToInt64(txtmaxsal.Text) + "' and j.min_sal <= '" + Convert.ToInt64(txtminsal.Text) + "' ";
            }
            if (ddlcompany.SelectedValue != "0")
            {
                qry = qry + " and c.company_name='" + ddlcompany.SelectedValue + "'";
            }
            if (txtlocation.Text != "")
            {
                qry = qry + " and c1.city_name='" + txtlocation.Text + "'";
            }
            if (ddtexpireance.SelectedValue != "--select--" || ddtexpireance.SelectedValue != "Entry Level")
            {
                if (ddtexpireance.SelectedValue == "--select--")
                {
                    qry = qry + "";
                }
                else if (ddtexpireance.SelectedValue == "Entry Level")
                {
                    qry = qry + "";
                }
                else
                {
                    qry = qry + " and j.require_exper>='" + Convert.ToInt16(ddtexpireance.SelectedValue) + "'";
                }
            }
            ds = obj.conne(qry);

            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<li style='border-bottom : solid 1px #BDBCBD; padding-bottom:10px;padding-top:10px; list-style-type:none; margin-left:7px;'>");
                Response.Write("<div class='dated'>");
                Response.Write("<span class='date'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[6]).Day + "</span> <span class='month'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[6]).ToString("MMM") + "</span> <span >"+Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[6]).Year+"</span>");
                Response.Write("</div>");
                Response.Write("<div class='job_detail'>");
                Response.Write("<h3>");
                Response.Write("<a href='Post_qrystr.aspx?id="+ds.Tables[0].Rows[i].ItemArray[0]+"'>");
                Response.Write("Job Title :-"+ds.Tables[0].Rows[i].ItemArray[2]+ "</a></h3>");
                Response.Write("<a href='company_qrystr.aspx?id=" + ds.Tables[0].Rows[i].ItemArray[12] + "'>");
                
                Response.Write("<span class='job_info'>" + ds.Tables[0].Rows[i].ItemArray[1] + "</a> at ");
                Response.Write(" (<a href='#' style='color:#2DBDEA'>");
                Response.Write(ds.Tables[0].Rows[i].ItemArray[11] + "</a>)</span>");
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

