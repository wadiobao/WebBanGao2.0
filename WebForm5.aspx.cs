using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string data  = Request.QueryString["data"];
            chiTiet(data);
            
        }

        private SqlConnection connect(string database)
        {
            string constring = WebConfigurationManager.ConnectionStrings[database].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            return con;
        }

        private void chiTiet(string data)
        {
            SqlConnection con = connect("demobd");
            con.Open();
            SqlCommand cmd = new SqlCommand($"Select * from sanpham where ID='{data}'", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                nsanpham.InnerText=reader[1].ToString();
                gsanpham.InnerText = reader[2].ToString()+"VNĐ";
            }
        }
    }
}