using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class job_apply_report : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"] != null)
            {
                
                if (!IsPostBack)
                {
                    ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id");
                    grdapplyjob.DataSource = ds;
                    grdapplyjob.DataBind();
                    job();
                    company();
                }
                else
                {
                    if (rbtnall.Checked == true)
                    {
                        bind();
                    }
                    else if (rbtntoday.Checked == true)
                    {
                        
                        DateTime da = DateTime.Today;
                       
                        if (ddlcompany.Text == "0" && ddljob.Text == "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and datepart(day,applied_date)='" + da.Day + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddlcompany.Text != "0" && ddljob.Text != "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and j.job_title='" + ddljob.SelectedValue + "' and datepart(day,applied_date)='" + da.Day + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddljob.Text != "0" && ddlcompany.Text == "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "' and datepart(day,applied_date)='" + da.Day + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddljob.Text == "0" && ddlcompany.Text != "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and datepart(day,applied_date)='" + da.Day + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        grdapplyjob.DataSource = ds;
                        grdapplyjob.DataBind();
                    }
                    else if (rbtncurrentmonth.Checked == true)
                    {
                        DateTime da = DateTime.Today;

                        if (ddlcompany.Text == "0" && ddljob.Text == "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddlcompany.Text != "0" && ddljob.Text != "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and j.job_title='" + ddljob.SelectedValue + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddljob.Text != "0" && ddlcompany.Text == "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        if (ddljob.Text == "0" && ddlcompany.Text != "0")
                        {
                            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and datepart(month,applied_date)='" + da.Month + "' and datepart(year,applied_date)='" + da.Year + "'");
                        }
                        grdapplyjob.DataSource = ds;
                        grdapplyjob.DataBind();
                    }
                    else
                    {
                        bind();
                    }

                }

            }
        }
        catch (Exception)
        {
            Response.Write("Some Error");
        }
    }
    public void bind()
    {
        try
        {
            
            if (ddlcompany.Text == "0" && ddljob.Text == "0")
            {
                ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id");
            }
            if (ddlcompany.Text != "0" && ddljob.Text != "0")
            {
                ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and j.job_title='" + ddljob.SelectedValue + "'");
            }
            if (ddljob.Text != "0" && ddlcompany.Text == "0")
            {
                ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "'");
            }
            if (ddljob.Text == "0" && ddlcompany.Text != "0")
            {
                ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "'");
            }
            grdapplyjob.DataSource = ds;
            grdapplyjob.DataBind();

        }
        catch (Exception)
        {
            Response.Write("Some Error");
        }


    }

    protected void grdapplyjob_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdapplyjob.PageIndex = e.NewPageIndex;
        Page_Load(sender, e);
    }
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdapplyjob.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
        Page_Load(sender, e);
    }
    public void job()
    {
        ds = obj.conne("select job_title from job_post group by job_title");
        ddljob.DataSource = ds.Tables[0];
        ddljob.DataTextField = "job_title";
        ddljob.DataValueField = "job_title";
        ddljob.DataBind();
        ddljob.Items.Insert(0, new ListItem("select", "0"));
    }
    public void company()
    {
        ds = obj.conne("select company_name from company");
        ddlcompany.DataSource = ds.Tables[0];
        ddlcompany.DataTextField = "company_name";
        ddlcompany.DataValueField = "company_name";
        ddlcompany.DataBind();
        ddlcompany.Items.Insert(0, new ListItem("select", "0"));
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlcompany.Text == "0" && ddljob.Text == "0")
        {
            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id");   
        }
        if (ddlcompany.Text != "0" && ddljob.Text != "0")
        {
            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='"+ ddlcompany.SelectedValue +"' and j.job_title='"+ ddljob.SelectedValue +"'");   
        }
        if (ddljob.Text != "0" && ddlcompany.Text == "0")
        {
            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "'");   
        }
        if (ddljob.Text == "0" && ddlcompany.Text != "0")
        {
            ds = obj.conne("select a.jobapplied_id,d.username,j.job_title,c.company_name,a.applied_date from job_post j,job_applied a,company c,jobseeker_detail d where a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "'");
        }
        grdapplyjob.DataSource = ds;
        grdapplyjob.DataBind();
        Page_Load(sender, e);
    }
}