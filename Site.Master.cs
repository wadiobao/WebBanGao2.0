﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            listSPDC();
        }

        private SqlConnection connect(string database)
        {
            string constring = WebConfigurationManager.ConnectionStrings[database].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            return con;
        }
        private void listSPDC()
        {
            SqlConnection con = connect("demobd");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from sanpham", con);
            SqlDataReader reader = cmd.ExecuteReader();
            Panel panel = new Panel();
            while (reader.Read())
            {
                Label label = new Label();
                label.Text = $"<div style='margin:10px 0;background-color:buttonface;padding-left:10%'>" +
                    $"<P style='margin:0'>{reader[1].ToString()} </p>" +
                    $"<p style='margin:0'>Số lượng:{reader[2].ToString()}</p>" +
                    $"</div>";
                panel.Controls.Add(label);
            }
            spdc.Controls.Add(panel);
        }

    }
        
}