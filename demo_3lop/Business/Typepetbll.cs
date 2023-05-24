using Data_Access_Layer;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Business
{
    public class Typepetbll
    {
        DataService dt_serv = new DataService();
        public List<TypePet> laytatca()
        {
            string sql = "select * from TypePet";
            DataTable dt = dt_serv.Laydulieu(sql);
            List<TypePet> lstdv = new List<TypePet>();
            foreach (DataRow r in dt.Rows)
            {
                TypePet dv = new TypePet();
                dv._giongpet = (string)r[0];
                dv._loai = (string)r[1];
                dv._maloai = (string)r[2];

                lstdv.Add(dv);
            }
            return lstdv;
        }
      
        public void them(string giongpet, string loai, string maloai)
        {
            string sql = "insert into TypePet values(@GiongPet, @Loai, @MaLoai)";
            SqlParameter para0 = new SqlParameter("@GiongPet", giongpet);
            SqlParameter para1 = new SqlParameter("@Loai", loai);
            SqlParameter para2 = new SqlParameter("@MaLoai", maloai);
           
            dt_serv.capnhatdulieu(sql, para0, para1, para2) ;
        }
    }
}