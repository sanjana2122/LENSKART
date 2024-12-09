using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Product : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Connect con = new Connect();
        DataTable dt = con.getRow("Select * From product ");
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
    }
    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
  

   protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
   {
       Session["prod"] = e.CommandArgument.ToString();
       Response.Redirect("detail.aspx");
   }
}