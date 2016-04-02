using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
public partial class admin_show : System.Web.UI.Page
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
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        Page_Load(sender, e);
    }
    
    public void bind()
    {
        ds = obj.conne("select * from admin_reg");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            string get;
            get = obj.getemil("select username from admin_reg where reg_id='"+ id +"'");
            obj.ide("delete from login where username='"+ get +"'");
            bind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}