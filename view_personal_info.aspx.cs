using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_personal_info : System.Web.UI.Page
{

    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
       try
        {
            if (Session["jobseeker"] != null)
            {
                ds = obj.conne("Select * from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                lblfname.Text = ds.Tables[0].Rows[0][5].ToString();
                lblmname.Text = ds.Tables[0].Rows[0][6].ToString(); 
                lbllname.Text = ds.Tables[0].Rows[0][7].ToString(); 
                lbladdress.Text = ds.Tables[0].Rows[0][8].ToString();
                lblgender.Text = ds.Tables[0].Rows[0][10].ToString(); 
                lblemail.Text = ds.Tables[0].Rows[0][13].ToString(); 
                lblstatus.Text = ds.Tables[0].Rows[0][14].ToString(); 
                lbldob.Text = Convert.ToDateTime(ds.Tables[0].Rows[0][11]).ToShortDateString(); 
                lblcontact.Text = ds.Tables[0].Rows[0][12].ToString();
                lblreligion.Text = ds.Tables[0].Rows[0][15].ToString(); 
                string str;
                str = obj.getemil("select city_name from city where city_id=(select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "')");
                lblcity.Text = str;
                str = obj.getemil("select state_name from state where state_id=(select state_id from city where city_id=(select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "'))");
                lblstate.Text = str;
                str = obj.getemil("select country_name from country where country_id=(select country_id from state where state_id=(select state_id from city where city_id=(select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "')))");
                lblcountry.Text = str;

                int cnt;
                ds = obj.conne("select * from language where jobseeker_id=(select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "')");
                cnt = ds.Tables[0].Rows.Count;

                for (; cnt != 0; )
                {
                    switch (cnt)
                    {
                        case 4:
                            {
                                lbllang4.Text = ds.Tables[0].Rows[3][2].ToString();
                                y4.Text = ds.Tables[0].Rows[3][3].ToString();
                                y8.Text = ds.Tables[0].Rows[3][4].ToString();
                                y12.Text = ds.Tables[0].Rows[3][5].ToString();
                                break;
                            }

                        case 3:
                            {

                                lbllang3.Text = ds.Tables[0].Rows[2][2].ToString();
                                y3.Text = ds.Tables[0].Rows[2][3].ToString();
                                y7.Text = ds.Tables[0].Rows[2][4].ToString();
                                y11.Text = ds.Tables[0].Rows[2][5].ToString();
                                break;
                            }
                        case 2:
                            {
                                lbllang2.Text = ds.Tables[0].Rows[1][2].ToString();
                                y2.Text = ds.Tables[0].Rows[1][3].ToString();
                                y6.Text = ds.Tables[0].Rows[1][4].ToString();
                                y10.Text = ds.Tables[0].Rows[1][5].ToString();
                                break;
                            }
                        case 1:
                            {
                                lbllang1.Text = ds.Tables[0].Rows[0][2].ToString();
                                y1.Text = ds.Tables[0].Rows[0][3].ToString();
                                y5.Text = ds.Tables[0].Rows[0][4].ToString();
                                y9.Text = ds.Tables[0].Rows[0][5].ToString();
                                break;
                            }
                    }
                    cnt = cnt - 1;
                }
            }
        }
        catch (Exception)
        {
            Label1.Text="data are not available";
        }

        
    }
    
}