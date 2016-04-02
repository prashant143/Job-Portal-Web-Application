<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="home.aspx.cs" Inherits="home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/home.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <div class="article"><h1 style="color:White;">Latest  Posted  Jobs  for  Company</h1></div>
        <div class="latest_post_top" style="margin: 7px;padding: 0.5px;">
  <div class="latest_post_bottom" style="margin: 7px;padding: 0.5px;">
    <div class="latest_post_job" style="margin: 7px;padding: 0.5px;" >
        <ul>
        <% 
            Class1 obj = new Class1();
            System.Data.DataSet ds = new System.Data.DataSet();
            DateTime da = DateTime.Today;
           // and datepart(month,j.jobpost_date)='"+ da.Month +"' and datepart(year,j.jobpost_date)='"+ da.Year +"' and datepart(day,j.jobpost_date)='"+ da.Day +"'

            ds = obj.conne("select top 5 j.jobpost_date,j.job_title,j.jobpost_id,c.company_name,c1.city_name,j.company_id from company c,job_post j,city c1 where c.company_id=j.company_id and j.interview_date >= '"+ da +"' and j.app_end_date >= '"+ da +"' and c.city_id=c1.city_id order by j.jobpost_date desc");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<li style='border-bottom : solid 1px #BDBCBD; padding-bottom:10px;padding-top:10px; list-style-type:none; margin-left:7px;'>");
                Response.Write("<div class='dated'>");
                Response.Write("<span class='date'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[0]).Day + "</span> <span class='month'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[0]).ToString("MMM") + "</span> <span >"+Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[0]).Year+"</span>");
                Response.Write("</div>");
                Response.Write("<div class='job_detail'>");
                Response.Write("<h3>");
                Response.Write("<a href='Postdetail.aspx?id="+ds.Tables[0].Rows[i].ItemArray[2]+"'>");
                Response.Write("Job Title :-"+ds.Tables[0].Rows[i].ItemArray[1]+ "</a></h3>");
                Response.Write("<a href='compdetail.aspx?id=" + ds.Tables[0].Rows[i].ItemArray[5] + "'>");
                
                Response.Write("<span class='job_info'>" + ds.Tables[0].Rows[i].ItemArray[3] + "</a> at ");
                Response.Write(" (<a href='#' style='color:#2DBDEA'>");
                Response.Write(ds.Tables[0].Rows[i].ItemArray[4] + "</a>)</span>");
                Response.Write("</div>");
                Response.Write("</li>");
            }
       %>
        </ul>
    </div>
  </div>
   </div>     
  
</asp:Content>

