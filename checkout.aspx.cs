using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class checkout : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["mid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            g2.Text = Session["mid"].ToString();
        }
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string q = "insert into checkout(mid,name,address,paymant,mnumber) values('" + TextBox1.Text + "','" + g2.Text + "','" + TextBox2.Text + "','" + DropDownList1.Text + "','" + TextBox4.Text + "')";
        Connect con = new Connect();
        con.update(q);
        Response.Write("<script type='text/javascript'>alert('Thank You for buy our products');window.location.href='thanks.aspx';</script>");
        g2.Text = "";
        TextBox2.Text = "";
        TextBox4.Text = "";
        TextBox1.Text = "";
    }
}