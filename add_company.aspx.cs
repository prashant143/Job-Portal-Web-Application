using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class add_company : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Question();
            country();
            category();
            ddlstate.Items.Insert(0, new ListItem("select", "0"));
            ddlcity.Items.Insert(0, new ListItem("select", "0"));

        }
    }
    protected void btnaccount_Click(object sender, EventArgs e)
    {
        try
        {

            //int no = Convert.ToInt16(lbl1.Text) + Convert.ToInt16(lbl2.Text);
                /*  if (no.ToString() == txtans1.Text)
                  {
                      int n1, n2;
                      n1 = new Random().Next(0, 20);
                      n2 = new Random().Next(10, 20);
                      lbl1.Text = n1.ToString();
                      lbl2.Text = n2.ToString();
                      txtans1.Text = "";*/
                Class1 obj = new Class1();
                obj.ide("insert into login(username,password,role) values('" + txtuname.Text + "','" + txtpwd.Text + "','company')");
                string dat;
                dat = DateTime.Now.ToString();
                obj.ide("insert into company(company_name,username,city_id,que_id,ans,profile_date,zipcode,contect_person,company_contect,company_address,company_email,company_details,website) values('" + txtcompname.Text + "','" + txtuname.Text + "','" + ddlcity.SelectedValue + "','" + ddlque.SelectedValue + "','" + txtans.Text + "','" + dat + "','" + txtzipcode.Text + "','" + txtcontperson.Text + "','" + txtmono.Text + "','" + txtadd.Text + "','" + txtemailid.Text + "','" + txtdescription.Text + "','" + txtwebsite.Text + "')");
                string str = "";
                if (FileUpload1.HasFile)
                {
                    FileUpload1.SaveAs(Server.MapPath("company_logo//" + FileUpload1.FileName));
                    str = "~/company_logo/" + FileUpload1.FileName;
                    //str = Server.MapPath("company_logo//" + FileUpload1.FileName);
                    //str = FileUpload1.FileName;

                }
                int num;
                num = obj.nubmerofrow("select max(company_id) from company");
                obj.ide("insert into company_mst(company_id,company_logo_path,company_type,category_id) values (" + num + ",'" + str + "','" + ddlcomcategory.SelectedItem + "','" + ddljobcategory.SelectedValue + "')");
                Label1.Text = "company successfully added";   
                txtadd.Text = "";
                txtans.Text = "";
                txtcompname.Text = "";
                txtcontperson.Text = "";
                txtcpwd.Text = "";
                txtdescription.Text = "";
                txtemailid.Text = "";
                txtmono.Text = "";
                txtpwd.Text = "";
                txtuname.Text = "";
                txtwebsite.Text = "";
                txtzipcode.Text = "";
                ddlcity.SelectedIndex = 0;
                ddlcountry.SelectedIndex = 0;
                ddljobcategory.SelectedIndex = 0;
                ddlstate.SelectedIndex = 0;
                ddlcomcategory.SelectedIndex = 0;
                Label1.Text = "";
                Response.Redirect("company_report.aspx");
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    protected void btnreset_Click(object sender, EventArgs e)
    {
        txtadd.Text = "";
        txtans.Text = "";
        txtcompname.Text = "";
        txtcontperson.Text = "";
        txtcpwd.Text = "";
        txtdescription.Text = "";
        txtemailid.Text = "";
        txtmono.Text = "";
        txtpwd.Text = "";
        txtuname.Text = "";
        txtwebsite.Text = "";
        txtzipcode.Text = "";
        ddlcity.SelectedIndex = 0;
        ddlcountry.SelectedIndex = 0;
        ddljobcategory.SelectedIndex = 0;
        ddlstate.SelectedIndex = 0;
        ddlcomcategory.SelectedIndex = 0;
    }
    public void Question()
    {
        ds = obj.conne("select * from question");
        ddlque.DataSource = ds.Tables[0];
        ddlque.DataTextField = "Question";
        ddlque.DataValueField = "que_id";
        ddlque.DataBind();
        ddlque.Items.Insert(0, new ListItem("--select security Question--", "0"));
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
    protected void txtuname_TextChanged(object sender, EventArgs e)
    {
        if (txtuname.Text != string.Empty)
        {
            Class1 obj = new Class1();
            int num;
            num = obj.nubmerofrow("select count(*) from login where username='" + txtuname.Text + "'");
            if (num != 0)
            {
                lblmsg.Visible = true;
            }
            else
            {
                lblmsg.Visible = false;
            }
        }
        else
        {
            lblmsg.Visible = false;
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