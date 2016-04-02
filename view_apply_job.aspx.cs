using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class view_apply_job : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
        
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobseeker"] != null)
            {
                MultiView1.ActiveViewIndex = 0;
                lblmessage.Text = "Job Applied Detail for " + Session["jobseeker"];
                if (!IsPostBack)
                {
                    bind();
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
            int id;
            DateTime da = DateTime.Today;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            ds = obj.conne("select a.jobapplied_id,j.job_title,j.interview_date,c.company_name from job_post j,job_applied a,company c where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and j.interview_date >='"+ da +"' ");
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
        bind();
    }
    protected void grdapplyjob_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

        int id;

        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            
       // MultiView1.ActiveViewIndex = 1;
       // lblmsg1.Text = "Company Detail";
        int id1;
        id1 = Convert.ToInt16(grdapplyjob.DataKeys[e.RowIndex].Value);
        ds = obj.conne("select c.*,c1.* from job_post j,job_applied a,company c,company_mst c1 where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobapplied_id='" + id1 + "' and c.company_id=c1.company_id");
        Response.Redirect("company_qrystr.aspx?id="+ ds.Tables[0].Rows[0].ItemArray[0].ToString());
      /*  string str;
        lbladd.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
        lblname.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
        lblzipcode.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        lblceo.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        lblcontect.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();
        lblemail.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
        lbldetail.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
        lblsite.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
        lblindustry.Text = ds.Tables[0].Rows[0].ItemArray[16].ToString();
        lblcategory.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
        str = obj.getemil("select c2.city_name from job_post j,job_applied a,company c,city c2 where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobapplied_id='" + id1 + "' and c2.city_id=c.city_id");
        lblcity.Text = str;
        str = obj.getemil("select s.state_name from job_post j,job_applied a,company c,city c2,state s where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobapplied_id='" + id1 + "' and c2.city_id=c.city_id and c2.state_id=s.state_id");
        lblstate.Text = str;
        str = obj.getemil("select c1.country_name from job_post j,job_applied a,company c,city c2,state s,country c1 where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobapplied_id='" + id1 + "' and c2.city_id=c.city_id and c2.state_id=s.state_id and c1.country_id=s.country_id");
        lblcountry.Text = str;
        str = obj.getemil("select c1.company_logo_path from job_post j,job_applied a,company c,company_mst c1 where a.jobseeker_id='" + id + "' and a.jobpost_id=j.jobpost_id and c.company_id=j.company_id and a.jobapplied_id='" + id1 + "' and c.company_id=c1.company_id");
        Image1.ImageUrl = str;*/
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {

        MultiView1.ActiveViewIndex = 0;
    }
    protected void grdapplyjob_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}