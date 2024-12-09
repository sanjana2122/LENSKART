using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class cart : System.Web.UI.Page
{
    DataTable dt;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataAdapter ad;
    SqlDataReader dr;
    public decimal total = (decimal)0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["mid"] == null)
            {
                Response.Redirect("login.aspx");
            }
            bind_grd();
        }
    }
    public void bind_grd()
    {
        connect();
        cmd = new SqlCommand("select *from cart where mid='" + Session["mid"].ToString() + "'", con);
        dr = cmd.ExecuteReader();
        if (dr.HasRows == true)
        {
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
    }
    public void connect()
    {
        con = new SqlConnection(WebConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label p_id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from cart where bid =" + Convert.ToInt32(p_id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('Product Successfully Removed From Cart');</script>");
        bind_grd();

    }
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            Label qty = (e.Row.FindControl("p_qty_lbl")) as Label;
            Label rate = (e.Row.FindControl("price")) as Label;
            Label stotal = (e.Row.FindControl("subtotal_lbl")) as Label;
            int subtotal = Convert.ToInt32(qty.Text) * Convert.ToInt32(rate.Text);
            total += Convert.ToDecimal(subtotal.ToString());
            stotal.Text = subtotal.ToString();
            Session["subtotal"] = stotal.Text;
            Session["total"] = total.ToString();
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[6].Text = "Total Bill";
            e.Row.Cells[7].Text = String.Format("{0:0}", "<b> ₹" + total + ".00 </b>");
        }
    }
    protected void rmvall_Click(object sender, EventArgs e)
    {
        string userid = Session["mid"].ToString();
        string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from cart where mid ='" + Session["mid"].ToString() + "'", con);
        cmd.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language='javascript'>alert('All products removed all products');</script>");
        Response.Redirect("Default.aspx");
    }
    protected void ckoutbtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("checkout.aspx");
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {

        //NewEditIndex property used to determine the index of the row being edited.  
        GridView1.EditIndex = e.NewEditIndex;
        //ShowData();

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        Label p_id = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_id");
        TextBox p_qty = (TextBox)GridView1.Rows[e.RowIndex].FindControl("p_qty_txt");
        string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update cart set qty = '" + p_qty.Text + "' where bid=" + Convert.ToInt32(p_id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;

        //Call ShowData method for displaying updated data  
        Data();
    }

    protected void Data()
    {
        string userid = Session["mid"].ToString();
        dt = new DataTable();
        string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();

        SqlDataAdapter adapt = new SqlDataAdapter("select *from cart where mid='" + Session["mid"].ToString() + "'", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }

    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        Data();
    }
    
}