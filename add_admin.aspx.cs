using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class add_admin : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Question();
        }
    }
    public void Question()
    {
        ds = obj.conne("select * from question");
        ddlque.DataSource = ds.Tables[0];
        ddlque.DataTextField = "Question";
        ddlque.DataValueField = "que_id";
        ddlque.DataBind();
        ddlque.Items.Insert(0, new ListItem("--select security Question--", "0"));
    }
    protected void btnchangepwd_Click(object sender, EventArgs e)
    {
        try
        {
            string str = "admin";
            obj.ide("insert into login values('" + txtadmin.Text + "','" + txtnewpwd.Text + "','" + str + "')");
            obj.ide("insert into admin_reg values('"+ txtadmin.Text +"','"+ txtcno.Text +"','"+ txtemail.Text +"','"+ ddlque.SelectedValue +"','"+ txtans.Text +"')");
            Label1.Text = "Admin sucessfully Added";
            lblmsg.Text = "";
        }
        catch(Exception)
        {
            lblmsg.Text = "Admin already Exist";
            Label1.Text = "";
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtadmin.Text = "";
        txtnewpwd.Text = "";
        txtretypepwd.Text = "";
    }
    protected void txtadmin_TextChanged(object sender, EventArgs e)
    {
        if (txtadmin.Text != string.Empty)
        {
            Class1 obj = new Class1();
            int num;
            num = obj.nubmerofrow("select count(*) from login where username='" + txtadmin.Text + "'");
            if (num != 0)
            {
                Label2.Visible = true;
            }
            else
            {
                Label2.Visible = false;
            }
        }
    }
}