using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
/// <summary>
/// Summary description for Class1
/// </summary>
public class Class1
{
    DataSet ds = new DataSet();
    SqlConnection con = new SqlConnection(@"Data Source=prem;Initial Catalog=job_portal;User ID=sa;Password=76707670");
    public Class1()
    {
        //
        // TODO: Add constructor logic here

        //

    }
    public DataSet conne(string str)
    {
   
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
            adp.Fill(ds);
        con.Close();
        return ds;
    }
    public void ide(string str)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        cmd.ExecuteNonQuery();
        con.Close();
    }
    public string getemil(string str)
    {
        string email = "";
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        email = cmd.ExecuteScalar().ToString();
        con.Close();
        return email;

    }
    public int nubmerofrow(string str)
    {
        int no;
        con.Open();
        SqlCommand cmd = new SqlCommand(str, con);
        no = Convert.ToInt16(cmd.ExecuteScalar());
        con.Close();
        return no;
    }    
}