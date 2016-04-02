using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class add_category : System.Web.UI.Page
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
        ds = obj.conne("select * from category");
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            obj.ide("delete from category where category_id='" + id + "'");
            bind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView1.EditIndex = e.NewEditIndex;
        bind();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            GridViewRow row;
            row = GridView1.Rows[e.RowIndex];
            Label lblid = row.FindControl("lblid") as Label;
            TextBox txtname = row.FindControl("txtname") as TextBox;
            obj.ide("update category set category_name='" + txtname.Text + "' where category_id='" + lblid.Text + "'");
            GridView1.EditIndex = -1;
            bind();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
        bind();
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        int cnt;
        cnt = obj.nubmerofrow("select count(category_name) from category where category_name='"+ TextBox1.Text +"'");
        if (cnt == 0)
        {
            obj.ide("insert into category values('" + TextBox1.Text + "')");
            TextBox1.Text = "";
            Label1.Text = "Category successfully Inserted";
        }
        else
        {
            Label1.Text = TextBox1.Text + " Already available";
        }

    }

}