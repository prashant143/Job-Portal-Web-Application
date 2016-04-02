using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class edit_personal_info : System.Web.UI.Page
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
                    country();

                    ds = obj.conne("select * from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    string str;
                    txtfname.Text = ds.Tables[0].Rows[0][5].ToString();
                    txtmname.Text = ds.Tables[0].Rows[0][6].ToString();
                    txtlname.Text = ds.Tables[0].Rows[0][7].ToString();
                    txtaddress.Text = ds.Tables[0].Rows[0][8].ToString();
                    txtemail.Text = ds.Tables[0].Rows[0][13].ToString();
                    txtreligion.Text = ds.Tables[0].Rows[0][15].ToString();
                    txtdob.Text = Convert.ToDateTime(ds.Tables[0].Rows[0].ItemArray[11]).ToShortDateString();
                    str = obj.getemil("select gender from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    if (str == "Male")
                    {
                        rbtnmale.Checked = true;
                    }
                    else
                    {
                        rbtnfemale.Checked = true;
                    }
                    str = obj.getemil("select merital_status from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    if (str == "Married")
                    {
                        rbtn1.Checked = true;
                    }
                    else
                    {
                        rbtn2.Checked = true;
                    }
                    txtcontectno.Text = ds.Tables[0].Rows[0][12].ToString();
                    int no;
                    no = obj.nubmerofrow("select country_id from state where state_id=(select state_id from city where city_id=(select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "'))");
                    ddlcountry.SelectedValue = no.ToString();
                    state();
                    no = obj.nubmerofrow("select state_id from city where city_id=(select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "')");
                    ddlstate.SelectedValue = no.ToString();
                    city();
                    no = obj.nubmerofrow("select city_id from jobseeker_detail where username='" + Session["jobseeker"] + "'");
                    ddlcity.SelectedValue = no.ToString();


                    int cnt;
                    ds = obj.conne("select * from language where jobseeker_id=(select jobseeker_id from jobseeker_detail where username='" + Session["jobseeker"] + "')");
                    cnt = ds.Tables[0].Rows.Count;

                    for (; cnt != 0; )
                    {
                        switch (cnt)
                        {
                            case 4:
                                {
                                    txtlang4.Visible = true;
                                    ddlread3.Visible = true;
                                    ddlwrite3.Visible = true;
                                    ddlspeak3.Visible = true;
                                    txtlang4.Text = ds.Tables[0].Rows[3][2].ToString();
                                    ddlread3.SelectedValue = ds.Tables[0].Rows[3][3].ToString();
                                    ddlwrite3.SelectedValue = ds.Tables[0].Rows[3][4].ToString();
                                    ddlspeak3.SelectedValue = ds.Tables[0].Rows[3][5].ToString();
                                    break;
                                }

                            case 3:
                                {
                                    txtlang3.Visible = true;
                                    ddlread2.Visible = true;
                                    ddlwrite2.Visible = true;
                                    ddlspeak2.Visible = true;
                                    txtlang3.Text = ds.Tables[0].Rows[2][2].ToString();
                                    ddlread2.SelectedValue = ds.Tables[0].Rows[2][3].ToString();
                                    ddlwrite2.SelectedValue = ds.Tables[0].Rows[2][4].ToString();
                                    ddlspeak2.SelectedValue = ds.Tables[0].Rows[2][5].ToString();
                                    break;
                                }
                            case 2:
                                {
                                    txtlang2.Visible = true;
                                    ddlread1.Visible = true;
                                    ddlwrite1.Visible = true;
                                    ddlspeak1.Visible = true;
                                    txtlang2.Text = ds.Tables[0].Rows[1][2].ToString();
                                    ddlread1.SelectedValue = ds.Tables[0].Rows[1][3].ToString();
                                    ddlwrite1.SelectedValue = ds.Tables[0].Rows[1][4].ToString();
                                    ddlspeak1.SelectedValue = ds.Tables[0].Rows[1][5].ToString();
                                    break;
                                }
                            case 1:
                                {
                                    txtlang1.Visible = true;
                                    ddlread.Visible = true;
                                    ddlwrite.Visible = true;
                                    ddlspeak.Visible = true;
                                    txtlang1.Text = ds.Tables[0].Rows[0][2].ToString();
                                    ddlread.SelectedValue = ds.Tables[0].Rows[0][3].ToString();
                                    ddlwrite.SelectedValue = ds.Tables[0].Rows[0][4].ToString();
                                    ddlspeak.SelectedValue = ds.Tables[0].Rows[0][5].ToString();
                                    break;
                                }
                        }
                        cnt = cnt - 1;
                    }
                }

            }
        }
        catch (Exception)
        {
            lblerror.Text = "data are not available";
        }
        
    }
    public void country()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();

        ds = obj.conne("select * from country");
        ddlcountry.DataSource = ds.Tables[0];
        ddlcountry.DataTextField = "country_name";
        ddlcountry.DataValueField = "country_id";
        ddlcountry.DataBind();
        ddlcountry.Items.Insert(0, new ListItem("select", "0"));
    }
    public void city()
    {

        Class1 obj = new Class1();
        DataSet ds = new DataSet();

        ds = obj.conne("select * from city where state_id='" + ddlstate.SelectedValue + "' order by city_name");
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("select", "0"));
    }
    public void state()
    {
        Class1 obj = new Class1();
        DataSet ds = new DataSet();

        ds = obj.conne("select * from state where country_id= '" + ddlcountry.SelectedValue + "' order by state_name");
        ddlstate.DataSource = ds.Tables[0];
        ddlstate.DataTextField = "state_name";
        ddlstate.DataValueField = "state_id";
        ddlstate.DataBind();
        ddlstate.Items.Insert(0, new ListItem("select", "0"));

    }

    protected void ddlcountry_SelectedIndexChanged(object sender, EventArgs e)
    {
        state();
    }
    protected void ddlstate_SelectedIndexChanged(object sender, EventArgs e)
    {
        city();
    }
    
    protected void btnedit_Click1(object sender, EventArgs e)
    {
        try
        {
            string str;
            if (rbtnfemale.Checked == true)
            {
                str = "Female";
            }
            else
            {
                str = "Male";
            }
            string str1;
            if (rbtn1.Checked == true)
            {
                str1 = "Married";
            }
            else
            {
                str1 = "Unmarried";
            }
            int id;
            id = obj.nubmerofrow("select jobseeker_id from jobseeker_detail where username='"+ Session["jobseeker"] +"'");
            obj.ide("update jobseeker_detail set first_name='" + txtfname.Text + "', middle_name='" + txtmname.Text + "',last_name='" + txtlname.Text + "',address='" + txtaddress.Text + "',city_id='" + ddlcity.SelectedValue + "',gender='" + str + "', merital_status='" + str1 + "', contact_no='" + txtcontectno.Text + "',religion='" + txtreligion.Text + "',email_id='" + txtemail.Text + "',dob='" + txtdob.Text + "' where username='" + Session["jobseeker"] + "'");
            obj.ide("update language set lang_read='"+ ddlread.SelectedItem+"',lang_write='"+ ddlwrite.SelectedItem +"',lang_speak='"+ ddlspeak.SelectedItem +"' where lang_name='"+ txtlang1.Text +"' and jobseeker_id='"+ id +"'");
            if (txtlang2.Text != "")
            {
                obj.ide("update language set lang_read='" + ddlread1.SelectedItem + "',lang_write='" + ddlwrite1.SelectedItem + "',lang_speak='" + ddlspeak1.SelectedItem + "' where lang_name='" + txtlang2.Text + "' and jobseeker_id='" + id + "'");
            }
            if (txtlang3.Text != "")
            {
                obj.ide("update language set lang_read='" + ddlread2.SelectedItem + "',lang_write='" + ddlwrite2.SelectedItem + "',lang_speak='" + ddlspeak2.SelectedItem + "' where lang_name='" + txtlang3.Text + "' and jobseeker_id='" + id + "'");
            }
            if (txtlang4.Text != "")
            {
                obj.ide("update language set lang_read='" + ddlread3.SelectedItem + "',lang_write='" + ddlwrite3.SelectedItem + "',lang_speak='" + ddlspeak3.SelectedItem + "' where lang_name='" + txtlang4.Text + "' and jobseeker_id='" + id + "'");
            }
            lblerror.Text = "information sucessfully updated";
            Response.Redirect("view_personal_info.aspx");
        }
        catch (Exception)
        {
            lblerror.Text = "information is not updated plz,enter proper information";
            lblerror.Visible = true;
        }
    }

}