using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feeback : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtname.Text = "";
        txtemail.Text = "";
        txtcontent.Text = "";
    }
    protected void btnfeedback_Click(object sender, EventArgs e)
    {
         Class1 obj = new Class1();
         
         String str1;
         str1 = DateTime.Now.ToString();
         obj.ide("insert into feedback(email_id,name,message,Feedback_date) values('" + txtemail.Text + "','" + txtname.Text + "','" + txtcontent.Text + "', '"+ str1 +"' )");
    
    }
}