using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class WebForm4 : System.Web.UI.Page
    { 
        protected void Page_Load(object sender, EventArgs e)
        {
            listHot();
            listAll();
            
        }
        private SqlConnection connect(string database)
        {
            string constring = WebConfigurationManager.ConnectionStrings["qlcb"].ConnectionString;
            SqlConnection con = new SqlConnection(constring);
            return con;
        }
        private void listHot()
        {
            SqlConnection con = connect("qlcb");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select top 4 * from canbo", con);
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Label lbl = new Label();
                lbl.Text =
                    $"<div class='VietNam NEP k1kg w3-card-2 w3-quarter' style='background-color: white;' > " +
                    $"<a href=''><img src='' loading='lazy' alt='' style='width: 100%;' class=''>  " +
                    $"     <div style='margin-left: 10px;' >    " +
                    $"     <h3>{reader[1].ToString()}<br> (loại 1)</h3>     " +
                    $"     <p>túi 1kg</p>    " +
                    $"     <p id='price'>{reader[4].ToString()}</p>  " +
                    $"     </div>  " +
                    $"   </a> " +
                    $"  </div>";
                hot.Controls.Add(lbl);
            }
        }

        private void listAll()
        {
            SqlConnection con = connect("qlcb");
            con.Open();
            SqlCommand cmd = new SqlCommand("Select * from canbo", con);
            SqlDataReader reader = cmd.ExecuteReader();

            while (reader.Read())
            {
                Label lbl = new Label();
                lbl.Text =
                    $"<div class='VietNam NEP k1kg w3-card-2 w3-quarter' style='background-color: white;' > " +
                    $"<a href=''><img src='' loading='lazy' alt='' style='width: 100%;' class=''>  " +
                    $"     <div style='margin-left: 10px;' >    " +
                    $"     <h3>{reader[1].ToString()}<br> (loại 1)</h3>     " +
                    $"     <p>túi 1kg</p>    " +
                    $"     <p id='price'>{reader[3].ToString()}</p>  " +
                    $"     </div>  " +
                    $"   </a> " +
                    $"  </div>";
                sp.Controls.Add(lbl);
            }
        }

    }
}