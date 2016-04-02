using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Mail;
using System.Net;

using System.IO;

public partial class jobseeker_login : System.Web.UI.Page
{
    Class1 obj = new Class1();
    
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        if (rbtnjobseeker.Checked == true)
        { 
            int no;
            string role="jobseeker";
            no = obj.nubmerofrow("select count(*) from login where username='" + txtuname.Text + "' and password='" + txtpass.Text + "' and Role='"+ role +"'");
            if (no == 1)
            {
                Session["jobseeker"] = txtuname.Text;
                obj.ide("update tblview set candidate=candidate+1");
                Response.Redirect("jobseeker_account.aspx");
            }
            else
            {
                lblerror.Text = "Invalid Username or Password";
            }
        
        }
        if (rbtncompany.Checked == true)
        {
            int no;
            string role = "company";
            no = obj.nubmerofrow("select count(*) from login where username='" + txtuname.Text + "' and password='" + txtpass.Text + "' and Role='" + role + "'");
            if (no == 1)
            {
                Session["employer"] = txtuname.Text;
                obj.ide("update tblview set company=company+1");
                Response.Redirect("employer_account.aspx");
               
            }
            else
            {
                lblerror.Text = "Invalid Username or Password";
            }

        }
        if(rbtncompany.Checked==false && rbtnjobseeker.Checked==false)
        {
            lblerror.Text = "Plz, Choose the Radio Button";
        }
       
            
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}