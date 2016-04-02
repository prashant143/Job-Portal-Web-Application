using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class change_pwd2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtnewpwd.Text = "";
        txtoldpwd.Text = "";
        txtretypepwd.Text = "";
    }
    protected void btnchangepwd_Click(object sender, EventArgs e)
    {
        string str;
        Class1 obj = new Class1();
        str = obj.getemil("select password from login where username='"+ Session["employer"] +"'");
        if (str == txtoldpwd.Text)
        {
            obj.ide("update login set password='" + txtnewpwd.Text + "' where username='" + Session["employer"] + "'");
            lblmsg.Text = "Password successfully Changed";
        }
        else
        {
            lblmsg.Text = "Your old Password is wrong.Password does not changed.";
        }
    }
}