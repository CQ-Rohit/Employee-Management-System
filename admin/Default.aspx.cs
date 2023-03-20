using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
        Response.Write(GridView1.SelectedRow.Cells[1].Text.ToString());
        //hfGetID.Value = GridView1.SelectedRow.Cells[3].Text.ToString();
        //if (e.CommandName == "Accept")
        //{
        //    //  Response.Write("Accept");

        //    Response.Write(hfGetID.Value.ToString());
        //    // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
        //    int n = SqlDataGetData.Update();
        //    if (n > 0)
        //    {
        //        Response.Redirect(Request.RawUrl);
        //    }
        //}

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Accept")
        {
          //  Response.Write("Accept");
             Response.Write(e.CommandArgument.ToString());
           // Response.Write(hfGetID.Value.ToString());
            // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
            int n = SqlDataGetData.Update();
            if (n > 0)
            {
                Response.Redirect(Request.RawUrl);
            }
        }

        if (e.CommandName == "Reject")
        {
            //Response.Write("Reject");
         //   hfGetID.Value = GridView1.SelectedRow.Cells[2].Text.ToString();
            //Response.Write(hfGetID.Value.ToString());
            // Response.Write(GridView1.SelectedRow.Cells[2].Text.ToString());
            string q = "";
            q = "UPDATE Registration SET status ='Reject' where empid =" + hfGetID.Value; ;
            SqlDataUpdateReject.UpdateCommand = q;
                Response.Redirect(Request.RawUrl);
            

        }


    }

}