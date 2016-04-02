using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class jobseeker_register : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();

    protected void Page_Load(object sender, EventArgs e)
        {
         
         if (!IsPostBack)
         {
             MultiView1.ActiveViewIndex = 0;
             country();
             category();
             Question();
             ddlstate.Items.Insert(0, new ListItem("select", "0"));
         }
      }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
       
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

    public void Question()
    {
        ds = obj.conne("select * from question");
        ddlque.DataSource = ds.Tables[0];
        ddlque.DataTextField = "Question";
        ddlque.DataValueField = "que_id";
        ddlque.DataBind();
        ddlque.Items.Insert(0, new ListItem("--select security Question--", "0"));
    }
   
    protected void lbtncertificate_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex=1;
    }
    
    protected void btnnext1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
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
        
        
        ds = obj.conne("select * from city where state_id='" + ddlstate.SelectedValue +"' order by city_name");
        ddlcity.DataSource = ds.Tables[0];
        ddlcity.DataTextField = "city_name";
        ddlcity.DataValueField = "city_id";
        ddlcity.DataBind();
        ddlcity.Items.Insert(0, new ListItem("select", "0"));
    }
    public void state()
    {
        
        ds = obj.conne("select * from state where country_id= '"+ ddlcountry.SelectedValue+"' order by state_name");
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


    protected void btnnum4_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnum5_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnnum6_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnnum7_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnum8_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 1;
    }
    protected void btnnum9_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 2;
    }

    protected void rbtnno_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = false;
    }
    protected void rbtnyes_CheckedChanged(object sender, EventArgs e)
    {
        Panel2.Visible = true;
    }

    
    protected void btnac_Click(object sender, EventArgs e)
    {
        try
       {
           if (Session["CAPTCHA"].ToString().Equals(txtInput.Text))
           {

               Class1 obj = new Class1();
               obj.ide("insert into login(username,password,role) values('" + txtuname.Text + "','" + txtpwd.Text + "','jobseeker')");
               string str1;

               str1 = DateTime.Now.ToString();
               obj.ide("insert into jobseeker_detail(username,que_id,ans,profile_date,first_name,middle_name,last_name,address,city_id,gender,dob,contact_no,email_id,merital_status,religion) values('" + txtuname.Text + "','" + ddlque.SelectedValue + "','" + txtans.Text + "','" + str1 + "','" + txtfname.Text + "','" + txtmname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + ddlcity.SelectedValue + "','" + rdolstgender.SelectedItem + "','" + txtdob.Text + "','" + txtcontectno.Text + "','" + txtemail.Text + "','" + rbtnstatus.SelectedItem + "','" + txtreligion.Text + "')");
               int num;

               num = obj.nubmerofrow("select max(jobseeker_id) from jobseeker_detail");
               obj.ide("insert into jobseeker_education values(" + num + " ,'" + txt10per.Text + "','" + txt12per.Text + "','" + ddlgrad.SelectedItem + "','" + ddlgradinstitute.SelectedItem + "','" + txtgradper.Text + "','" + ddlpostgrad.SelectedItem + "','" + ddlpostgradinsti.SelectedItem + "','" + txtpostgradper.Text + "','" + txtphd.Text + "')");


               if (rbtnyes.Checked == true)
               {
                   obj.ide("insert into experience values(" + num + ",'" + txtcompname.Text + "','" + txtexpskill.Text + "','" + txtexpyear.Text + "','" + txtexpmonth.Text + "','" + txtreasion.Text + "')");
                   obj.ide("insert into experience values(" + num + ",'" + txtcompname1.Text + "','" + txtexpskill1.Text + "','" + txtexpyear1.Text + "','" + txtexpmonth1.Text + "','" + txtreasion2.Text + "')");
                   obj.ide("insert into experience values(" + num + ",'" + txtcompname2.Text + "','" + txtexpskill2.Text + "','" + txtexpyear2.Text + "','" + txtexpmonth2.Text + "','" + txtreasion2.Text + "')");

               }
               int skil;

               obj.ide("insert into skill values(" + num + ",'" + txtkeyskill.Text + "','" + ddljobprofile.SelectedItem + "','" + ddlpostype.SelectedItem + "')");
               skil = obj.nubmerofrow("select max(skill_id) from skill");

               obj.ide("insert into jobseeker_profesional values(" + num + "," + skil + ",'" + ddljobcategory.SelectedValue + "','" + txtsalary.Text + "','" + ddlcurrency.SelectedItem + "','" + ddlindustry.SelectedItem + "','" + ddlindusrole.SelectedItem + "')");
               string read1;
               if (chkread1.Checked == true)
               {
                   read1 = "yes";
               }
               else
               {
                   read1 = "no";
               }
               string write1;
               if (chkwrite1.Checked == true)
               {
                   write1 = "yes";
               }
               else
               {
                   write1 = "no";
               }
               string speak1;
               if (chkspeak1.Checked == true)
               {
                   speak1 = "yes";
               }
               else
               {
                   speak1 = "no";
               }
               string read2;
               if (chkread2.Checked == true)
               {
                   read2 = "yes";
               }
               else
               {
                   read2 = "no";
               }
               string write2;
               if (chkwrite2.Checked == true)
               {
                   write2 = "yes";
               }
               else
               {
                   write2 = "no";
               }
               string speak2;
               if (chkspeak2.Checked == true)
               {
                   speak2 = "yes";
               }
               else
               {
                   speak2 = "no";
               }
               string read3;
               if (chkread3.Checked == true)
               {
                   read3 = "yes";
               }
               else
               {
                   read3 = "no";
               }
               string write3;
               if (chkwrite3.Checked == true)
               {
                   write3 = "yes";
               }
               else
               {
                   write3 = "no";
               }
               string speak3;
               if (chkspeak3.Checked == true)
               {
                   speak3 = "yes";
               }
               else
               {
                   speak3 = "no";
               }
               string read4;
               if (chkread4.Checked == true)
               {
                   read4 = "yes";
               }
               else
               {
                   read4 = "no";
               }
               string write4;
               if (chkwrite4.Checked == true)
               {
                   write4 = "yes";
               }
               else
               {
                   write4 = "no";
               }
               string speak4;
               if (chkspeak4.Checked == true)
               {
                   speak4 = "yes";
               }
               else
               {
                   speak4 = "no";
               }

               obj.ide("insert into language values(" + num + ",'" + txtlang1.Text + "','" + read1 + "','" + write1 + "','" + speak1 + "')");
               if (txtlang2.Text != "")
               {
                   obj.ide("insert into language values(" + num + ",'" + txtlang2.Text + "','" + read2 + "','" + write2 + "','" + speak2 + "')");
               }
               if (txtlang3.Text != "")
               {
                   obj.ide("insert into language values(" + num + ",'" + txtlang3.Text + "','" + read3 + "','" + write3 + "','" + speak3 + "')");
               }
               if (txtlang4.Text != "")
               {
                   obj.ide("insert into language values(" + num + ",'" + txtlang4.Text + "','" + read4 + "','" + write4 + "','" + speak4 + "')");
               }
               Label1.Text = "";
               txtInput.Text = "";
               Response.Redirect("login.aspx");
           }
           else
           {
               lblmsg.Text = "Varification code is invalid";
               txtInput.Text = "";
           }
        }
        catch (Exception)
        {
            Response.Write("some error");
        }
        
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
                Label2.Visible = true;
            }
            else
            {
                Label2.Visible = false;
            }
        }
        else
        {
            Label2.Visible = false;
        }
    }

    protected void txtexpyear_TextChanged(object sender, EventArgs e)
    {

    }
    protected void btnnum3_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnum2_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }
    protected void btnnum1_Click(object sender, EventArgs e)
    {
        MultiView1.ActiveViewIndex = 0;
    }


    protected void txtdob_TextChanged(object sender, EventArgs e)
    {

    }
}