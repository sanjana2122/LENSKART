﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_Category : System.Web.UI.Page
{
    SqlCommand cmd;
    SqlConnection con;

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
        txt1.Text = "";
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        connect();
        cmd = new SqlCommand("Insert into category(main_cat) values ('" + txt1.Text + "')", con);
        cmd.ExecuteNonQuery();
        clear();
        Response.Write("Upload Successfully");
        RequiredFieldValidator1.Visible = true;
        

    }
   
}