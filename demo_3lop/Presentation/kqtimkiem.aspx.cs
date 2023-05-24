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
    public partial class kqtimkiem : System.Web.UI.Page
    {
        SqlConnection sqlCnn = new SqlConnection();
        SqlDataAdapter sqlda = new SqlDataAdapter();
        DataTable dt = new DataTable();
        protected void Page_Load(object sender, EventArgs e)
        { string tenpet = Session["tenpet"].ToString();
        
            SqlConnection sqlCnn = new SqlConnection(ConfigurationManager.ConnectionStrings["PETSHOP"].ToString());
            //mo ket noi
            string sqlstr = "select * from InfoPet where TenPet like N'%" +tenpet+ "%'";
            try
            {
                sqlCnn.Open();
                //khoi tao doi tuong dataadapter
                SqlDataAdapter sqlAdap = new SqlDataAdapter(sqlstr, sqlCnn);
                //thuc thi
                sqlAdap.Fill(dt);
                //kt ket qua tra ve
                if (dt.Rows.Count > 0)
                {
                    DataList2.DataSource = dt;
                    DataList2.DataBind();
                }
                else
                {
                    lblthongbao.Text = "Khong Co Du Lieu";
                }
            }
            catch (Exception ex)
            {
                lblthongbao.Text = "Loi" + ex.Message;
            }
            finally
            {
                sqlCnn.Close();
                sqlda.Dispose();
                dt.Dispose();
            }

        }
    }
}