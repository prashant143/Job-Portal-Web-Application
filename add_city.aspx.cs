using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class add_city : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            state();
            state0();
            bind();
        }

    }
    protected void btnadd_Click(object sender, EventArgs e)
    {
        if (ddlstate.Text != "0")
        {
            int cnt;
            cnt = obj.nubmerofrow("select count(city_name) from city where city_name='" + TextBox1.Text + "'");
            if (cnt == 0)
            {
                obj.ide("insert into City values('" + ddlstate.SelectedValue + "','" + TextBox1.Text + "')");
                Label1.Text = "";
                Label2.Text = "City successfully Inserted";
                ddlstate.Text = "0";
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
            Label1.Text = "Plz, choose the State";
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
            TextBox txtcname = row.FindControl("txtcname") as TextBox;
            obj.ide("update city set city_name='" + txtcname.Text + "' where city_id='" + lblid.Text + "'");
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
            obj.ide("delete from city where city_id='" + id + "'");
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
        if (ddlstate0.Text != "0")
        {
            ds = obj.conne("select c.*,s.*,c1.* from country c,state s,city c1 where c.country_id=s.country_id and s.state_id=c1.state_id and s.state_name='" + ddlstate0.SelectedItem + "'");
        }
        else
        {
            ds = obj.conne("select c.*,s.*,c1.* from country c,state s,city c1 where c.country_id=s.country_id and s.state_id=c1.state_id");
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
    public void state()
    {
        ds = obj.conne("select * from state");
        ddlstate.DataSource = ds.Tables[0];
        ddlstate.DataTextField = "state_name";
        ddlstate.DataValueField = "state_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("select", "0"));
    }
    public void state0()
    {
        ds = obj.conne("select * from state");
        ddlstate0.DataSource = ds.Tables[0];
        ddlstate0.DataTextField = "state_name";
        ddlstate0.DataValueField = "state_id";
        ddlstate0.DataBind();
        ddlstate0.Items.Insert(0, new ListItem("All", "0"));
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
        if (ddlstate0.Text == "0")
        {
            ds = obj.conne("select c.*,s.*,c1.* from country c,state s,city c1 where c.country_id=s.country_id and s.state_id=c1.state_id");
        }
        if (ddlstate0.Text != "0")
        {
            ds = obj.conne("select c.*,s.*,c1.* from country c,state s,city c1 where c.country_id=s.country_id and s.state_id=c1.state_id and s.state_name='" + ddlstate0.SelectedItem + "'");
        }
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }

}