using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class edit_education_info : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["jobseeker"] != null)
            {
                if (!IsPostBack)
                {
                    int id;
                    id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    ds = obj.conne("Select * from jobseeker_education where jobseeker_id='" + id + "'");
                    txt10per.Text = ds.Tables[0].Rows[0][2].ToString();
                    txt12per.Text = ds.Tables[0].Rows[0][3].ToString();
                    ddlgrad.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
                    ddlgradinstitute.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
                    txtgradper.Text = ds.Tables[0].Rows[0][6].ToString();
                    ddlpostgrad.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
                    ddlpostgradinsti.SelectedValue = ds.Tables[0].Rows[0][8].ToString();
                    txtpostgradper.Text = ds.Tables[0].Rows[0][9].ToString();
                    txtphd.Text = ds.Tables[0].Rows[0][10].ToString();
                  
                }
            }
        }
        catch (Exception)
        {
            lblerror.Text = "data are Not available";
        }
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        try
        {
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                
           obj.ide("update jobseeker_education set percent10='" + txt10per.Text + "', percent12='" + txt12per.Text + "',graduation='" + ddlgrad.SelectedItem + "',institute_gradu='" + ddlgradinstitute.SelectedItem + "',percent_gradu='" + txtgradper.Text + "',post_graduation='" + ddlpostgrad.SelectedItem + "', institute_post_grad='" + ddlpostgradinsti.SelectedItem + "', percent_post_gradu='" + txtpostgradper.Text + "',phd='" + txtphd.Text + "' where jobseeker_id='"+ id +"'");
           lblerror.Text = "information sucessfully updated";
           Response.Redirect("view_education_detail.aspx");
                
        }
        catch (Exception)
        {
            lblerror.Text = "information is not updated plz,enter proper information";
            lblerror.Visible = true;
        }
    }
}