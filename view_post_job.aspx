<%@ Page Title="" Language="C#" MasterPageFile="~/employer.master" AutoEventWireup="true" CodeFile="view_post_job.aspx.cs" Inherits="view_post_job" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
 <link href="css/home.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <div class="article"><h1 style="color:White;"><asp:Label ID="lblmessage" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large"></asp:Label></h1></div>
        <div class="latest_post_top" style="margin: 7px;padding: 0.5px;">
  <div class="latest_post_bottom" style="margin: 7px;padding: 0.5px;">
    <div class="latest_post_job" style="margin: 7px;padding: 0.5px;" >
        <ul>
        <% 
            Class1 obj = new Class1();
            System.Data.DataSet ds = new System.Data.DataSet();
            int id;
            id = obj.nubmerofrow("select company_id from company where username='" + Session["employer"] + "'");
            DateTime da = DateTime.Today;
            
            ds = obj.conne("select jobpost_id,job_title,jobpost_date,no_of_vacancy,Max_sal,min_sal,app_end_date,require_exper,require_skill,require_edu,interview_date,require_postype from job_post where company_id='" + id + "'");
            for (int i = 0; i < ds.Tables[0].Rows.Count; i++)
            {
                Response.Write("<li style='border-bottom : solid 1px #BDBCBD; padding-bottom:10px;padding-top:10px; list-style-type:none; margin-left:7px;'>");
                Response.Write("<div class='dated'>");
                Response.Write("<span class='date'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[2]).Day + "</span> <span class='month'>" + Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[2]).ToString("MMM") + "</span> <span >"+Convert.ToDateTime(ds.Tables[0].Rows[i].ItemArray[2]).Year+"</span>");
                Response.Write("</div>");
                Response.Write("<div class='job_detail'>");
                Response.Write("<h3>");
                Response.Write("<a href='viewpost_job_qry.aspx?id="+ds.Tables[0].Rows[i].ItemArray[0]+"'>");
                Response.Write("Job Title :-"+ds.Tables[0].Rows[i].ItemArray[1]+ "</a></h3>");
                
                Response.Write("<span class='job_info'> Position Type:-  " + ds.Tables[0].Rows[i].ItemArray[11]);
              
                Response.Write("</div>");
                Response.Write("</li>");
            }
       %>
        </ul>
    </div>
  </div>
   </div>     
    <%--<div class="article"><h1 style="color:White;"><asp:Label ID="lblmessage" runat="server" Font-Bold="True" 
        Font-Names="Monotype Corsiva" Font-Size="XX-Large"></asp:Label></h1></div>
    <br />
    <br />
    <asp:GridView ID="grdpostjob" runat="server"
   BorderColor="Black" BorderWidth="3px" 
        Font-Bold="False" Font-Names="Arial" Font-Size="Medium" ForeColor="White" 
        Width="750px" BackColor="#464646" 
         BorderStyle="Outset"

            AutoGenerateColumns="False" DataKeyNames="jobpost_id" ShowFooter="True"  
             CellPadding="3" 
            CellSpacing="1" EnableModelValidation="True" GridLines="None" 
        AllowPaging="True" PageSize="5" 
        onpageindexchanging="grdpostjob_PageIndexChanging"  >
            <Columns>
                <asp:TemplateField HeaderText="Job">
                    <ItemTemplate>
                        <asp:Label ID="lbljob" runat="server" Text='<%#Eval("job_title") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="JobPost Date">
                    <ItemTemplate>
                        <asp:Label ID="lbljobpostdate" runat="server" Text='<%#Eval("jobpost_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                  <asp:TemplateField HeaderText="Vacancy">
                    <ItemTemplate>
                        <asp:Label ID="lblvacancy" runat="server" Text='<%#Eval("no_of_vacancy") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Maximim Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblmaxsal" runat="server" Text='<%#Eval("Max_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 <asp:TemplateField HeaderText="Minimum Salary">
                    <ItemTemplate>
                        <asp:Label ID="lblminsal" runat="server" Text='<%#Eval("min_sal") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 <asp:TemplateField HeaderText="Application End Date">
                    <ItemTemplate>
                        <asp:Label ID="lblenddate" runat="server" Text='<%#Eval("app_end_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

                 
                 <asp:TemplateField HeaderText="Require Experience">
                    <ItemTemplate>
                        <asp:Label ID="lblexp" runat="server" Text='<%#Eval("require_exper") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="Require Skill">
                    <ItemTemplate>
                        <asp:Label ID="lblskill" runat="server" Text='<%#Eval("require_skill") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="Require Education">
                    <ItemTemplate>
                        <asp:Label ID="lbledu" runat="server" Text='<%#Eval("require_edu") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>
                 
                 <asp:TemplateField HeaderText="Interview Date">
                    <ItemTemplate>
                        <asp:Label ID="lblinterdate" runat="server" Text='<%#Eval("interview_date") %>'>'></asp:Label>
                    </ItemTemplate>
                 </asp:TemplateField>

            </Columns>
            
            <HeaderStyle BackColor="#6C5B6B" Font-Bold="False" ForeColor="#E7E7FF" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Center" Font-Size="Small" VerticalAlign="Middle" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
            <SelectedRowStyle BackColor="#9471DE" Font-Bold="False" ForeColor="White" Font-Size="Small" HorizontalAlign="Center" VerticalAlign="Middle" />
        </asp:GridView>--%>
</asp:Content>

