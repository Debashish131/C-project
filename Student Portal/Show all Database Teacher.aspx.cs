using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeTry_App
{
    public partial class Show_Database_Teacher : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string scon = "Data Source=DESKTOP-AFG8EL0;Initial Catalog=HomeTryapp;Integrated Security=True";
            SqlConnection con = new SqlConnection(scon);
            con.Open();
            string qry = "select *from Course_database";
            SqlCommand cmd = new SqlCommand(qry, con);
            SqlDataAdapter dta = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dta.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
            //GridView2.Enabled = false;
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}