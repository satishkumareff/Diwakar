﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace CyraShop._240578
{
    public partial class UpdateAchieverList : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["ID"] = Request.QueryString["RID"];
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            SqlCommand cmd = new SqlCommand("Update RewardsAchieved set DOR=getdate(),Remarks='"+TextBox1.Text+"' where ID = '" + Session["ID"] + "'", con);
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            Response.Redirect("AchieverStatus.aspx");
        }
    }
}