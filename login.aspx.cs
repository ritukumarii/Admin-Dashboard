using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;

public partial class admin_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnlogin_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        string inscmd = "select * from admlogin where Username='" + txtuser.Text.ToString() + "' and password='" + txtpass.Text.ToString() + "'";
        SqlCommand cmd = new SqlCommand(inscmd, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            Session["username"] = dt.Rows[0]["username"].ToString();
            Response.Redirect("dashboard.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Incorrect email or password');"), true);
        }
    }
}