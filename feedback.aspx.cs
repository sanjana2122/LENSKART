using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
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
        TextBox3.Text = "";
    }


    protected void btn_Click(object sender, EventArgs e)
    {
        connect();
        cmd = new SqlCommand("insert into feedback(name,Email,mobileno,feedback)values('" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ",'" + DropDownList1.Text + "')", con);
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("<script>alert('Submit successfully')</script>");
        RequiredFieldValidator1.Visible = true;
        RequiredFieldValidator2.Visible = true;
        RequiredFieldValidator3.Visible = true;
    }
}