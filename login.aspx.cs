using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
    }
    public void clear()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }
    protected void btn_Click(object sender, EventArgs e)
    {
        string sq = "select *from registration where email='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'";

        Connect con = new Connect();

        if (con.check_data(sq))
        {
            Session["mid"] = TextBox1.Text;
            Response.Redirect("default.aspx");

        }
        else
        {
            Label1.Text = "Wrong Username or Password";
            Label1.Visible = true;
        }
    }
}