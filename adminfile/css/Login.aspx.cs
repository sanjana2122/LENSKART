using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from admin where username ='" + TextBox1.Text + "' and password='" + TextBox2.Text + "'", con);
        //cmd.Parameters.AddWithValue("@Email", TextBox1.Text);
        //cmd.Parameters.AddWithValue("@Password", TextBox2.Text);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["id"] = TextBox1.Text;
            Response.Redirect("category.aspx");
            Session.RemoveAll();
        }
        else
        {
            Label3.Text = "You're Username and Password is Incorrect";
            Label3.Visible = true;
        }
    }
}