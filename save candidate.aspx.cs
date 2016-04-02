using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Web.Mail;
using System.Net;

public partial class save_candidate : System.Web.UI.Page
{
    int id1;
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    int c;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["employer"] != null)
            {
                MultiView1.ActiveViewIndex = 0;
                lblmessage.Text = "Save Candidate for " + Session["employer"] + "Company";
                if (!IsPostBack)
                {
                    bind();
                }
            }
        }
        catch (Exception)
        {
            Response.Write("some Error");
        }
    }
    public void bind()
    {
        try
        {
            int id;
            DateTime da = DateTime.Today;
            id = obj.nubmerofrow("select company_id from company where username='" + Session["employer"] + "'");
            string str = "select a.jobapplied_id,j.job_title,j.interview_date,d.username from job_post j,job_applied a,jobseeker_detail d where j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and j.interview_date>='" + da + "' and a.jobseeker_id not in(select jobseeker_id from save_candidates) and j.jobpost_id not in(select jobpost_id from save_candidates) ";
            ds = obj.conne("select a.jobapplied_id,j.job_title,j.interview_date,d.username from job_post j,job_applied a,jobseeker_detail d where j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and j.interview_date<='" + da + "' ");
            grdapplyjob.DataSource = ds;
            grdapplyjob.DataBind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
    protected void grdapplyjob_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        int id;

        id = obj.nubmerofrow("select company_id from company where username='" + Session["employer"] + "'");
        MultiView1.ActiveViewIndex = 1;
        Label1.Text = "Jobseeker Detail";
      
        id1 = Convert.ToInt16(grdapplyjob.DataKeys[e.RowIndex].Value);
        ds = obj.conne("select d.*,e.* from job_post j,job_applied a,jobseeker_detail d,jobseeker_education e where e.jobseeker_id=d.jobseeker_id and j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "'");
        string str;
        lblfname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
        lblmname.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
        lbllname.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
        lbladd.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
        lblgender.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
        lbldob.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
        lblcno.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
        lblemail.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
        lblstatus.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
        lblreligion.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
        str = obj.getemil("select c.city_name from job_post j,job_applied a,jobseeker_detail d,city c where j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "' and c.city_id=d.city_id");
        lblcity.Text = str;
        str = obj.getemil("select s.state_name from job_post j,job_applied a,jobseeker_detail d,city c,state s where j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "' and c.city_id=d.city_id and s.state_id=c.state_id");
        lblstate.Text = str;
        str = obj.getemil("select c1.country_name from job_post j,job_applied a,jobseeker_detail d,city c,state s,country c1 where j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "' and c.city_id=d.city_id and s.state_id=c.state_id and s.country_id=c1.country_id");
        lblcountry.Text = str;



        lbl10per.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
        lbl12per.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
        lblgradu.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
        lblgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
        lblpergradu.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();
        lblpostgradu.Text = ds.Tables[0].Rows[0].ItemArray[23].ToString();
        lblpostgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[24].ToString();
        lblpostgraduper.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
        lblphd.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString();

        ds = obj.conne("select s.*,p.*,c.* from job_post j,job_applied a,jobseeker_detail d,skill s,jobseeker_profesional p,category c where s.jobseeker_id=d.jobseeker_id and c.category_id=p.category_id and p.jobseeker_id=d.jobseeker_id and s.skill_id=p.skill_id and j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "'");
        if (ds.Tables[0].Rows.Count != 0)
        {
            lblskill.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            lbljobprofile.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            lblpostype.Text = ds.Tables[0].Rows[0].ItemArray[4].ToString();
            lblminsal.Text = ds.Tables[0].Rows[0].ItemArray[9].ToString();

            lblcurrency.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            lblindustry.Text = ds.Tables[0].Rows[0].ItemArray[11].ToString();
            lblindustryrole.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            lblcategory.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
        }
        try
        {

            int cnt;
            ds = obj.conne("select e.* from job_post j,job_applied a,jobseeker_detail d,experience e where e.jobseeker_id=d.jobseeker_id and j.company_id='" + id + "' and a.jobpost_id=j.jobpost_id and d.jobseeker_id=a.jobseeker_id and a.jobapplied_id='" + id1 + "'");

            //     ds = obj.conne("select * from experience where jobseeker_id='" + id + "'");
            cnt = ds.Tables[0].Rows.Count;

            for (; cnt != 0; )
            {
                switch (cnt)
                {

                    case 3:
                        {
                            lblexpcompname2.Text = ds.Tables[0].Rows[2][2].ToString();
                            lbljob2.Text = ds.Tables[0].Rows[2][3].ToString();
                            lblyear2.Text = ds.Tables[0].Rows[2][4].ToString();
                            lblmonth2.Text = ds.Tables[0].Rows[2][5].ToString();
                            lblreasion2.Text = ds.Tables[0].Rows[2][6].ToString();
                            break;
                        }
                    case 2:
                        {
                            lblexpcompname1.Text = ds.Tables[0].Rows[1][2].ToString();
                            lbljob1.Text = ds.Tables[0].Rows[1][3].ToString();
                            lblyear1.Text = ds.Tables[0].Rows[1][4].ToString();
                            lblmonth1.Text = ds.Tables[0].Rows[1][5].ToString();
                            lblreasion1.Text = ds.Tables[0].Rows[1][6].ToString();
                            break;
                        }
                    case 1:
                        {
                            lblexpcompname.Text = ds.Tables[0].Rows[0][2].ToString();
                            lbljob.Text = ds.Tables[0].Rows[0][3].ToString();
                            lblyear.Text = ds.Tables[0].Rows[0][4].ToString();
                            lblmonth.Text = ds.Tables[0].Rows[0][5].ToString();
                            lblreasion.Text = ds.Tables[0].Rows[0][6].ToString();
                            break;
                        }
                }
                cnt = cnt - 1;
            }
        }
        catch (Exception)
        {
            Label2.Text = "No any Experience";
        }
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void grdapplyjob_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdapplyjob.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            int id1,id2;
            id2 = obj.nubmerofrow("select jobseeker_id from job_applied where jobapplied_id='"+ id +"'");
            c = id2;
            id1 = obj.nubmerofrow("select jobpost_id from job_applied where jobapplied_id='"+ id +"'");
            obj.ide("insert into save_candidates values('" + id2 + "','" + id1 + "')");
            //string email;
            //email = obj.getemil("select email_id from jobseeker_detail where jobseeker_id=(select jobseeker_id from job_applied where jobapplied_id='"+ id +"')");
            //string email1, pwd1;
            //email1 = obj.getemil("select email_id from setting");
            //pwd1 = obj.getemil("select pwd from setting");
            //var smtp = new System.Net.Mail.SmtpClient();
            //{
            //    smtp.Host = "smtp.gmail.com";
            //    smtp.Port = 587;
            //    smtp.EnableSsl = true;
            //    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
            //    smtp.Credentials = new NetworkCredential(email1,pwd1);
            //    smtp.Timeout = 20000;
            //}
            //string company, contect;
            //int n;
            //n = obj.nubmerofrow("select max(saved_id) from save_candidates");
            //company = obj.getemil("select company_name from company where username='"+ Session["employer"] +"'");
            ////interview = obj.getemil("select interview_date from job_post where jobpost_id=(select jobpost_id from job_applied where jobapplied_id='" + n + "') ");
            //contect = obj.getemil("select company_contect from company where username='" + Session["employer"] + "'");

            //smtp.Send(email1, email, "Get Job", "You are selected in Interview for " + company + " Company. Tommorow your job is starts. you can get more information then call this number " + contect);
            
            int max;
            max = obj.nubmerofrow("select j.jobapplied_id from job_applied j,save_candidates c where j.jobseeker_id=c.jobseeker_id and j.jobpost_id=c.jobpost_id");
            obj.ide("delete from job_applied where jobapplied_id='"+ max +"'");
            bind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }


    protected void grdapplyjob_PageIndexChanging1(object sender, GridViewPageEventArgs e)
    {

        grdapplyjob.PageIndex = e.NewPageIndex;
        bind();
    }
}