using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB2
{
    public partial class Themloaisp : System.Web.UI.Page
    {
        SqlConnection conn;
        private void con()
        {
            if (conn == null)
            {
                conn = new SqlConnection(WebConfigurationManager.ConnectionStrings["cthd"].ConnectionString);

            }
            conn.Open();
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnluu_Click(object sender, EventArgs e)
        {
            con();
            //them loai san pham moi
            SqlCommand com = new SqlCommand("sp_ThemLoai", conn);
            com.CommandType = System.Data.CommandType.StoredProcedure;
            com.Parameters.Add(new SqlParameter("maloai", txtmaloai.Text));
            com.Parameters.Add(new SqlParameter("tenloai", txttenloai.Text));
            com.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("Themsp.aspx");
        }
    }
}