using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_professional_detail : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            int id, cnt;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");

            if (Session["jobseeker"] != null)
            {
                cnt = obj.nubmerofrow("select count(*) from jobseeker_profesional where jobseeker_id='" + id + "'");
                if (cnt > 0)
                {
                    string str;
                    ds = obj.conne("select * from jobseeker_profesional where jobseeker_id='" + id + "'");
                    lblminsal.Text = ds.Tables[0].Rows[0][4].ToString();
                   
                    lblcurrency.Text = ds.Tables[0].Rows[0][5].ToString();
                    lblIndustry.Text = ds.Tables[0].Rows[0][6].ToString();
                    lblIndustryRole.Text = ds.Tables[0].Rows[0][7].ToString();
                    str = obj.getemil("select category_name from category where category_id=(select category_id from jobseeker_profesional where jobseeker_id='" + id + "')");
                    lblcategory.Text = str;
                }
                int cnt1;
                cnt1 = obj.nubmerofrow("select count(*) from skill where jobseeker_id='" + id + "'");
                if (cnt1 > 0)
                {
                    string str;
                    str = obj.getemil("select skill_name from skill where jobseeker_id='" + id + "'");
                    lblkeyskill.Text = str;
                    str = obj.getemil("select job_profile from skill where jobseeker_id='" + id + "'");
                    lbljobprofile.Text = str;
                    str = obj.getemil("select position_type from skill where jobseeker_id='" + id + "'");
                    lblpositiontype.Text = str;
                }
            }
        }
        catch (Exception)
        {
            Label1.Text="data are not available";
        }

    }
    
}