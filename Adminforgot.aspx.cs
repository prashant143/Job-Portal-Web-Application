using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Mail;
using System.Net;

public partial class Adminforgot : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            questions();
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        try
        {
            Class1 obj = new Class1();
            int cnt;
            cnt = obj.nubmerofrow("select count(*) from admin_reg where username='" + txtuname.Text + "' and que_id='" + ddlque.SelectedValue + "' and ans='" + txtans.Text + "'");
            if (cnt == 1)
            {
                string email;
                email = obj.getemil("select email_id from admin_reg where username='" + txtuname.Text + "'");
                string email1, pwd1;
                email1 = obj.getemil("select email_id from setting");
                pwd1 = obj.getemil("select pwd from setting");
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(email1, pwd1);
                    smtp.Timeout = 25000;
                }
                string pwd;
                pwd = obj.getemil("select password from login where username='" + txtuname.Text + "'");
                smtp.Send(email1, email, "forgot password", "your password is:-" + pwd);
                txtans.Text = "";
                txtuname.Text = "";
                lblnot.Text = " message successfully send your email-id";
            }
            else
            {
                lblnot.Text = "Invalid Detail";
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }

    public void questions()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();

        ds = obj.conne("select * from Question");
        ddlque.DataSource = ds.Tables[0];
        ddlque.DataTextField = "Question";
        ddlque.DataValueField = "que_id";
        ddlque.DataBind();
        ddlque.Items.Insert(0, new ListItem("--select Questions--", "0"));
    }
}