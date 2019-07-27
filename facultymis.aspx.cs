using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_facultymis : System.Web.UI.Page
{
    int sem, s1, s2, sem2; 
    string constr = ConfigurationManager.ConnectionStrings["success"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("/admin/login.aspx");
        }
        
    }
   

    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        Button1.Visible = false;
        label1.Visible = false;
        label2.Visible = false;
        GridView1.Visible = true;
        string date1 = TextBox1.Text.ToString();
        string date2 = TextBox2.Text.ToString();
        string qry = "select * from facul_reg where date between '"+ Convert.ToDateTime(TextBox1.Text).ToString("yyyy-MM-dd") + "' and '" + Convert.ToDateTime(TextBox2.Text).ToString("yyyy-MM-dd") +"'";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        string qry = "select * from facul_reg";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        else
        {
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

    }
}