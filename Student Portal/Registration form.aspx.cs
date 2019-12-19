using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace HomeTry_App
{


    public partial class Registration_form : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    Response.Redirect("~/Registration form.aspx", true);
            //}

        }
        //public void dbconn()
        //{
        //    try
        //    {
        //        string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
        //        SqlConnection con = new SqlConnection(scon);
        //        con.Open();
        //    }
        //    catch (Exception Ex)
        //    {
        //        Response.Write(Ex);
        //    }
        //}

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox5_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Button1.Enabled = false;
            //RequiredFieldValidator1.Enabled = false;
            //RequiredFieldValidator2.Enabled = false;
            //RequiredFieldValidator3.Enabled = false;
            //RequiredFieldValidator4.Enabled = false;

            //RequiredFieldValidator5.Enabled = false;
            TextBox1.Text = ("");
            TextBox2.Text = ("");
            TextBox3.Text = ("");
            TextBox4.Text = ("");
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
            RequiredFieldValidator4.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
            Response.Redirect("~/Login Form.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            string add = "insert into Registration (First_name,Last_name,User_name,Password) values (@first,@last,@user,@pass)";
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
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator2.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
            RequiredFieldValidator4.Enabled = false;
            RequiredFieldValidator5.Enabled = false;

        }
    }
}