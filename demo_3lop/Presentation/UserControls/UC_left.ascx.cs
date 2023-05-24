using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Business;

namespace Presentation.UserControls
{
    public partial class UC_left : System.Web.UI.UserControl
    {
       Typepetbll tpbll= new  Typepetbll ();

        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.DataSource = tpbll.laytatca();
            DataList1.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
