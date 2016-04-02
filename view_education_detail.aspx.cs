using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_education_detail : System.Web.UI.Page
{
    Class1 obj=new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (Session["jobseeker"] != null)
            {
                int id;
                id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                ds = obj.conne("select * from jobseeker_education where jobseeker_id='" + id + "'");
                lbl10per.Text = ds.Tables[0].Rows[0][2].ToString();
                lbl12per.Text = ds.Tables[0].Rows[0][3].ToString();
                lblgraduation.Text = ds.Tables[0].Rows[0][4].ToString();
                lblgradinsti.Text = ds.Tables[0].Rows[0][5].ToString();
                lblgradper.Text = ds.Tables[0].Rows[0][6].ToString();
                lblpostgrad.Text = ds.Tables[0].Rows[0][7].ToString();
                lblpostgradinsti.Text = ds.Tables[0].Rows[0][8].ToString();
                lblpostgradper.Text = ds.Tables[0].Rows[0][9].ToString();
                lblphd.Text = ds.Tables[0].Rows[0][10].ToString();
               
            }
        }
        catch (Exception)
        {
            Label1.Text = "data are not available";
        }

    }

    protected void btnedit_Click(object sender, EventArgs e)
    {

    }
}