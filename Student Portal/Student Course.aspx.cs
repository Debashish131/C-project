using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeTry_App
{
    public partial class Student_Course : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("~/Load page");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
                SqlConnection con1 = new SqlConnection(scon);
                con1.Open();
                string add = "insert into Course_database (Student_id,Semister,Course_name) values (@Student_id,@Semister,@Course_name)";
                SqlCommand cmd = new SqlCommand(add, con1);
                cmd.Parameters.AddWithValue("@Student_id", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Semister", DropDownList1.SelectedItem.ToString());
                cmd.Parameters.AddWithValue("@Course_name", DropDownList2.SelectedItem.ToString());
                cmd.ExecuteNonQuery();
                Response.Write("<span style ='color:green' ><center>Succesfully Add Course</center></span>");
                con1.Close();
            }
            catch (Exception ex)

            {
                Response.Write(ex);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration form");
        }
    }
}