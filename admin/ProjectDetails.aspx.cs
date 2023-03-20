using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Data.SqlClient;
public partial class admin_ProjectDetails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblproject.Text = Request.QueryString["pname"].ToString();
    }
    protected void btnCreateGroup_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update ProjectReg Set status=@status, startdate=@startdate, enddate=@enddate, cost=@cost where pid=@pid";
        cmd.Parameters.AddWithValue("@status","Payment Pending");
        cmd.Parameters.AddWithValue("@startdate",txtStart.Text);
        cmd.Parameters.AddWithValue("@enddate", txtEnd.Text);
        cmd.Parameters.AddWithValue("@cost",txtCost.Text);
        cmd.Parameters.AddWithValue("@pid",Request.QueryString["pid"].ToString());

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {
            lblmsg.Text = "Record Save Successfully!";
        }
        else
        {
            Response.Write("Error!");
        }
        con.Close();
    }
}