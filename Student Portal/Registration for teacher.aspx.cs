using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeTry_App
{
    public partial class Registration_for_teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            string add = "insert into Registration_teacher (First_name,Last_name,User_name,Password) values (@first,@last,@user,@pass)";
            SqlCommand cmd = new SqlCommand(add, con);
            cmd.Parameters.AddWithValue("@first", TextBox1.Text);
            cmd.Parameters.AddWithValue("@last", TextBox2.Text);
            cmd.Parameters.AddWithValue("@user", TextBox3.Text);
            cmd.Parameters.AddWithValue("@pass", TextBox4.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("~/Default.aspx");
            Response.Write("Successfully Registered");
            TextBox1.Text = ("");
            TextBox2.Text = ("");
            TextBox3.Text = ("");
            TextBox4.Text = ("");
          
            //RequiredFieldValidator1.Enabled = false;
            //RequiredFieldValidator2.Enabled = false;
            //RequiredFieldValidator3.Enabled = false;
            //RequiredFieldValidator4.Enabled = false;
            //RequiredFieldValidator5.Enabled = false;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teacher login.aspx");

        }
    }
}