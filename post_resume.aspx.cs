using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class post_resume : System.Web.UI.Page
{
    Class1 obj = new Class1();
   
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        { 
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            int cnt;
            cnt = obj.nubmerofrow("select count(*) from resume where jobseeker_id='"+ id +"'");
            if (cnt == 1)
            {
                string resume;
                resume = obj.getemil("select path from resume where jobseeker_id='" + id + "'");
                lbtnresume.Text = resume;
                lnkdownload.Text = "Download Resume";
                btndel.Visible = true;

            }
                
        }
    }
    protected void btnpost_Click(object sender, EventArgs e)
    {
        string str;
        if (furesume.HasFile)
        {
            if (furesume.PostedFile.ContentType == "application/pdf" || furesume.PostedFile.ContentType == "application/msword" || furesume.PostedFile.ContentType == "application/vnd.openxmlformats-officedocument.wordprocessingml.document")
            {
                furesume.SaveAs(Server.MapPath("resume//" + furesume.FileName));

                str = "~/resume/" + furesume.FileName;
                lblupload.Visible = false;
                int id;
                if (str != "")
                {
                    id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    int cnt;
                    cnt = obj.nubmerofrow("select count(*) from resume where jobseeker_id='" + id + "'");
                    if (cnt == 0)
                    {
                        obj.ide("insert into resume values('" + id + "','" + txthead.Text + "','" + str + "')");
                        str = "";
                        string resume;
                        resume = obj.getemil("select path from resume where jobseeker_id='" + id + "'");
                        lblmsg.Text = "resume sucessfully Posted";
                        lbtnresume.Text = resume;
                        lnkdownload.Text = "Download Resume";
                        //  lbtnresume.Text = furesume.FileName;
                        btndel.Visible = true;
                    }
                    else
                    {
                        lblmsg1.Text = "Resume are Already Uploaded";
                        lblmsg.Text = "";
                    }
                }
                str = "";

            }
            else
            {
                lblupload.Text = "only pdf or doc files are uploaded";
                lblupload.Visible = true;
            }
        }
        else
        {
            lblupload.Text = "plz,browse the file.......";
            lblupload.Visible = true;
        }
    }
    protected void btndel_Click(object sender, EventArgs e)
    {
        int id;
        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
        obj.ide("delete from resume where jobseeker_id='"+id+"'");
        btndel.Visible = false;
        lbtnresume.Text = "";
        lblmsg.Text = "";
        lblmsg1.Text = "";
    }
    protected void lbtnresume_Click(object sender, EventArgs e)
    {
      //  Response.ContentType = "application/pdf";
       
    }
    protected void lnkdownload_Click(object sender, EventArgs e)
    {
        Response.AppendHeader("content-disposition", "attechment; filename=" + lbtnresume.Text);
        Response.TransmitFile(Server.MapPath(lbtnresume.Text));
    }
}