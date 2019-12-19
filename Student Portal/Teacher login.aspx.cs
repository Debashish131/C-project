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
    public partial class Teacher_login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            TextBox1.Text = ("");
            TextBox2.Text = ("");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
                SqlConnection con1 = new SqlConnection(scon);
                con1.Open();
                string qry = "select count (*) from Registration_teacher where User_name='" + TextBox1.Text + "'";
                SqlCommand cmd2 = new SqlCommand(qry, con1);
                int temp1 = Convert.ToInt32(cmd2.ExecuteScalar().ToString());
                con1.Close();
                if (temp1 == 1)
                {
                    con1.Open();
                    string passcheck = "select Password from Registration_teacher where User_name='" + TextBox1.Text + "'";
                    SqlCommand cmd1 = new SqlCommand(passcheck, con1);
                    string Password = cmd1.ExecuteScalar().ToString();
                    con1.Close();

                    //int temp1 = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                    if (Password == TextBox2.Text)
                    {
                        Response.Write("Pass is correct");
                        Response.Redirect("~/Show Database Teacher.aspx");
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

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Load page");
        }
    }

}
    
