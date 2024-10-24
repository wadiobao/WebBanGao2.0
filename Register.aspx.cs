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
    public partial class WebForm9 : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd, cmd1;
        int result;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void Clear_Text()
        {
            txtUsername.Text = txtPassword.Text = txtRepeatPassword.Text = string.Empty;
        }

        protected void lbLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (txtUsername.Text == "")
                lblMessage.Text = "Hãy nhập tên đăng nhập!";
            else if (txtPassword.Text == "")
                lblMessage.Text = "Hãy nhập mật khẩu!";
            else if (txtRepeatPassword.Text != txtPassword.Text)
                lblMessage.Text = "Mật khẩu nhập lại không khớp!";
            else
            {
                string conStr = WebConfigurationManager.ConnectionStrings["cthd"].ConnectionString;
                using (con = new SqlConnection(conStr))
                {
                    con.Open();

                    using (SqlTransaction tran = con.BeginTransaction())
                    {
                        try
                        {
                            string sqlCheckUser = "SELECT COUNT(*) FROM Login WHERE Tendangnhap = @tdn";
                            using (SqlCommand cmdCheckUser = new SqlCommand(sqlCheckUser, con, tran))
                            {
                                cmdCheckUser.Parameters.AddWithValue("@tdn", txtUsername.Text);

                                int result = (int)cmdCheckUser.ExecuteScalar();
                                if (result > 0)
                                {
                                    lblMessage.Text = "Tên đăng nhập đã tồn tại. Hãy thử tên khác.";
                                    tran.Rollback(); // Rollback nếu tài khoản đã tồn tại
                                    return;
                                }
                                using (cmd1 = new SqlCommand("sp_ThemKhach", con, tran))
                                {
                                    cmd1.CommandType = System.Data.CommandType.StoredProcedure;
                                    cmd1.Parameters.AddWithValue("@TenKhach", txtFullName.Text);
                                    cmd1.Parameters.AddWithValue("@DiaChi", txtAddress.Text);
                                    cmd1.Parameters.AddWithValue("@DienThoai", txtPhoneNumber.Text);

                                    // Thêm tên đăng nhập và mật khẩu vào stored procedure sp_ThemKhach
                                    cmd1.Parameters.AddWithValue("@Tendangnhap", txtUsername.Text);
                                    cmd1.Parameters.AddWithValue("@Matkhau", txtPassword.Text);

                                    int resultCustomer = cmd1.ExecuteNonQuery();
                                    if (resultCustomer > 0)
                                    {
                                        // Nếu lưu khách hàng thành công thì commit transaction
                                        tran.Commit();
                                        lblMessage.Text = "Đăng ký thành công! Đăng nhập để sử dụng.";
                                    }
                                    else
                                    {
                                        tran.Rollback();
                                        lblMessage.Text = "Có lỗi xảy ra. Vui lòng thử lại.";
                                    }
                                }

                            }
                        }
                        catch (Exception ex)
                        {
                            tran.Rollback();
                            lblMessage.Text = "Có lỗi xảy ra: " + ex.Message;
                        }
                    }

                    con.Close();
                }
            }
        }
    }
}