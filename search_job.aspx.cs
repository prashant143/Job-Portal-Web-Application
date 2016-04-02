using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mail;
using System.Net;

public partial class search_job : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jobseeker"] != null)
        {
            if (!IsPostBack)
            {
                bind();
              
            }

        }
    }
    public void bind()
    {

        DateTime da = DateTime.Today;
        int id;
        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");

        ds = obj.conne("select j.jobpost_id,c.company_name,j.job_title,j.no_of_vacancy,j.Max_sal,j.min_sal,j.app_end_date,j.require_exper,j.require_skill,j.require_postype,j.interview_date from job_post j,company c where j.app_end_date >='" + da + "' and j.company_id=c.company_id and j.jobpost_id not in(select jobpost_id from job_applied where jobseeker_id='" + id + "')");

        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            int id1;
            id1 = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            string str;
            str = DateTime.Now.ToString();
            obj.ide("insert into job_applied values('" + id1 + "','" + id + "','" + str + "')");
            string email;
            email = obj.getemil("select email_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential("jobsportal221@gmail.com", "newjobsss");
                smtp.Timeout = 20000;
            }
            string company,interview,contect;
            int n;
            n = obj.nubmerofrow("select max(jobapplied_id) from job_applied");
            company = obj.getemil("select company_name from company where company_id=(select company_id from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='"+ n +"')) ");
            interview = obj.getemil("select interview_date from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "') ");
            contect = obj.getemil("select company_contect from company where company_id=(select company_id from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "')) ");
            
            smtp.Send("jobsportal221@gmail.com", email, "job Apply", "You are applied job from site https://www.jobportal.org for " + company + " company. Interview date from this job are " + interview + " You can get Some extra information then call This number " + contect);
            bind();
        }
        catch (Exception)
        {
            Response.Write("Time out");
        }
    }

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();

    }
}
    