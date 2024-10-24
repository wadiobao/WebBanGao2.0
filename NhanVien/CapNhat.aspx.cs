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
    public partial class CapNhat : System.Web.UI.Page
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
            if (!Page.IsPostBack)
            {
                con();
                string q = "select *from SanPham where MaSP='" + Request.QueryString["MaSP"] + "'";
                SqlCommand cmd = new SqlCommand(q, conn);
                SqlDataReader r = cmd.ExecuteReader();
                if (r.Read())
                {
                    lblmasp.Text = r[0].ToString();

                    lblmaloai.Text = r[1].ToString();
                    txtten.Text = r[2].ToString();
                    txtnsx.Text = r[3].ToString();
                    txtnhh.Text = r[4].ToString();
                    txtdvi.Text = r[5].ToString();
                    txtdgnhap.Text = r[6].ToString();
                    txtdgban.Text = r[7].ToString();
                    txtsl.Text = r[8].ToString();

                    lblanh.Text = "<image src='" + ResolveUrl( r[9].ToString()) + "'></image>";
                    txtghichu.Text = r[10].ToString();


                }
                conn.Close();
            }

        }




        protected void btnthem_Click(object sender, EventArgs e)
        {

            // ấn nứt hủy để  quay trở lại giao diện ban đầu của trang cập nhật
            Response.Redirect("CapNhat.aspx?MaSP=" + lblmasp.Text + "");
        }

        protected void btnsua_Click(object sender, EventArgs e)
        {
            con();
            // sửa thông tin của một sản phẩm nhưng không được sửa mã loại và mã sản phẩm
            string filename = "";
            if (FileUpload1.HasFile)
            {
                filename = "~/GaoIMG/" + FileUpload1.FileName;
                string filepath = MapPath(filename);
                FileUpload1.SaveAs(filepath);


            }
            if (filename == "")
            {
                //khi khong them anh moi thi giu lai annh cu
                SqlCommand com = new SqlCommand("select *from SanPham where MaSP='" + lblmasp.Text + "'", conn);
                SqlDataReader r = com.ExecuteReader();
                if (r.Read())
                {
                    filename = r[9].ToString();
                }
                r.Close();

            }


            SqlCommand cmd = new SqlCommand("sp_Suasp", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("masp", lblmasp.Text));
            cmd.Parameters.Add(new SqlParameter("maloai", lblmaloai.Text));
            cmd.Parameters.Add(new SqlParameter("tensp", txtten.Text));

            DateTime nsx = new DateTime();
            nsx = Convert.ToDateTime(txtnsx.Text);
            DateTime nhh = new DateTime();
            nhh = Convert.ToDateTime(txtnhh.Text);


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

            Response.Redirect("QuanTri.aspx");

        }

        protected void btncapnhat_Click(object sender, EventArgs e)
        {
            //an nut cap nhat de bat dau sua thong tin san pham
            btnsua.Visible = true;
            btnthem.Visible = true;
            btncapnhat.Visible = false;
            btnxoa.Visible = false;
            FileUpload1.Visible = true;


            txtten.ReadOnly = false;
            txtnsx.ReadOnly = false;
            txtnhh.ReadOnly = false;
            txtdvi.ReadOnly = false;
            txtdgnhap.ReadOnly = false;
            txtdgban.ReadOnly = false;
            txtsl.ReadOnly = false;
            txtghichu.ReadOnly = false;


        }

        protected void btnxoa_Click(object sender, EventArgs e)
        {
            con();
            // xoa mot san pham 
            SqlCommand cmd = new SqlCommand("sp_Xoasp", conn);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("masp", lblmasp.Text));
            cmd.Parameters.Add(new SqlParameter("maloai", lblmaloai.Text));
            cmd.ExecuteNonQuery();
            conn.Close();
            Response.Redirect("QuanTri.aspx");
        }
    }
}