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
    public partial class Login_Form : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text=(" ");
            TextBox2.Text = (" ");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration form.aspx");
        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {

            try
            {
                string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
                SqlConnection con = new SqlConnection(scon);
                con.Open();
                string qry = "select count (*) from Registration where User_name='" + TextBox1.Text + "'";
                SqlCommand cmd = new SqlCommand(qry, con);
                int temp = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                con.Close();
                if (temp == 1)
                {
                    con.Open();
                    string passcheck = "select Password from Registration where User_name='" + TextBox1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(passcheck, con);
                    string Password = cmd1.ExecuteScalar().ToString();

                    //int temp1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    if (Password == TextBox2.Text)
                    {
                        Response.Write("Pass is correct");
                        Response.Redirect("~/Student Course.aspx");
                    }
                    else
                    {
                        Response.Write("Pass is not correct");
                    }
                }
                else
                {
                    Response.Write("User name is not correct");
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
           
        }
    }


    }
    
