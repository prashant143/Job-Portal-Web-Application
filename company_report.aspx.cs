using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class company_report : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["admin"] != null)
            {
                if (!IsPostBack)
                {
                    company();
                    ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and t.category_id=c1.category_id");
                    grdcomp.DataSource = ds;
                    grdcomp.DataBind();
                }
                else
                {
                    if (rbtnall.Checked == true)
                    {
                        bind();
                    }
                    else if (rbtntoday.Checked == true)
                    {
                        DateTime da = DateTime.Today;
                        if (ddlcompany.Text == "0")
                        {
                            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_id,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and datepart(Day,profile_date)='" + da.Day + "' and datepart(month,profile_date)='" + da.Month + "' and datepart(year,profile_date)='" + da.Year + "' and t.category_id=c1.category_id");
                       
                        }
                        if (ddlcompany.Text != "0")
                        {
                            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and c.company_name='" + ddlcompany.SelectedItem + "' and t.category_id=c1.category_id and datepart(Day,profile_date)='" + da.Day + "' and datepart(month,profile_date)='" + da.Month + "' and datepart(year,profile_date)='" + da.Year + "'");
                        }
                        grdcomp.DataSource = ds;
                        grdcomp.DataBind();

                    }
                    else if (rbtncurrentmonth.Checked == true)
                    {
                        DateTime da = DateTime.Today;
                        if (ddlcompany.Text == "0")
                        {
                            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and datepart(month,profile_date)='" + da.Month + "' and datepart(year,profile_date)='" + da.Year + "' and t.category_id=c1.category_id");
                        
                        }
                        if (ddlcompany.Text != "0")
                        {
                            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and c.company_name='" + ddlcompany.SelectedItem + "' and t.category_id=c1.category_id and datepart(month,profile_date)='" + da.Month + "' and datepart(year,profile_date)='" + da.Year + "'");
                        }
                        grdcomp.DataSource = ds;
                        grdcomp.DataBind();

                    }
                    else
                    {
                        bind();
                    }

                }
            }
        }
        catch (Exception)
        {
           Label1.Text="Record are not available";
        }

    }
    protected void grdcomp_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdcomp.PageIndex = e.NewPageIndex;
        Page_Load(sender, e);
    }
    public void bind()
    {
        if (ddlcompany.Text == "0")
        {
            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and t.category_id=c1.category_id");
        }
        if (ddlcompany.Text != "0")
        {
            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and c.company_name='" + ddlcompany.SelectedItem + "' and t.category_id=c1.category_id");
        }
        grdcomp.DataSource = ds;
        grdcomp.DataBind();
        
    }
    
    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {
        grdcomp.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
        Page_Load(sender, e);
    }
    protected void grdcomp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdcomp.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            string get;
            get = obj.getemil("select username from company where company_id='" + id + "'");
            obj.ide("delete from login where username='" + get + "'");
            bind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
    protected void rbtnall_CheckedChanged(object sender, EventArgs e)
    {

    }
    public void company()
    {
        ds = obj.conne("select company_name from company");
        ddlcompany.DataSource = ds.Tables[0];
        ddlcompany.DataTextField = "company_name";
        ddlcompany.DataValueField = "company_name";
        ddlcompany.DataBind();
        ddlcompany.Items.Insert(0, new ListItem("select", "0"));
    }
    
    protected void ddlcompany_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlcompany.Text == "0")
        {
            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and t.category_id=c1.category_id");
        }
        if (ddlcompany.Text != "0")
        {
            ds = obj.conne("select c.company_id,c.company_name,c2.city_name,c.profile_date,c.zipcode,c.contect_person,c.company_contect,c.company_address,c.company_email,c.website,t.category_name,c1.company_type from company c,company_mst c1,city c2,category t where c.company_id=c1.company_id and c.city_id=c2.city_id and c.company_name='" + ddlcompany.SelectedItem + "' and t.category_id=c1.category_id");
        }
        grdcomp.DataSource = ds;
        grdcomp.DataBind();
        Page_Load(sender, e);
    }
}