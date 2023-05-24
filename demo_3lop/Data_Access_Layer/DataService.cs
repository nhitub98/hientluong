using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Data_Access_Layer
{
    public class DataService
    {
        string strcnn = "Data Source=DESKTOP-3L3QS5R\\LUONGTHUHIEN;Initial Catalog=PETSHOP;Integrated Security=True";
        SqlConnection cnn;
        public DataService()
        {

        }
        public DataTable Laydulieu(string sql, params SqlParameter[] thamso)
        {
            cnnopen(); //mơ ket noi
            DataTable dt = new DataTable(); //tạo datatable để chứa dl
            SqlCommand cmd = new SqlCommand(sql, cnn);
            cmd.Parameters.AddRange(thamso);
            dt.Load(cmd.ExecuteReader()); //đọc câu lênh select
            cnnclose();
            return dt;
        }
        void cnnopen()
        {
            cnn = new SqlConnection(strcnn);
            cnn.Open();
        }
        void cnnclose()
        {
            cnn.Close();
        }
        public void capnhatdulieu(string sql, params SqlParameter[] thamso)
        {
            cnnopen();
            SqlCommand cmd = new SqlCommand(sql, cnn);
            cmd.Parameters.AddRange(thamso);
            cmd.ExecuteNonQuery();
            cnnclose();
        }
    }
}
