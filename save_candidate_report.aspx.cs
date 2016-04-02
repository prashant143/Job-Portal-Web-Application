using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class save_candidate_report : System.Web.UI.Page
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
                    ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id");
                    grdsave.DataSource = ds;
                    grdsave.DataBind();
                    job();
                    company();
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
                ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id");
            }
            if (ddlcompany.Text != "0" && ddljob.Text != "0")
            {
                ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and j.job_title='" + ddljob.SelectedValue + "'");
            }
            if (ddljob.Text != "0" && ddlcompany.Text == "0")
            {
                ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "'");
            }
            if (ddljob.Text == "0" && ddlcompany.Text != "0")
            {
                ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "'");
            }
            grdsave.DataSource = ds;
            grdsave.DataBind();

        }
        catch (Exception)
        {
            Response.Write("Some Error");
        }


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
            ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id");
        }
        if (ddlcompany.Text != "0" && ddljob.Text != "0")
        {
            ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "' and j.job_title='" + ddljob.SelectedValue + "'");
        }
        if (ddljob.Text != "0" && ddlcompany.Text == "0")
        {
            ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and j.job_title='" + ddljob.SelectedValue + "'");
        }
        if (ddljob.Text == "0" && ddlcompany.Text != "0")
        {
            ds = obj.conne("select s.saved_id,d.username,j.job_title,c.company_name from job_post j,save_candidates s,company c,jobseeker_detail d where s.jobpost_id=j.jobpost_id and c.company_id=j.company_id and s.jobseeker_id=d.jobseeker_id and c.company_name='" + ddlcompany.SelectedValue + "'");
        }
        grdsave.DataSource = ds;
        grdsave.DataBind();

    }
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {

        grdsave.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);

        bind();
    }
    protected void grdsave_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdsave.PageIndex = e.NewPageIndex;
        bind();
    }
}