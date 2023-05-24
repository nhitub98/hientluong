using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

namespace Presentation
{
    public partial class dangnhap : System.Web.UI.Page
    {
        SqlConnection cnn = new SqlConnection();
        SqlDataAdapter ad = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btndangnhap_Click(object sender, EventArgs e)
        {
            string sql1 = "select * from [User] where tendn='" + txttendn.Text + "' and mk = '" + txtmatkhau.Text + "'";
            SqlConnection cnn = new SqlConnection(ConfigurationManager.ConnectionStrings["PETSHOP"].ToString());
            try
            {
                cnn.Open();
                String ten, mk, email;
                ten = txttendn.Text;
                mk = txtmatkhau.Text;
                // email = txtemail.Text;

                SqlDataAdapter ad = new SqlDataAdapter(sql1, cnn);
                ad.Fill(dt);
                if (dt.Rows.Count > 0)
                {
                    Session["makhach"] = txttendn.Text;
                    Response.Redirect("Dangnhapthanhcong.aspx");
                }
                else
                {
                    lblthongbao.Text = "Tên đăng nhập hoặc mật khẩu ko đúng";
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
            finally
            { cnn.Close(); }
        }
    }
    }
