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
                        cell2.Text = "<div class='image'>" +
                            "<img src='" + ResolveUrl(r[10].ToString()) + "' />" +
                            "</div>";
                    }
                    else if (i == 11) cell2.Text = "<div class='size'>" + r[i].ToString() + "</div>";
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
            Response.Redirect("~/NhanVien/Themsp.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Trangchu.aspx");
        }




        protected void btntk_Click(object sender, EventArgs e)
        {
            con();
            tbl.Rows.Clear();

            TableCell cell24 = new TableCell();
            cell24.Text = "STT";
            TableRow row24 = new TableRow();

            row24.Cells.Add(cell24);
            TableCell cell25 = new TableCell();
            cell25.Text = "Mã loại";
            row24.Cells.Add(cell25);
            TableCell cell26 = new TableCell();
            cell26.Text = "Tên loại";
            row24.Cells.Add(cell26);

            TableCell cell27 = new TableCell();
            cell27.Text = "Mã sản phẩm";

            row24.Cells.Add(cell27);

            TableCell cell28 = new TableCell();
            cell28.Text = "Tên sản phẩm";
            row24.Cells.Add(cell28);

            TableCell cell29 = new TableCell();
            cell29.Text = "Ngày sản xuất ";
            row24.Cells.Add(cell29);


            TableCell cell30 = new TableCell();
            cell30.Text = "Ngày hết hạn";
            row24.Cells.Add(cell30);


            TableCell cell31 = new TableCell();
            cell31.Text = "Đơn vị";
            row24.Cells.Add(cell31);

            TableCell cell32 = new TableCell();
            cell32.Text = "Đơn giá nhập";
            row24.Cells.Add(cell32);

            TableCell cell33 = new TableCell();
            cell33.Text = "Đơn giá bán";
            row24.Cells.Add(cell33);

            TableCell cell34 = new TableCell();
            cell34.Text = "Số lượng ";
            row24.Cells.Add(cell34);

            TableCell cell35 = new TableCell();
            cell35.Text = "Ảnh ";
            row24.Cells.Add(cell35);

            TableCell cell36 = new TableCell();
            cell36.Text = "Ghi chú";
            row24.Cells.Add(cell36);

            TableCell cell37 = new TableCell();
            cell37.Text = "Cập nhật";
            row24.Cells.Add(cell37);
            tbl.Rows.Add(row24);

            SqlCommand cmd = new SqlCommand("TimKiem", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@TenSP", txttkiem.Text));
            cmd.ExecuteNonQuery();
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
                        cell2.Text = "<div class='image'>" +
                            "<img src='" + ResolveUrl(r[10].ToString()) + "' />" +
                            "</div>";
                    }
                    else if (i == 11) cell2.Text = "<div class='size'>" + r[i].ToString() + "</div>";
                    else cell2.Text = r[i].ToString();
                    row.Cells.Add(cell2);
                }
                TableCell cell3 = new TableCell();
                cell3.Text = "<a href='CapNhat.aspx?MaSP=" + r[2].ToString() + "'>Cập nhật</a>";
                row.Cells.Add(cell3);
                tbl.Rows.Add(row);
            }
            conn.Close();
        }
    }
}