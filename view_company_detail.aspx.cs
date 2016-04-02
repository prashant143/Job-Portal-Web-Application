using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_company_info : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["employer"] != null)
            {
                string str;
                ds = obj.conne("select * from company where username='" + Session["employer"] + "'");
                lblname.Text = ds.Tables[0].Rows[0][1].ToString();
                lbluname.Text = ds.Tables[0].Rows[0][2].ToString();
                lblwebsite.Text = ds.Tables[0].Rows[0][13].ToString();
                lblemail.Text = ds.Tables[0].Rows[0][11].ToString();
                lblcontactname.Text = ds.Tables[0].Rows[0][8].ToString();
                lblcno.Text = ds.Tables[0].Rows[0][9].ToString();
                lbladdress.Text = ds.Tables[0].Rows[0][10].ToString();
                lblziptype.Text = ds.Tables[0].Rows[0][7].ToString();
                lbldetail.Text = ds.Tables[0].Rows[0][12].ToString();
                str = obj.getemil("select company_type from company_mst where company_id=(select company_id from company where username='" + Session["employer"] + "')");
                lbltype.Text = str;

                str = obj.getemil("select c.category_name from category c,company c1,company_mst c2 where c1.company_id=c2.company_id and c.category_id=c2.category_id and c1.username='" + Session["employer"] + "'");
                lblcategory.Text = str;
                str = obj.getemil("select city_name from city where city_id=(select city_id from company where username='" + Session["employer"] + "')");
                lblcity.Text = str;
                str = obj.getemil("select state_name from state where state_id=(select state_id from city where city_id=(select city_id from company where username='" + Session["employer"] + "'))");
                lblstate.Text = str;
                str = obj.getemil("select country_name from country where country_id=(select country_id from state where state_id=(select state_id from city where city_id=(select city_id from company where username='" + Session["employer"] + "')))");
                lblcountry.Text = str;

                str = obj.getemil("select company_logo_path from company_mst where company_id=(select company_id from company where username='" + Session["employer"] + "')");
                Image1.ImageUrl = str;

            }
        }
        catch (Exception)
        {
           Label1.Text= "Data Not Available";
        }
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {

    }
}