using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class view_certificate_info : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        int id;
        id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='"+ Session["jobseeker"] +"'");
        
        ds = obj.conne("select c.certificate_id,j.first_name,c.certificate_name,c.certificate_path from certificate c,jobseeker_detail j where j.jobseeker_id='"+ id +"' and j.jobseeker_id=c.jobseeker_id");
        GridView1.DataSource = ds;
        GridView1.DataBind();   
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            obj.ide("delete from certificate where certificate_id='" + id + "'");
            bind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
   
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            string str;
            str = obj.getemil("select certificate_path from certificate where certificate_id='"+ id +"'");
            Response.AppendHeader("content-disposition", "attechment; filename=" + str);
            Response.TransmitFile(Server.MapPath(str));
            
            
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
    
}