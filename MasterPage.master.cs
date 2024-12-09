using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    static Random random = new Random();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mid"] == null)
        {
            Label1.Text = "Guest..";
            Session["tid"] = (random.Next(10, 100000)).ToString();
            btn1.Visible = true;
            btn2.Visible = true;
            btn3.Visible = false;

        }
        else
        {
            Label1.Text = Session["mid"].ToString();
            btn1.Visible = false;
            btn2.Visible = false;
            btn3.Visible = true;

        }

        if (Session["mid"] == null)
        {
            Label1.Text = "Guest..";
            Session["tid"] = (random.Next(10, 100000)).ToString();
            btn1.Visible = true;
            btn2.Visible = true;
            btn3.Visible = false;

        }
        else
        {
            Label1.Text = Session["mid"].ToString();
            btn1.Visible = false;
            btn2.Visible = false;
            btn3.Visible = true;

        }
    }
    protected void btn3_Click1(object sender, EventArgs e)
    {

        Session.Clear();
        Session.Remove("mid");
        Response.Redirect("default.aspx");
    }

}
