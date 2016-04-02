using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class add_state : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            
            country();
            country0();
            bind();
        }
    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (ddlcountry.Text != "0")
        {
            int cnt;
            cnt = obj.nubmerofrow("select count(state_name) from state where state_name='" + TextBox1.Text + "'");
            if (cnt == 0)
            {
                obj.ide("insert into state values('" + ddlcountry.SelectedValue + "','" + TextBox1.Text + "')");
                Label1.Text = "";
                Label2.Text = "State successfully Inserted";
                ddlcountry.Text = "0";
                TextBox1.Text = "";
            }
            else
            {
                Label2.Text = TextBox1.Text + " Already available";
            }
        }
        else
        {
            Label2.Text = "";
            Label1.Text = "Plz, choose the Country";
        }
    }
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
        bind();
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            GridViewRow row;
            row = GridView1.Rows[e.RowIndex];
            Label lblid = row.FindControl("lblid") as Label;
            TextBox txtsname = row.FindControl("txtsname") as TextBox;
            obj.ide("update state set state_name='" + txtsname.Text + "' where state_id='" + lblid.Text + "'");
            GridView1.EditIndex = -1;
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
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(GridView1.DataKeys[e.RowIndex].Value);
            obj.ide("delete from state where state_id='" + id + "'");
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
    public void bind()
    {
        if (ddlcountry0.Text != "0")
        {
            ds = obj.conne("select c.*,s.* from country c,state s where c.country_id=s.country_id and c.country_name='" + ddlcountry0.SelectedItem + "'");
        }
        else
        {
            ds = obj.conne("select c.*,s.* from country c,state s where c.country_id=s.country_id");
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    public void country()
    {
        ds = obj.conne("select * from country");
        ddlcountry.DataSource = ds.Tables[0];
        ddlcountry.DataTextField = "country_name";
        ddlcountry.DataValueField = "country_id";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0, new ListItem("select", "0"));
    }
    public void country0()
    {
        ds = obj.conne("select * from country");
        ddlcountry0.DataSource = ds.Tables[0];
        ddlcountry0.DataTextField = "country_name";
        ddlcountry0.DataValueField = "country_id";
        ddlcountry0.DataBind();
        ddlcountry0.Items.Insert(0, new ListItem("All", "0"));
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        GridView1.EditIndex = -1;
        bind();
    }
    protected void ddlcountry0_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ddlcountry0.Text == "0")
        {
            ds = obj.conne("select c.*,s.* from country c,state s where c.country_id=s.country_id");
        }
        if (ddlcountry0.Text != "0")
        {
            ds = obj.conne("select c.*,s.* from country c,state s where c.country_id=s.country_id and c.country_name='" + ddlcountry0.SelectedItem + "'");
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}