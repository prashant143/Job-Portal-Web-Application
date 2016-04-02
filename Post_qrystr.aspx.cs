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

public partial class Post_qrystr : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("advance_job_search.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        try
        {
           // int id;
            //id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);

            string str1 = Request.QueryString["id"];
            Class1 obj = new Class1();
            int id1;
            id1 = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            string str;
            str = DateTime.Now.ToString();
            obj.ide("insert into job_applied values('" + id1 + "','" + Convert.ToInt16(str1) + "','" + str + "')");
            string email;
            email = obj.getemil("select email_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            string email1, pwd1;
            email1 = obj.getemil("select email_id from setting");
            pwd1 = obj.getemil("select pwd from setting");
            var smtp = new System.Net.Mail.SmtpClient();
            {
                smtp.Host = "smtp.gmail.com";
                smtp.Port = 587;
                smtp.EnableSsl = true;
                smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                smtp.Credentials = new NetworkCredential(email1,pwd1);
                smtp.Timeout = 25000;
            }
            string company, interview, contect;
            int n;
            n = obj.nubmerofrow("select max(jobapplied_id) from job_applied");
            company = obj.getemil("select company_name from company where company_id=(select company_id from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "')) ");
            interview = obj.getemil("select interview_date from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "') ");
            contect = obj.getemil("select company_contect from company where company_id=(select company_id from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "')) ");

            smtp.Send(email1, email, "job Apply", "You are applied job  for " + company + " company. Interview date from this job are " + interview + " You can get Some extra information then call This number " + contect);
            Response.Redirect("advance_job_search.aspx");
        }
        catch (Exception)
        {
            Response.Write("Time out");
        }
    }
}