using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeTry_App
{
    public partial class Teacher_Course_view : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Show all Database Teacher");
            


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Teacher login");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            
            
            string valuesearch = TextBox1.Text.ToString();
            search(valuesearch);
            search("");

        }
       
            public void search(String valuesearch)
        {
            string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            string qry = "select *from Course_database where Student_id = ' " + valuesearch + "'";

            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter dta = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dta.Fill(dt);
            GridView1.DataSourceID = null;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            con.Close();
            
        }
        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            search("");
            GridView1.DataBind();
        }
    }
}