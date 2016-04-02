using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class candidate_detail : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            string str = Request.QueryString["id"];
            ds = obj.conne("select d.*,e.*,s.*,p.* from jobseeker_detail d,jobseeker_education e,skill s,jobseeker_profesional p where d.jobseeker_id=e.jobseeker_id and d.jobseeker_id=p.jobseeker_id and d.jobseeker_id=s.jobseeker_id and p.skill_id=s.skill_id and d.jobseeker_id='"+ Convert.ToInt16(str) +"'");
            lblfname.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            lblmname.Text = ds.Tables[0].Rows[0].ItemArray[6].ToString();
            lbllname.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            lbladd.Text = ds.Tables[0].Rows[0].ItemArray[8].ToString();
            lblgender.Text = ds.Tables[0].Rows[0].ItemArray[10].ToString();
            lbldob.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[11]).ToShortDateString();
            lblcno.Text = ds.Tables[0].Rows[0].ItemArray[12].ToString();
            lblemail.Text = ds.Tables[0].Rows[0].ItemArray[13].ToString();
            lblstatus.Text = ds.Tables[0].Rows[0].ItemArray[14].ToString();
            lblreligion.Text = ds.Tables[0].Rows[0].ItemArray[15].ToString();
            lbl10per.Text = ds.Tables[0].Rows[0].ItemArray[18].ToString();
            lbl12per.Text = ds.Tables[0].Rows[0].ItemArray[19].ToString();
            lblgradu.Text = ds.Tables[0].Rows[0].ItemArray[20].ToString();
            lblgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[21].ToString();
            lblpergradu.Text = ds.Tables[0].Rows[0].ItemArray[22].ToString();
            lblpostgradu.Text = ds.Tables[0].Rows[0].ItemArray[23].ToString();
            lblpostgraduinsti.Text = ds.Tables[0].Rows[0].ItemArray[24].ToString();
            lblpostgraduper.Text = ds.Tables[0].Rows[0].ItemArray[25].ToString();
            lblphd.Text = ds.Tables[0].Rows[0].ItemArray[26].ToString();
            lblskill.Text = ds.Tables[0].Rows[0].ItemArray[29].ToString();
            lbljobprofile.Text = ds.Tables[0].Rows[0].ItemArray[30].ToString();
            lblpostype.Text = ds.Tables[0].Rows[0].ItemArray[31].ToString();
            lblminsal.Text = ds.Tables[0].Rows[0].ItemArray[36].ToString();
            lblcurrency.Text = ds.Tables[0].Rows[0].ItemArray[37].ToString();
            lblindustry.Text = ds.Tables[0].Rows[0].ItemArray[38].ToString();
            lblindustryrole.Text = ds.Tables[0].Rows[0].ItemArray[39].ToString();
            ds = obj.conne("select c.*,p.* from category c,jobseeker_profesional p,jobseeker_detail d where c.category_id=p.category_id and d.jobseeker_id='" + Convert.ToInt16(str) + "' and p.jobseeker_id=d.jobseeker_id");
            lblcategory.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            ds = obj.conne("select c.*,s.*,c1.* from city c,state s,country c1,jobseeker_detail d where c.city_id=d.city_id and s.state_id=c.state_id and c1.country_id=s.country_id and d.jobseeker_id='" + Convert.ToInt16(str) + "'");
            lblcity.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
            lblstate.Text = ds.Tables[0].Rows[0].ItemArray[5].ToString();
            lblcountry.Text = ds.Tables[0].Rows[0].ItemArray[7].ToString();
            try
            {

                int cnt;
                ds = obj.conne("select e.* from jobseeker_detail d,experience e where e.jobseeker_id=d.jobseeker_id and d.jobseeker_id='" + Convert.ToInt16(str) + "'");
                cnt = ds.Tables[0].Rows.Count;
                if (cnt == 0)
                {
                    Panel4.Visible = false;
                }
                else
                {
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
            }
            catch (Exception)
            {
                Panel4.Visible=false;
            }
            try
            {
                Panel5.Visible = true;
                ds = obj.conne("select r.* from resume r,jobseeker_detail d where d.jobseeker_id=r.jobseeker_id and d.jobseeker_id='" + Convert.ToInt16(str) + "'");
                LinkButton3.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();

            }
            catch
            {
                Panel5.Visible = false;
                LinkButton3.Text = "not posted resume";
            }
            
        }
        else
        {
            Response.Redirect("search_candidate.aspx");
        }
    }
    protected void btnedit_Click(object sender, EventArgs e)
    {
        Response.Redirect("search_candidate.aspx");
    }
    protected void LinkButton3_Click(object sender, EventArgs e)
    {
        if (LinkButton3.Text != "not posted resume")
        {
            Response.AppendHeader("content-disposition", "attechment; filename=" + LinkButton3.Text);
            Response.TransmitFile(Server.MapPath(LinkButton3.Text));
        }  
    }
}