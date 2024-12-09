using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_Feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bind_grd();

        }
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
    }
    public void bind_grd()
    {
        connect();
        cmd = new SqlCommand("select * from feedback", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connect();
        cmd = new SqlCommand("delete from feedback where id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Feedback Delete Successfully')</script>");
        bind_grd();
    }
    
}