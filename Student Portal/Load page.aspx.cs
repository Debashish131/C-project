﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeTry_App
{
    public partial class Load_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login Form");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Teacher login.aspx");
        }
    }
}