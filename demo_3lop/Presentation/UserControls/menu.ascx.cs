using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Presentation.UserControls
{
    public partial class menu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["makhach"] != null)
            {
                lblchaomung.Text = "Xin chao ban " + Session["makhach"];
                btnthoat.Text = "Thoát";
            }
        }

        protected void btnthoat_Click(object sender, EventArgs e)
        {
            Session["makhach"] = null;
            Response.Redirect("dangnhapthanhcong.aspx");
        }
    }
}