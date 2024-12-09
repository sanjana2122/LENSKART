using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Data;
using System.Configuration;

public partial class admin_show_gallery : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack)
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
        cmd = new SqlCommand("select * from Gallery", con);
        dr = cmd.ExecuteReader();
        if(dr.HasRows==true)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        connect();
        cmd = new SqlCommand("delete from gallery where id=" + GridView1.Rows[e.RowIndex].Cells[0].Text + "", con);
        cmd.ExecuteNonQuery();
        Response.Write("<script>alert('Image Delete Successfully')</script>");
        bind_grd();

    }
}