using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class viewpost_job_qry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("view_post_job.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str1 = Request.QueryString["id"];
        Class1 obj = new Class1();
       // int id1;
      //  id1 = obj.nubmerofrow("select jobpost_id from job_post where jobpost_id='"+ str1 +"'");
        obj.ide("delete from job_post where jobpost_id='"+ str1 +"'");
        Response.Redirect("view_post_job.aspx");   
    }
}