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
using System.Drawing;
using System.IO;

public partial class admin_dashboard : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null)
        {
            lbluser.Text = Session["username"].ToString();
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
            con.Open();

            string inscmd = "select count(id)  from reg";
            SqlCommand cmd = new SqlCommand(inscmd, con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            if (dt.Rows.Count > 0)
            {
                nuser.Text = dt.Rows[0][0].ToString();

            }
            string inscmd1= "select count(id)  from facul_reg";
            SqlCommand cmd1 = new SqlCommand(inscmd1, con);
            SqlDataAdapter da1 = new SqlDataAdapter(cmd1);
            DataTable dt1 = new DataTable();
            da1.Fill(dt1);
            if (dt1.Rows.Count > 0)
            {
                nfacul.Text = dt1.Rows[0][0].ToString();

            }
            string inscmd2 = "select count(id)  from stock_entry";
            SqlCommand cmd2= new SqlCommand(inscmd2, con);
            SqlDataAdapter da2= new SqlDataAdapter(cmd2);
            DataTable dt2 = new DataTable();
            da2.Fill(dt2);
            if (dt2.Rows.Count > 0)
            {
                stock.Text = dt2.Rows[0][0].ToString();

            }
            string inscmd3 = "select count(id)  from result";
            SqlCommand cmd3 = new SqlCommand(inscmd3, con);
            SqlDataAdapter da3 = new SqlDataAdapter(cmd3);
            DataTable dt3 = new DataTable();
            da3.Fill(dt3);
            if (dt3.Rows.Count > 0)
            {
                result.Text = dt3.Rows[0][0].ToString();

            }
        }
        else
        {
            Response.Redirect("../logout.aspx");
        }
    }
}
