using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class view_post_job : System.Web.UI.Page
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
                str = obj.getemil("select company_name from company where username='" + Session["employer"] + "'");
                lblmessage.Text = "Job Post Detail for " + str + " Company";
               
            }
        }
        catch (Exception)
        {
            Response.Write("Some Error");
        }

    }

   
}