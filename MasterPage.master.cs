using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            obj.ide("update tblview set visitor=visitor+1");
        }
        if (Session["jobseeker"] != null)
        {
            LinkButton1.Text = "Log Out";
        }
        
        if (Session["employer"] != null)
        {
            LinkButton1.Text = "Log Out";
        }
        
        if (Session["admin"] != null)
        {
            LinkButton1.Text = "Log Out";
        }
        if (Session["jobseeker"] != null)
        {
            lnkwelcome.Text = "Welcome " + Session["jobseeker"];
        }
        if (Session["employer"] != null)
        {
            lnkwelcome.Text = "Welcome " + Session["employer"];
        }
        if (Session["admin"] != null)
        {
            lnkwelcome.Text = "Welcome " + Session["admin"];
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Log Out" && Session["jobseeker"]!=null)
        {
            LinkButton1.Text = "LogIn";
            Session["jobseeker"] = null;
            lnkwelcome.Text = "";
        }
        if (LinkButton1.Text == "Log Out" && Session["employer"] != null)
        {
            LinkButton1.Text = "LogIn";
            Session["employer"] = null;
            lnkwelcome.Text = "";
        }
        if (LinkButton1.Text == "Log Out" && Session["admin"] != null)
        {
            LinkButton1.Text = "LogIn";
            Session["admin"] = null;
            lnkwelcome.Text = "";
        }
        if (LinkButton1.Text == "LogIn")
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void lnkwelcome_Click(object sender, EventArgs e)
    {
        if (Session["jobseeker"] != null)
        {
            Response.Redirect("jobseeker_account.aspx");
        }
        if (Session["employer"] != null)
        {
            Response.Redirect("employer_account.aspx");
        }
        if (Session["admin"] != null)
        {
            Response.Redirect("admin.aspx");
        }
    }
    protected void page_init(object sender, EventArgs e)
    {
        Response.Cache.SetExpires(DateTime.UtcNow.AddMinutes(-1));
        Response.Cache.SetCacheability(HttpCacheability.NoCache);
        Response.Cache.SetNoStore();
    }
}
