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
    public partial class QuanTri : System.Web.UI.Page
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

            //lấy ra tất cả thông tin của tất cả sản phẩm 
            con();
            string q = "select *from SanPham";
            SqlCommand cmd = new SqlCommand("GetAllSanphamAndLoai", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            SqlDataReader r = cmd.ExecuteReader();
            int j = 1;
            while (r.Read())
            {
                TableRow row = new TableRow();
                TableCell cell = new TableCell();
                cell.Text = j + "";
                ++j;
                row.Cells.Add(cell);
                for (int i = 0; i < 12; i++)
                {
                    TableCell cell2 = new TableCell();
                    if (i == 10)
                    {
                        cell2.Text = "<img src='" +ResolveUrl( r[10].ToString()) + "' />";
                    }
                    else cell2.Text = r[i].ToString();
                    row.Cells.Add(cell2);
                }
                TableCell cell3 = new TableCell();
                cell3.Text = "<a href='CapNhat.aspx?MaSP=" + r[2].ToString() + "'>Cập nhật</a>";
                row.Cells.Add(cell3);
                tbl.Rows.Add(row);
            }
            conn.Close();

            lblten.Text = "Xin chào " + Session["TenNV"];
            lblma.Text = "Mã nhân viên: " + Session["MaNV"];
            lblsdt.Text = "Số điện thoại: " + Session["DienThoaiNV"];
            lblgt.Text = "Giới tính: " + Session["GioiTinh"];
            lbldc.Text = "Địa chỉ: " + Session["DiaChiNV"];
            lblngaysinh.Text = "Ngày sinh: " + Session["NgaySinh"];


        }

        protected void btnthem_Click(object sender, EventArgs e)
        {
            //thêm một sản phẩm 
            Response.Redirect("Themsp.aspx");
        }
    }
}