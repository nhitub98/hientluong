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
    public class Infopetbll
    {
        DataService dt_serv = new DataService();
        public List<InfoPet> laytatca()
        {
            string sql = "select * from InfoPet";
            DataTable dt = dt_serv.Laydulieu(sql);
            List<InfoPet> lstdv = new List<InfoPet>();
            foreach (DataRow r in dt.Rows)
            {
                InfoPet dv = new InfoPet();
                dv._mapet = (string)r[0];
                dv._tenpet = (string)r[1];
                dv._giongpet = (string)r[2];
                dv._gioitinh = (string)r[3];
                dv._cannang = (string)r[4];
                dv._tuoitho = (string)r[5];
                dv._dacdiem = (string)r[6];
                dv._gia = float.Parse(r[7].ToString());
                dv._anh = (string)r[8];
                lstdv.Add(dv);
            }
            return lstdv;
        }

        public List<InfoPet> laymotphan(string maloai)
        {
            string sql = "select * from InfoPet where GiongPet='" + maloai + "'";
            DataTable dt = dt_serv.Laydulieu(sql);
            List<InfoPet> lstdv = new List<InfoPet>();
            foreach (DataRow r in dt.Rows)
            {
                InfoPet dv = new InfoPet();
                dv._mapet = (string)r[0];
                dv._tenpet = (string)r[1];
                dv._giongpet = (string)r[2];
                dv._gioitinh = (string)r[3];
                dv._cannang = (string)r[4];
                dv._tuoitho = (string)r[5];
                dv._dacdiem = (string)r[6];
                dv._gia = float.Parse(r[7].ToString());
                dv._anh = (string)r[8];
                lstdv.Add(dv);
            }
            return lstdv;
        }



        public void them(string mapet, string tenpet, string giongpet, string gioitinh, string cannang, string tuoitho, string dacdiem, float gia, string anh)
        {
            string sql = "insert into InfoPet values(@MaPet,@TenPet, @GiongPet, @GioiTinh, @CanNang,@TuoiTho,@DacDiem,@Gia,@Anh)";
            SqlParameter para0 = new SqlParameter("@MaPet", mapet);
            SqlParameter para1 = new SqlParameter("@TenPet", tenpet);
            SqlParameter para2 = new SqlParameter("@GiongPet", giongpet);
            SqlParameter para3 = new SqlParameter("@GioiTinh", gioitinh);
            SqlParameter para4 = new SqlParameter("@CanNang", cannang);
            SqlParameter para5 = new SqlParameter("@TuoiTho", tuoitho);
            SqlParameter para6 = new SqlParameter("@DacDiem", dacdiem);
            SqlParameter para7 = new SqlParameter("@Gia", gia);
            SqlParameter para8 = new SqlParameter("@Anh", anh);
            dt_serv.capnhatdulieu(sql, para0, para1, para2, para3, para4, para5, para7, para8);
        }
    }
}

