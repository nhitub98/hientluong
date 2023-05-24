using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Business;

namespace Presentation
{
    public partial class theoinfopet : System.Web.UI.Page
    {
        Infopetbll info = new Infopetbll();
        protected void Page_Load(object sender, EventArgs e)
        {

            string maloai = Request.QueryString["maloai"].ToString();
            DataList1.DataSource = info.laymotphan(maloai);
            DataList1.DataBind();
        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

           }
}