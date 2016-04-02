using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
public partial class adminview : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ds = obj.conne("select * from tblview");
            Label1.Text = ds.Tables[0].Rows[0].ItemArray[0].ToString();
            Label2.Text = ds.Tables[0].Rows[0].ItemArray[1].ToString();
            Label3.Text = ds.Tables[0].Rows[0].ItemArray[2].ToString();
        }
    }
}