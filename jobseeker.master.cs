using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class jobseeker : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jobseeker"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            LinkButton2.Text = "welcome  " + Session["jobseeker"] + "....";
        }

    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        
    }
   
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {

        Session["jobseeker"] = null;
        Response.Redirect("home.aspx");
    }
    protected void LinkButton2_Click1(object sender, EventArgs e)
    {
        if (Session["jobseeker"] != null)
        {
            Response.Redirect("jobseeker_account.aspx");
        }
    }
    protected void page_init(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
}
