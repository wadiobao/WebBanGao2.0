using System;
using System.Collections;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BTLWEB2
{
    public partial class Themsp : System.Web.UI.Page
    {
        SqlConnection conn;
        ArrayList check = new ArrayList();
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
            con();
            lblmaloai.Visible = false;

            for (int i = 0; i < DropDownList1.Items.Count; i++)
            {
                check.Add(DropDownList1.Items[i].ToString());
                if (DropDownList1.Items[i].Selected) lblmaloai.Text = DropDownList1.Items[i].Value.ToString();
            }

            string q = "select * from Loai where MaLoai='" + lblmaloai.Text + "'";
            SqlCommand cmd = new SqlCommand(q, conn);
            SqlDataReader r = cmd.ExecuteReader();
            if (r.Read())
            {
                lbltenloai.Text = r[1].ToString();
            }
            conn.Close();
            
        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            con();
            //them moi mot san pham
            string filename = "";
            if (FileUpload1.HasFile)
            {
                filename = "~/GaoIMG/" + FileUpload1.FileName;
                string filepath = MapPath(filename);
                FileUpload1.SaveAs(filepath);

            }

            DateTime nsx = new DateTime();
            nsx = Convert.ToDateTime(txtnsx.Text);
            DateTime nhh = new DateTime();
            nhh = Convert.ToDateTime(txtnhh.Text);

            SqlCommand cmd = new SqlCommand("sp_Themsp", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("masp", txtmasp.Text));
            cmd.Parameters.Add(new SqlParameter("maloai", lblmaloai.Text));
            cmd.Parameters.Add(new SqlParameter("tensp", txtten.Text));
            cmd.Parameters.Add(new SqlParameter("ngaysx", nsx));
            cmd.Parameters.Add(new SqlParameter("ngayhh", nhh));
            cmd.Parameters.Add(new SqlParameter("donvi", txtdvi.Text));
            cmd.Parameters.Add(new SqlParameter("dongianhap", txtdgnhap.Text));
            cmd.Parameters.Add(new SqlParameter("dongiaban", txtdgban.Text));
            cmd.Parameters.Add(new SqlParameter("soluong", txtsl.Text));
            cmd.Parameters.Add(new SqlParameter("anh", filename));
            cmd.Parameters.Add(new SqlParameter("ghichu", txtghichu.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("~/NhanVien/QuanTri.aspx");
        }

        protected void btnhuythem_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NhanVien/QuanTri.aspx");
        }

        protected void btbloai_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NhanVien/Themloaisp.aspx");
        }
    }
}