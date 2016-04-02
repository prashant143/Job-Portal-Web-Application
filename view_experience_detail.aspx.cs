using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_experience_detail : System.Web.UI.Page
{
    Class1 obj=new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobseeker"] != null)
            {
                int id;
                id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");

                DataSet ds = new DataSet();
                int cnt;
                ds = obj.conne("select * from experience where jobseeker_id='" + id + "'");
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
        }
        catch (Exception)
        {
            Label1.Text="Data are not available";
        }

    }
    
}