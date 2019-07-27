using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class admin_complaintmis : System.Web.UI.Page
{
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
        Label1.Visible = false;
        Button1.Visible = false;
        string qry = "select * from complaint";
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