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


public partial class admin_facultyreg : System.Web.UI.Page
{
    string constr = ConfigurationManager.ConnectionStrings["success"].ConnectionString.ToString();
    string path,fileup;
       
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null) {
            Response.Redirect("../home.aspx");
        }
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        SqlCommand com = new SqlCommand("select dname from dept", con);
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DropDownList1.DataTextField = ds.Tables[0].Columns["dname"].ToString();
        DropDownList1.DataValueField = ds.Tables[0].Columns["dname"].ToString();
        DropDownList1.DataSource = ds.Tables[0];
        DropDownList1.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        string usercheck = "select * from facul_reg where email='" + TextBox4.Text.ToString() + "'";
        SqlConnection con1 = new SqlConnection(constr);
        SqlCommand cmd = new SqlCommand(usercheck, con1);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataTable dt = new DataTable();
        da.Fill(dt);
        if (dt.Rows.Count > 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('already exist');"), true);

        }
        else
        {
            int pwd = new Random().Next(1000, 9999);
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
            con.Open();
            if (fu.HasFile)
            {
                try
                {
                    string filename = Path.GetFileName(fu.FileName);

                    fileup = "~/uploadfile/" + filename;
                    path = Server.MapPath("~/uploadfile/");
                    fu.SaveAs(path + filename);
                    //StatusLabel.Text = "Upload status: File uploaded!";
                }
                catch (Exception ex)
                {
                    //StatusLabel.Text = "Upload status: The file could not be uploaded. The following error occured: " + ex.Message;
                }
            }
            string inscmd = "insert into facul_reg(name,email,dept,paddress,caddress,image,pass)values(@name,@email,@dept,@paddress,@caddress,@path,@pass)";
            SqlCommand insertuser = new SqlCommand(inscmd, con);
            insertuser.Parameters.AddWithValue("@name", TextBox1.Text);
            insertuser.Parameters.AddWithValue("@email", TextBox4.Text);
            insertuser.Parameters.AddWithValue("@dept", DropDownList1.SelectedItem.Text.ToString());
            insertuser.Parameters.AddWithValue("@paddress", TextBox6.Text);
            insertuser.Parameters.AddWithValue("@caddress", TextBox7.Text);
            insertuser.Parameters.AddWithValue("@path", fileup);
            insertuser.Parameters.AddWithValue("@pass", pwd);
            Session["name"] = TextBox1.Text.ToString();

            try
            {
                insertuser.ExecuteNonQuery();
                con.Close();
                SendingMail(TextBox4.Text, "sweetritz78@gmail.com", "ritu@wtf", " Registration Successful!!", "Dear " + TextBox1.Text + ", You have successfully registered on college(Xavier's college) online portal.");
               ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Faculty Successfully registered');"), true);                
                Response.Redirect("dashboard.aspx");
            }
            catch (Exception er)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Something going wrong');"), true);                
               
            }
            finally
            {

            }
        }
    }
     public string SendingMail(string mailTo, string from, string pass, string subject, string body)
    {
        string msg = string.Empty;
        if (mailTo != "")
        {

            MailMessage message = new MailMessage();
            SmtpClient smtpClient = new SmtpClient();

            try
            {
                MailAddress fromAddress = new MailAddress(from);
                message.From = fromAddress;
                message.To.Add(mailTo);

                message.Subject = subject;
                message.IsBodyHtml = true;
                message.Body = body;
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 587;
                smtpClient.EnableSsl = true;
                smtpClient.UseDefaultCredentials = true;
                smtpClient.Credentials = new System.Net.NetworkCredential(from, pass);
                smtpClient.Send(message);
                msg = "true";

            }
            catch (Exception ex)
            {
                throw ex;
                // msg = ex.Message;
            }
        }
        return msg;
    }
}