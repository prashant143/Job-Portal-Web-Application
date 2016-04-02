using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class jobseeker_report : System.Web.UI.Page
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
                    jobseeker();
                    ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id ");
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
                        
                        if (DropDownList1.Text == "0")
                        {
                            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where datepart(month,j.profile_date)='" + da.Month + "' and datepart(year,j.profile_date)='" + da.Year + "' and datepart(day,j.profile_date)='" + da.Day + "'");
                        }

                        if (DropDownList1.Text != "0")
                        {
                            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where j.first_name='" + DropDownList1.SelectedItem + "' and datepart(month,j.profile_date)='" + da.Month + "' and datepart(year,j.profile_date)='" + da.Year + "' and datepart(day,j.profile_date)='" + da.Day + "' ");
                        }

                        grdcomp.DataSource = ds;
                        grdcomp.DataBind();

                    }
                    else if (rbtncurrentmonth.Checked == true)
                    {
                        DateTime da = DateTime.Today;
                       if (DropDownList1.Text == "0")
                        {
                            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where datepart(month,j.profile_date)='" + da.Month + "' and datepart(year,j.profile_date)='" + da.Year + "'");
                            
                        }

                        if (DropDownList1.Text != "0")
                        {
                            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where j.first_name='" + DropDownList1.SelectedItem + "' and datepart(month,j.profile_date)='" + da.Month + "' and datepart(year,j.profile_date)='" + da.Year + "' ");
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
            Label1.Text = "Record are not available";
        }

    }
    protected void grdcomp_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdcomp.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            string get;
            get = obj.getemil("select username from jobseeker_detail where jobseeker_id='" + id + "'");
            obj.ide("delete from login where username='"+ get +"'");
            bind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
    protected void grdcomp_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        grdcomp.PageIndex = e.NewPageIndex;
        Page_Load(sender, e);
    
    }
    public void bind()
    {
        //ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id ");
        //grdcomp.DataSource = ds;
        //grdcomp.DataBind();
        if (DropDownList1.Text == "0")
        {
            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id ");
        }

        if (DropDownList1.Text != "0")
        {
            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where j.first_name='" + DropDownList1.SelectedItem + "' ");
        }

        grdcomp.DataSource = ds;
        grdcomp.DataBind();
    }

    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {

        grdcomp.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
        Page_Load(sender, e);
    }
    protected void grdcomp_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    public void jobseeker()
    {
        ds = obj.conne("select first_name from jobseeker_detail group by first_name");
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataTextField = "first_name";
        DropDownList1.DataValueField = "first_name";
        DropDownList1.DataBind();
        DropDownList1.Items.Insert(0, new ListItem("select", "0"));
    }
    protected void grdcomp_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdcomp.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();
            string str;
            str = obj.getemil("select r.path from resume r,jobseeker_detail j where j.jobseeker_id='" + id + "' and j.jobseeker_id=r.jobseeker_id");
            Response.AppendHeader("content-disposition", "attechment; filename=" + str);
            Response.TransmitFile(Server.MapPath(str));

        }
        catch (Exception)
        {
            Response.Write("some error");
        }
    }
    
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (DropDownList1.Text == "0")
        {
            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id ");
        }

        if (DropDownList1.Text != "0")
        {
            ds = obj.conne("select j.jobseeker_id,j.username,j.first_name,j.middle_name,j.last_name,j.profile_date,j.address,j.gender,j.dob,j.contact_no,j.email_id,r.path,j.merital_status from jobseeker_detail j left outer join resume r on r.jobseeker_id=j.jobseeker_id where j.first_name='" + DropDownList1.SelectedItem + "' ");
        }

        grdcomp.DataSource = ds;
        grdcomp.DataBind();
        Page_Load(sender, e);
    }
}