using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Mail;
using System.Net;

public partial class advance_job_search: System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jobseeker"] != null)
        {
            if (!IsPostBack)
            {
                company();
                position();
                job();
                MultiView1.ActiveViewIndex = 0;
            }
        }
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
    public void position()
    {
        int id;
        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
       
        ds = obj.conne("select require_postype from job_post group by require_postype");
        ddlpos.DataSource = ds.Tables[0];
        ddlpos.DataTextField = "require_postype";
        ddlpos.DataValueField = "require_postype";
        ddlpos.DataBind();
        ddlpos.Items.Insert(0, new ListItem("select", "0"));
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

    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
    
    protected void ddtexpireance_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}