using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;
using System.Configuration;
using System.Collections;
public partial class TeamLeader_CreateGroup : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnCreateGroup_Click(object sender, EventArgs e)
    {
        foreach (GridViewRow row in GridView1.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                CheckBox chkRow = (row.Cells[0].FindControl("chkBox") as CheckBox);
                if (chkRow.Checked == true)
                {
                    string id = row.Cells[1].Text;
                    string pname = row.Cells[2].Text;
                    string rate = row.Cells[3].Text;
                    string qty = chkRow.Text.ToString();

                    saveCart(id);

                    //Response.Write(id+" "+pname+" "+rate+" "+qty+" ");
                }
                else
                {

                }
            }
        }

        lblmsg.Text = "Employee Add to group Successfully !";
        //SqlDataGetCart.DataBind();
        GridView1.DataBind();

    }

    protected void saveCart(string id)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
        SqlCommand cmd = new SqlCommand();
        con.Open();
        cmd.CommandText = "Update Registration Set groupname=@groupname where empid=@empid";
        cmd.Parameters.AddWithValue("@groupname", txtEmpID.Text);
        cmd.Parameters.AddWithValue("@empid", id);

        cmd.Connection = con;
        int n = cmd.ExecuteNonQuery();
        if (n > 0)
        {

        }
        else
        {
            Response.Write("Error!");
        }
        con.Close();
    }
}