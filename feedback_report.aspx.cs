using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class feedback_report : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (!IsPostBack)
            {
                bind();
            }
            else
            {
                if (rbtnall.Checked == true)
                {
                    bind();
                }
                else if (rbtntoday.Checked == true)
                {
                    Class1 obj = new Class1();
                    DataSet ds = new DataSet();

                    DateTime da = DateTime.Today;
                    ds = obj.conne("select * from feedback where datepart(Day,Feedback_date)='" + da.Day + "' and datepart(month,Feedback_date)='" + da.Month + "' and datepart(year,Feedback_date)='" + da.Year + "'");

                    grdfeedback.DataSource = ds;
                    grdfeedback.DataBind();
                }
                else if (rbtncurrentmonth.Checked == true)
                {
                    Class1 obj = new Class1();
                    DataSet ds = new DataSet();

                    DateTime da = DateTime.Today;
                    ds = obj.conne("select * from feedback where datepart(month,Feedback_date)='" + da.Month + "' and datepart(year,Feedback_date)='" + da.Year + "'");

                    grdfeedback.DataSource = ds;
                    grdfeedback.DataBind();
                }
                else
                {
                    bind();
                }
              
            }
            
    
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
              
    }

    protected void grdfeedback_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdfeedback.DataKeys[e.RowIndex].Value);
            Class1 obj = new Class1();

            obj.ide("delete from feedback where feedback_id='" + id + "'");
            bind();
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
        
    }
    protected void grdfeedback_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
            grdfeedback.PageIndex = e.NewPageIndex;
            Page_Load(sender, e);
    }
    protected void bind()
    {
            Class1 obj = new Class1();
            DataSet ds = new DataSet();

            ds = obj.conne("select * from feedback");

            grdfeedback.DataSource = ds;
            grdfeedback.DataBind();
        
    }

    protected void ddlperpage_SelectedIndexChanged(object sender, EventArgs e)
    {
        
            grdfeedback.PageSize = Convert.ToInt16(ddlperpage.SelectedValue);
              
             Page_Load(sender, e);
        
    }

    protected void grdfeedback_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void grdfeedback_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(grdfeedback.DataKeys[e.RowIndex].Value);
            Response.Redirect("send_mail.aspx?id="+id);
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
}