using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class Client_NewProject : System.Web.UI.Page
{
    SqlConnection cn;
    SqlCommand cmd;
    BasicCode b = new BasicCode();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string projectid = b.generateID("pid", "ProjectReg");
        try
        {
            cn = new SqlConnection(ConfigurationManager.AppSettings["EMP"]);
            cmd = new SqlCommand();
            cn.Open();
            string img = "Doc" + "_" + projectid + ".jpg";

            cmd.CommandText = "insert into ProjectReg(pid,pname,details,technology,doc,status)values(@pid,@pname,@details,@technology,@doc,@status)";

            cmd.Parameters.AddWithValue("@pid", projectid);
            cmd.Parameters.AddWithValue("@pname", txtProject.Text);            
            cmd.Parameters.AddWithValue("@details",txtDesc.Text);
            cmd.Parameters.AddWithValue("@technology",txtTech.Text);            
            cmd.Parameters.AddWithValue("@doc", img);
            cmd.Parameters.AddWithValue("@status", "Pending");
            cmd.Connection = cn;

            int n = cmd.ExecuteNonQuery();

            cn.Close();

            if (n > 0)
            {
                //lblmsg.Text = "Record Saved Successfully...";
                if (fuphoto.HasFile)
                {
                    fuphoto.SaveAs(Server.MapPath("~/Client/Doc/" + img));
                }

                //ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Client Record Saved Successfully !')", true);
                lblmsg.Text = "New Project Registered Successfully !";

                txtProject.Text = "";
                txtDesc.Text = "";
                txtTech.Text = "";                
            }
            else
            {
                // lblmsg.Text = "Unabled To Insert....";
                Response.Write("Unabled To Insert....");
            }
        }
        catch (Exception er)
        {
            Response.Write(er.ToString());
        }

    }
}