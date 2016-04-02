using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class admin_profile_edit : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin"] != null)
            {
                ds = obj.conne("select * from admin_reg where username='" + Session["admin"] + "'");
                Label4.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
                txtcno.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
                txteid.Text = ds.Tables[0].Rows[0].ItemArray[3].ToString();
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Session["admin"] != null)
        {
           
            obj.ide("update admin_reg set contact_no='" + txtcno.Text + "',email_id='" + txteid.Text + "' where username='" + Session["admin"] + "'");
            Response.Redirect("admin_profile.aspx");
        }
        else
        {
            Response.Redirect("login.aspx");
        }
    }
}