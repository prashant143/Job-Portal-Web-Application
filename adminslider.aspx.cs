using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class adminslider : System.Web.UI.Page
{
    Class1 obj = new Class1();
    DataSet ds = new DataSet();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind();
        }
    }
    public void bind()
    {
        ds = obj.conne("select * from slider");
        DataList1.DataSource = ds;
        DataList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string str;
            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpg" || FileUpload1.PostedFile.ContentType == "image/jpeg")
                {
                    FileUpload1.SaveAs(Server.MapPath("slider//" + FileUpload1.FileName));
                    str = "~/slider/" + FileUpload1.FileName;
                    obj.ide("insert into slider values('" + str + "')");
                    Label1.Text = "";
                    bind();
                }
                else
                {
                    Label1.Text = "only jpg images are allow";
                }
            }
        }
        catch (Exception)
        {
            Label1.Text = "upload the file";
        }
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        try
        {
            int id;
            id = Convert.ToInt16(DataList1.DataKeys[e.Item.ItemIndex]);
            obj.ide("delete from slider where imgid='" + id + "'");
            bind();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
        }
    }
    
}