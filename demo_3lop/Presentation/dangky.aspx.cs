using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Presentation
{
    public partial class dangky : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlDataAdapter ad = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            string sql1 = "select * from [User] where tendn='" + txttendn.Text + "'";
            SqlConnection cnn = new SqlConnection("Data Source=DESKTOP-3L3QS5R\\LUONGTHUHIEN;Initial Catalog=PETSHOP;Integrated Security = True");
            try
            {
                cnn.Open();
                String ten, mk, email;
                ten = txttendn.Text;
                mk = txtmatkhau.Text;
                email = txtemail.Text;
                string sql2 = "insert into [User] values('" + ten + "','"
               + mk + "','" + email + "')";
                SqlDataAdapter ad = new SqlDataAdapter(sql1, cnn);
                ad.Fill(dt);
                SqlCommand cmd = new SqlCommand(sql2);
                cmd.Connection = cnn;
                //cmd.ExecuteNonQuery();

                if (dt.Rows.Count > 0)
                {
                    //Response.Write("Tên đăng nhập này đã tồn tại");
                    lblthongbao.Text = "Tên đăng nhập này đã tồn tại";
                    txttendn.Focus();
                }
                else
                {
                    int i = cmd.ExecuteNonQuery();
                    if (i > 0)
                    {
                        lblthongbao.Text = "Đăng ký thành công";
                    }
                    else
                    {
                        lblthongbao.Text = "Lỗi";
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            { cnn.Close(); }
        }

        protected void txtnhaplaimk_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
