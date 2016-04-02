using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Net;
using System.Net.Mail;

using System.Net.Mime;


public partial class send_mail : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
               // TextBox1.ReadOnly = true;
                string str;
                str = obj.getemil("select email_id from feedback where feedback_id='" + Request.QueryString["id"] + "'");
               // TextBox1.Text = str;
            }
            else
            {
                //TextBox1.ReadOnly = false;
            }
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        txtmsg.Text = "";
        txtsubject.Text = "";
       // TextBox1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        


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
        smtp.Send(email1, TextBox1.Text, txtsubject.Text, txtmsg.Text);



        Label1.Text = "message send successfully";
        TextBox1.Text = "";
            txtmsg.Text = "";
            txtsubject.Text = "";
           //TextBox1.Text = "";
        
       
    }
}