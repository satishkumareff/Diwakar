﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using WGRL._03032003;

namespace CyraShop._240578
{
    public partial class SelfCashBackLibilites : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());
            decimal total1 = 0, Remaining1 = 0, Paid1 = 0;

            SqlCommand cmd = new SqlCommand("select AccountMaster.MemberID ,tblmembermaster.UserName,Sum(case when dateoftransaction>=getdate()then isnull(Credit,0) else 0 end) as Remaining, Sum(case when dateoftransaction<getdate()then isnull(Credit,0) else 0 end) as Paid,Sum(Credit) as Total from AccountMaster Inner Join tblMemberMaster on AccountMaster.MemberID=tblMemberMaster.UserCode WHERE TxnType=5 Group by AccountMaster.MemberID,tblmembermaster.UserName", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            using (DataTable dt = new DataTable())
            {
                da.Fill(dt);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                total1 = dt.AsEnumerable().Sum(row => row.Field<decimal>("Total"));
                Paid1 = dt.AsEnumerable().Sum(row => row.Field<decimal>("Paid"));
                Remaining1 = dt.AsEnumerable().Sum(row => row.Field<decimal>("Remaining"));
                GridView1.FooterRow.Cells[2].Text = "Total";
                GridView1.FooterRow.Cells[3].Text = total1.ToString();
                GridView1.FooterRow.Cells[4].Text = Paid1.ToString();
                GridView1.FooterRow.Cells[5].Text = Remaining1.ToString();
            }
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            GridViewExportUtil.Export("SelfCashBackLibilites.xls", this.GridView1);
        }
    }
}