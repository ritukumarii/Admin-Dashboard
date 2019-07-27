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

public partial class admin_profile : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["success"].ConnectionString.ToString();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("/admin/login.aspx");
        }
        string qry = "select username from admlogin";
        SqlConnection con = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(qry, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            lbluser.Text = dt.Rows[0][0].ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Visible = true;
        Label2.Visible = true;
        Label3.Visible = true;
        TextBox1.Visible = true;
        TextBox2.Visible = true;
        TextBox3.Visible = true;
        Button1.Visible = false;
        Button2.Visible = true;
                
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Button2.Visible = false;
        Button1.Visible = true;
        Label1.Visible = false;
        Label2.Visible = false;
        Label3.Visible = false;
        TextBox1.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con2.Open();
        SqlCommand UpdateCommand = new SqlCommand("UPDATE admlogin SET password =@pass , username=@username WHERE username= @uname and password=@upass", con2);
        UpdateCommand.Parameters.Add("@username", SqlDbType.NVarChar).Value = TextBox1.Text.ToString();
        UpdateCommand.Parameters.Add("@pass", SqlDbType.NVarChar).Value = TextBox3.Text.ToString();
        UpdateCommand.Parameters.Add("@uname", SqlDbType.NVarChar).Value = Session["username"];
        UpdateCommand.Parameters.Add("@upass", SqlDbType.NVarChar).Value = TextBox2.Text.ToString();
        try
        {
            UpdateCommand.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Profile Successfully Updated');"), true);

            con2.Close();
        }
        catch
        {
            Response.Write("something going wrong ");
        }
    }
}