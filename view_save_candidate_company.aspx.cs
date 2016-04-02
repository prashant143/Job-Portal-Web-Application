using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class view_save_candidate_company : System.Web.UI.Page
{

    Class1 obj = new Class1();
    DataSet ds = new DataSet();
 
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["employer"] != null)
            {
                MultiView1.ActiveViewIndex = 0;
                lblmessage.Text = "Saved  Candidates  Detail";
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
            //string str = "select s.saved_id,j.job_title,d.username,r.path from job_post j,save_candidates s,jobseeker_detail d,resume r where j.company_id='" + id + "' and s.jobpost_id=j.jobpost_id and d.jobseeker_id=s.jobseeker_id and d.jobseeker_id=r.jobseeker_id and j.interview_date>='" + da + "'";
            ds = obj.conne("select s.saved_id,j.job_title,d.username,r.path from job_post j,save_candidates s,jobseeker_detail d,resume r where j.company_id='" + id + "' and s.jobpost_id=j.jobpost_id and d.jobseeker_id=s.jobseeker_id and d.jobseeker_id=r.jobseeker_id");
            grdapplyjob.DataSource = ds;
            grdapplyjob.DataBind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
   
    protected void grdapplyjob_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {

            int id, id1;
            id = Convert.ToInt16(grdapplyjob.DataKeys[e.RowIndex].Value);
            id1 = obj.nubmerofrow("select jobseeker_id from save_candidates where saved_id='" + id + "'");

            string str;
            str = obj.getemil("select path from resume where jobseeker_id='" + id1 + "'");
            Response.AppendHeader("content-disposition", "attechment; filename=" + str);
            Response.TransmitFile(Server.MapPath(str));


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
        int id1;
        id1 = Convert.ToInt16(grdapplyjob.DataKeys[e.RowIndex].Value);
        ds = obj.conne("select d.*,e.* from job_post j,save_candidates s,jobseeker_detail d,jobseeker_education e where e.jobseeker_id=d.jobseeker_id and j.company_id='" + id + "' and s.jobpost_id=j.jobpost_id and d.jobseeker_id=s.jobseeker_id and s.saved_id='" + id1 + "'");
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
        str = obj.getemil("select c.city_name from job_post j,save_candidates s1,jobseeker_detail d,city c where j.company_id='" + id + "' and s1.jobpost_id=j.jobpost_id and d.jobseeker_id=s1.jobseeker_id and s1.saved_id='" + id1 + "' and c.city_id=d.city_id");
        lblcity.Text = str;
        str = obj.getemil("select s.state_name from job_post j,save_candidates s1,jobseeker_detail d,city c,state s where j.company_id='" + id + "' and s1.jobpost_id=j.jobpost_id and d.jobseeker_id=s1.jobseeker_id and s1.saved_id='" + id1 + "' and c.city_id=d.city_id and s.state_id=c.state_id");
        lblstate.Text = str;
        str = obj.getemil("select c1.country_name from job_post j,save_candidates s1,jobseeker_detail d,city c,state s,country c1 where j.company_id='" + id + "' and s1.jobpost_id=j.jobpost_id and d.jobseeker_id=s1.jobseeker_id and s1.saved_id='" + id1 + "' and c.city_id=d.city_id and s.state_id=c.state_id and s.country_id=c1.country_id");
        lblcountry.Text = str;



        lbl10per.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
        lbl12per.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
        lblgradu.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
        lblgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
        lblpergradu.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();
        lblpostgradu.Text = ds.Tables[0].Rows[0].ItemArray[23].ToString();
        lblpostgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[24].ToString();
        lblpostgraduper.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
        lblphd.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString(); ;

        ds = obj.conne("select s.*,p.*,c.* from job_post j,save_candidates s1,jobseeker_detail d,skill s,jobseeker_profesional p,category c where s.jobseeker_id=d.jobseeker_id and c.category_id=p.category_id and p.jobseeker_id=d.jobseeker_id and s.skill_id=p.skill_id and j.company_id='" + id + "' and s1.jobpost_id=j.jobpost_id and d.jobseeker_id=s1.jobseeker_id and s1.saved_id='" + id1 + "'");
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
            ds = obj.conne("select e.* from job_post j,save_candidates s,jobseeker_detail d,experience e where e.jobseeker_id=d.jobseeker_id and j.company_id='" + id + "' and s.jobpost_id=j.jobpost_id and d.jobseeker_id=s.jobseeker_id and s.saved_id='" + id1 + "'");
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
    protected void grdapplyjob_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {

        grdapplyjob.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
}