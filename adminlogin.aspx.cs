using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Net;

using System.IO;


public partial class adminlogin : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            MultiView1.ActiveViewIndex = 0;
        }
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        int no;
            string role = "admin";
            no = obj.nubmerofrow("select count(*) from login where username='" + txtuname.Text + "' and password='" + txtpass.Text + "' and Role='" + role + "'");
            if (no == 1)
            {
                try
                {
                    int n;
                    n = new Random().Next(1000, 9999);
                    Label1.Text = n.ToString();
                    //string str;
                    //str = obj.getemil("select contact_no from admin_reg where username='" + txtuname.Text + "'");
                    //string strUrl = "http://api.mVaayoo.com/mvaayooapi/MessageCompose?user=patel_bhumi14@ymail.com:bhumika&senderID=TEST SMS&receipientno="+ str +"&msgtxt=varification code" + n + "&state=4";
                    //WebRequest request = HttpWebRequest.Create(strUrl);
                    //HttpWebResponse response = (HttpWebResponse)request.GetResponse();
                    //Stream s = (Stream)response.GetResponseStream();
                    //StreamReader readStream = new StreamReader(s);
                    //string dataString = readStream.ReadToEnd();
                    //response.Close();
                    //s.Close();
                    //readStream.Close();
                   string email,pwd;
                    email = obj.getemil("select email_id from setting");
                    pwd = obj.getemil("select pwd from setting");
                var smtp = new System.Net.Mail.SmtpClient();
                {
                    smtp.Host = "smtp.gmail.com";
                    smtp.Port = 587;
                    smtp.EnableSsl = true;
                    smtp.DeliveryMethod = System.Net.Mail.SmtpDeliveryMethod.Network;
                    smtp.Credentials = new NetworkCredential(email, pwd);
                    smtp.Timeout = 25000;
                }
                string s;
                s = obj.getemil("select email_id from admin_reg where username='" + txtuname.Text + "'");
                smtp.Send(email, s, "Admin verification code", "verification code is:- " + n);
                MultiView1.ActiveViewIndex = 1;
                }
                catch (Exception)
                {
                    Response.Write("time out");
                }
            }
            else
            {
                lblerror.Text = "Invalid Username or Password";
            }

        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == Label1.Text)
        {
            Label2.Text = "";
            Session["admin"] = txtuname.Text;
            Response.Redirect("admin.aspx");
        }
        else
        {
            Label2.Text = "invalid varification code";
        }
    }
}