using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

public partial class detail : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand cmd;
    protected void Page_Load(object sender, EventArgs e)
    {
        Connect con = new Connect();
        DataTable dt = con.getRow("Select * From product where p_name ='" + Session["prod"].ToString() + "'");
        lblnm.Text = dt.Rows[0]["p_name"].ToString();
        Label1.Text = dt.Rows[0]["prize"].ToString();
        Label2.Text = dt.Rows[0]["p_detail"].ToString();
        Image1.ImageUrl = "admin/product img/" + dt.Rows[0]["p_image"].ToString();
    }
    public void connect()
    {
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["lenskart"].ConnectionString);
        con.Open();
    }
   
    protected void btn1_Click(object sender, EventArgs e)
    {
        if (Session["mid"] == null)
        {
            Response.Redirect("login.aspx");
        }
        Connect con = new Connect();
        int qty = int.Parse(D1.Text);
        decimal price = Convert.ToDecimal(Label1.Text.ToString());
        Response.Write(price);
        int p = con.getMax("select isnull(MAX(bid),0)+1 from cart");
        decimal f1 = qty * price;
        Response.Write(f1);
        string sq1 = "insert into cart values(" + p + ",'" + Session["tid"].ToString() + "','" + Session["mid"].ToString() + "','" + lblnm.Text + "'," + price + "," + qty + "," + f1 + ")";
        con.update(sq1);
        Response.Redirect("cart.aspx");
    }
}