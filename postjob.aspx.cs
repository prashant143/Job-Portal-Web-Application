using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class postjob : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnpostjob_Click(object sender, EventArgs e)
    {
        if (Session["employer"] != null)
        {
            try
            {
                int id;
                string str;
                str = DateTime.Now.ToString();
                id = obj.nubmerofrow("select company_id from company where username='" + Session["employer"] + "'");
                obj.ide("insert into job_post values('" + id + "','" + txtjobtitle.Text + "','" + str + "','" + txtvacancy.Text + "','" + txtmaxsal.Text + "','" + txtminsal.Text + "','" + txtappenddate.Text + "','" + txtreqexp.Text + "','" + txtreqskill.Text + "','" + txtreqedu.Text + "','" + txtinterdate.Text + "','" + DropDownList1.SelectedItem + "')");
                txtappenddate.Text = "";
                txtinterdate.Text = "";
                txtjobtitle.Text = "";
                txtmaxsal.Text = "";
                txtminsal.Text = "";
                txtreqedu.Text = "";
                txtreqexp.Text = "";
                txtreqskill.Text = "";
                txtvacancy.Text = "";
                DropDownList1.SelectedIndex = 0;
                lblerror.Text = "job posting successfully";
               
            }
            catch (Exception)
            {
                lblerror.Text = "Posting Fail Because Some error";
            }
        }
       
    }

    protected void txtnojobs_TextChanged(object sender, EventArgs e)
    {

    }
   
}