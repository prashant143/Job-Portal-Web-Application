using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class search_candidate : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            category();
            position();
            institute();
            MultiView1.ActiveViewIndex = 0;
        }
    }
    public void category()
    {
        ds = obj.conne("select c.category_name from category c,jobseeker_profesional p where c.category_id=p.category_id group by c.category_name");
        ddlcategory.DataSource = ds.Tables[0];
        ddlcategory.DataTextField = "category_name";
        ddlcategory.DataValueField = "category_name";
        ddlcategory.DataBind();
        ddlcategory.Items.Insert(0, new ListItem("select", "0"));
    }
    public void position()
    {
        ds = obj.conne("select position_type from skill group by position_type");
        ddlpos.DataSource = ds.Tables[0];
        ddlpos.DataTextField = "position_type";
        ddlpos.DataValueField = "position_type";
        ddlpos.DataBind();
        ddlpos.Items.Insert(0, new ListItem("select", "0"));
    }
    public void institute()
    {
        ds = obj.conne("select institute_post_grad from jobseeker_education group by institute_post_grad");
        ddlinstitute.DataSource = ds.Tables[0];
        ddlinstitute.DataTextField = "institute_post_grad";
        ddlinstitute.DataValueField = "institute_post_grad";
        ddlinstitute.DataBind();
        ddlinstitute.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void btnsearch_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
    }
}