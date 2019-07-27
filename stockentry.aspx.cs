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

public partial class admin_stockentry : System.Web.UI.Page
{
    int quant,amt,warr;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] == null)
        {
            Response.Redirect("/admin/login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["success"].ConnectionString);
        con.Open();
        string inscmd = "insert into stock_entry(code,name,quantity,amount,dop,warrperiod)values(@code,@name,@quantity,@amount,@dop,@warrperiod)";
        SqlCommand insertuser = new SqlCommand(inscmd, con);
        int.TryParse(TextBox3.Text, out quant);
        int.TryParse(TextBox4.Text, out amt);
        int.TryParse(TextBox6.Text, out warr);
        insertuser.Parameters.AddWithValue("@code", DropDownList1.SelectedItem.Text.ToString());
            insertuser.Parameters.AddWithValue("@name", TextBox2.Text);
            insertuser.Parameters.AddWithValue("@quantity",quant);
            insertuser.Parameters.AddWithValue("@amount", amt);
         insertuser.Parameters.AddWithValue("@dop", TextBox5.Text);
         insertuser.Parameters.AddWithValue("@warrperiod",warr);
         try
         {
             insertuser.ExecuteNonQuery();
             con.Close();

             ClientScript.RegisterStartupScript(this.GetType(), "Alert", string.Format("alert('Item Successfully Entered into the stock');"), true);
            
         }
         catch (Exception er)
         {
             Response.Write("something going wrong" + er.Message + "");
         }
         finally
         {

         }

    }
}