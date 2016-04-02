using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class add_certificate : System.Web.UI.Page
{
    Class1 obj = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
       try
        {
            string str;
            lblmsg1.Text = "";
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    FileUpload1.SaveAs(Server.MapPath("certificates//" + FileUpload1.FileName));

                    str = "~/certificates/" + FileUpload1.FileName;
                    lblmsg.Visible = false;


                    int id;
                    id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    obj.ide("insert into certificate values('" + id + "','" + txtcerti.Text + "','" + str + "')");
                    lblmsg1.Text = "Cerificate successfully Atteched..";
                }
                else
                {
                    lblmsg.Text = "upload certificates only jpg formates";
                }

            }
            else
            {
                lblmsg.Visible = true;
            }
            
        }
        catch (Exception)
        {
            Response.Write("Only JPG or JPEG file allow");
        }
    }
}