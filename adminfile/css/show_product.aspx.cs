using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class admin_show_product : System.Web.UI.Page
{
    string cs = WebConfigurationManager.ConnectionStrings["lenskart"].ConnectionString;
    SqlConnection con;
    SqlCommand cmd;
    SqlDataReader dr;
    SqlDataAdapter adapt;
    DataTable dt;
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
        dt = new DataTable();
        connect();
        adapt = new SqlDataAdapter("Select * from product order by p_id ASC", con);
        adapt.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        con.Close();
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        if (Session["id"] != null)
        {
            //NewEditIndex property used to determine the index of the row being edited.  
            GridView1.EditIndex = e.NewEditIndex;
            //ShowData();
        }
        else
        {
            Response.Redirect("login.aspx");
        }

    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //Finding the controls from Gridview for the row which is going to update  
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        TextBox txt_category_name = (TextBox)GridView1.Rows[e.RowIndex].FindControl("category_name");

        con = new SqlConnection(cs);
        con.Open();
        //updating the record  
        SqlCommand cmd = new SqlCommand("Update product set prize = '" + txt_category_name.Text + "' where p_id=" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        Response.Write("<script language='javascript'>alert('Successfully Updated');</script>");
        //Call ShowData method for displaying updated data  
        bind_grd();
    }
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //Setting the EditIndex property to -1 to cancel the Edit mode in Gridview  
        GridView1.EditIndex = -1;
        //ShowData();
    }
    protected void button1_Click(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
            SqlConnection con = new SqlConnection(conn);
            con.Open();
            string q = "select * from product where main_cat = '" + ddl1.SelectedValue + "' order by p_id ASC ";
            cmd = new SqlCommand(q, con);
            dr = cmd.ExecuteReader();
            GridView1.DataSource = dr;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("login.aspx");
        }


    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        Label id = GridView1.Rows[e.RowIndex].FindControl("lbl_ID") as Label;
        string conn = WebConfigurationManager.ConnectionStrings["lenskart"].ToString();
        SqlConnection con = new SqlConnection(conn);
        con.Open();
        cmd = new SqlCommand("delete from product where p_id =" + Convert.ToInt32(id.Text), con);
        cmd.ExecuteNonQuery();
        con.Close();

        Response.Write("<script language='javascript'>alert('Successfully Deleted');</script>");
        bind_grd();
    }
}