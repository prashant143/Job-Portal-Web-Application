using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;

public partial class Postjob_report : System.Web.UI.Page
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
                    DateTime da = DateTime.Today;
                    int id;
                    id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id");
                    GridView1.DataSource = ds;
                    GridView1.DataBind();
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

                 
                        if (DropDownList1.Text == "0")
                        {
                            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and datepart(day,jobpost_date)='" + da.Day + "' and datepart(month,jobpost_date)='" + da.Month + "' and datepart(year,jobpost_date)='" + da.Year + "'");

                        }
                        else
                        {
                            string str;
                            str = "select c.company_name from job_post j,company c where j.company_id=c.company_id and c.company_name='" + DropDownList1.SelectedValue + "'";
                            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and c.company_name='" + DropDownList1.SelectedValue + "' and datepart(day,jobpost_date)='" + da.Day + "' and datepart(month,jobpost_date)='" + da.Month + "' and datepart(year,jobpost_date)='" + da.Year + "'");

                        }
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else if (rbtncurrentmonth.Checked == true)
                    {

                        DateTime da = DateTime.Today;
                       if (DropDownList1.Text == "0")
                        {
                            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and datepart(month,jobpost_date)='" + da.Month + "' and datepart(year,jobpost_date)='" + da.Year + "'");
                        
                        }
                        else
                        {
                            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and datepart(month,jobpost_date)='" + da.Month + "' and datepart(year,jobpost_date)='" + da.Year + "' and c.company_name='" + DropDownList1.SelectedValue + "'");
                        
                        }
                        GridView1.DataSource = ds;
                        GridView1.DataBind();
                    }
                    else
                    {
                        bind();
                    }
                }

            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    public void bind()
    {

        DateTime da = DateTime.Today;
        int id;
        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
       // ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id");
        
        if (DropDownList1.Text == "0")
        {
            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id");

        }
        else
        {
            string str;
            str = "select c.company_name from job_post j,company c where j.company_id=c.company_id and c.company_name='" + DropDownList1.SelectedValue + "'";
            ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and c.company_name='" + DropDownList1.SelectedValue + "'");

        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Page_Load(sender, e);
    }
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {

        GridView1.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);

        Page_Load(sender, e);
    }
    public void company()
    {
        ds = obj.conne("select company_name from company");
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "company_name";
        DropDownList1.DataValueField = "company_name";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            DateTime da = DateTime.Today;
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");

           
            if (DropDownList1.Text == "0")
            {
                ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id");
                
            }
            else
            {
                string str;
                str = "select c.company_name from job_post j,company c where j.company_id=c.company_id and c.company_name='" + DropDownList1.SelectedValue + "'";
                ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.jobpost_date,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_edu,j.interview_date from job_post j,company c where j.company_id=c.company_id and c.company_name='"+ DropDownList1.SelectedValue +"'");
              
            }
            GridView1.DataSource = ds;
            GridView1.DataBind();
            Page_Load(sender, e);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }

    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();

            obj.ide("delete from job_post where jobpost_id='" + id + "'");
            bind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}