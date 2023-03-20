using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Client_ShowProject : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Response.Redirect("Payment.aspx?pid="+GridView1.SelectedRow.Cells[1].Text);
    }

    protected Boolean checkStatus(string status)
    {
        if (status == "Active")
        {
            return false;
        }
        else
        {
            return true;
        }
    }
}