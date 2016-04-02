using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class edit_company_info : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["employer"] != null)
            {
                if (!IsPostBack)
                {
                    category();
                    country();
                    ds = obj.conne("select * from company where username='" + Session["employer"] + "'");
                    string str;
                    txtcname.Text = ds.Tables[0].Rows[0][1].ToString();
                   
                    txtwebsite.Text = ds.Tables[0].Rows[0][13].ToString();
                    txtemail.Text = ds.Tables[0].Rows[0][11].ToString();
                    txtcperson.Text = ds.Tables[0].Rows[0][8].ToString();
                    txtcno.Text = ds.Tables[0].Rows[0][9].ToString();
                    txtaddress.Text = ds.Tables[0].Rows[0][10].ToString();
                    txtzipcode.Text = ds.Tables[0].Rows[0][7].ToString();
                    txtcompdetail.Text = ds.Tables[0].Rows[0][12].ToString();
                    str = obj.getemil("select company_type from company_mst where company_id=(select company_id from company where username='" + Session["employer"] + "')");
                    ddlcompanytype.SelectedValue = str;

                    int no;
                    no = obj.nubmerofrow("select c.category_id from company c1,company_mst c where c.company_id=c1.company_id and c1.username='"+ Session["employer"] +"'");
                    ddljobcategory.SelectedValue = no.ToString();
                    no = obj.nubmerofrow("select country_id from state where state_id=(select state_id from city where city_id=(select city_id from company where username='" + Session["employer"] + "'))");
                    ddlcountry.SelectedValue = no.ToString();
                    state();
                    no = obj.nubmerofrow("select state_id from city where city_id=(select city_id from company where username='" + Session["employer"] + "')");
                    ddlstate.SelectedValue = no.ToString();
                    city();
                    no = obj.nubmerofrow("select city_id from company where username='" + Session["employer"] + "'");
                    ddlcity.SelectedValue = no.ToString();


                    str = obj.getemil("select company_logo_path from company_mst where company_id=(select company_id from company where username='" + Session["employer"] + "')");
                    Image1.ImageUrl = str;

                }
            }
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
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
    public void city()
    {

        ds = obj.conne("select * from city where state_id='" + ddlstate.SelectedValue + "' order by city_name");
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("select", "0"));
    }
    public void state()
    {
        ds = obj.conne("select * from state where country_id= '" + ddlcountry.SelectedValue + "' order by state_name");
        ddlstate.DataSource = ds.Tables[0];
        ddlstate.DataTextField = "state_name";
        ddlstate.DataValueField = "state_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("select", "0"));

    }



    protected void btnedit_Click(object sender, EventArgs e)
    {
        try
        {
           
            obj.ide("update company set company_name='" + txtcname.Text + "', city_id='" + ddlcity.SelectedValue + "',zipcode='" + txtzipcode.Text + "',company_address='" + txtaddress.Text + "', company_contect='" + txtcno.Text + "',company_email='" + txtemail.Text + "',website='" + txtwebsite.Text + "',company_details='"+ txtcompdetail.Text +"',contect_person='"+ txtcperson.Text +"' where username='" + Session["employer"] + "'");
            int no;
            no = obj.nubmerofrow("select company_id from company where username='"+ Session["employer"] +"'");
            string str = "";
            if (FileUpload1.HasFile)
            {
                FileUpload1.SaveAs(Server.MapPath("company_logo//" + FileUpload1.FileName));
                str = "~/company_logo/" + FileUpload1.FileName;
            }
            obj.ide("update company_mst set category_id='"+ ddljobcategory.SelectedValue +"',company_logo_path='"+ str +"',company_type='"+ ddlcompanytype.SelectedItem +"' where company_id='"+ no +"'");

            lblerror.Text = "information sucessfully updated";
            Response.Redirect("view_company_detail.aspx");
        }
        catch (Exception)
        {
            lblerror.Text = "information is not updated plz,enter proper information";
        }
    }

    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    protected void ddlcompanycat_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void category()
    {
        ds = obj.conne("select * from category");
        ddljobcategory.DataSource = ds.Tables[0];
        ddljobcategory.DataTextField = "category_name";
        ddljobcategory.DataValueField = "category_id";
        ddljobcategory.DataBind();
        ddljobcategory.Items.Insert(0, new ListItem("select", "0"));
    }
}