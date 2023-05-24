using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation
{
    public partial class dathang : System.Web.UI.Page
    {
        double thanhtien;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                txtTongTien.Text = "0";
        }

        protected void lsbHangDaChon_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void txtHoTen_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtTongTien_TextChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void btn_Xoa_Click(object sender, EventArgs e)
        {
            int i;
            for (i = 0; i < lsbHangDaChon.Items.Count; i++)
            {
                lsbHangDaChon.Items.Remove(lsbHangDaChon.SelectedItem);
            }
        }

        protected void btn_ChonHang_Click(object sender, EventArgs e)
        {
            if (txtSoLuong.Text != "" && double.Parse(txtSoLuong.Text.Trim()) > 0)
            {
                thanhtien = double.Parse(txtTongTien.Text);
                thanhtien = thanhtien + double.Parse(txtDonGia.Text.Trim()) * double.Parse(txtSoLuong.Text.Trim());
                lsbHangDaChon.Items.Add(drl_dsHangHoa.SelectedItem);
            }
            else
            {
                txtSoLuong.Focus();
            }
            txtTongTien.Text = thanhtien.ToString();
        }

        protected void drl_dsHangHoa_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtDonGia.Text = drl_dsHangHoa.SelectedItem.Value.ToString();
        }

        protected void txtDonGia_TextChanged(object sender, EventArgs e)
        {

        }
    }
    }
