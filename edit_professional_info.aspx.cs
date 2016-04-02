using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class edit_professional_info : System.Web.UI.Page
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
                    category();
                    int id;
                    id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    string str;
                    ds = obj.conne("select * from jobseeker_profesional where jobseeker_id='" + id + "'");
                    txtsalary.Text = ds.Tables[0].Rows[0][4].ToString();
                 
                    ddlcurrency.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
                    ddlindustry.SelectedValue = ds.Tables[0].Rows[0][6].ToString();
                    ddlindusrole.SelectedValue = ds.Tables[0].Rows[0][7].ToString();
                    ddljobcategory.SelectedValue = ds.Tables[0].Rows[0][3].ToString();
                    str = obj.getemil("select skill_name from skill where jobseeker_id='" + id + "'");
                    txtkeyskill.Text = str;
                    str = obj.getemil("select job_profile from skill where jobseeker_id='" + id + "'");
                    ddljobprofile.SelectedValue = str;
                    str = obj.getemil("select position_type from skill where jobseeker_id='" + id + "'");
                    ddlpostype.SelectedValue = str;
                }
            }
        }
        catch (Exception)
        {
            lblerror.Text = "data are not available";
        }
    }

    protected void btnedit_Click(object sender, EventArgs e)
    {
        try
        {
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
            obj.ide("update jobseeker_profesional set salary='" + txtsalary.Text + "',currency='" + ddlcurrency.SelectedItem + "',industry='" + ddlindustry.SelectedItem + "',industry_role='" + ddlindusrole.SelectedItem + "', category_id='" + ddljobcategory.SelectedValue + "' where jobseeker_id='" + id + "'");
            obj.ide("update skill set skill_name='" + txtkeyskill.Text + "', job_profile='" + ddljobprofile.SelectedItem + "',position_type='" + ddlpostype.SelectedItem + "' where jobseeker_id='" + id + "'");
            lblerror.Text = "information sucessfully updated";
            Response.Redirect("view_professional_detail.aspx");
        }
        catch (Exception)
        {
            lblerror.Text = "information is not updated plz,enter proper information";
        }
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