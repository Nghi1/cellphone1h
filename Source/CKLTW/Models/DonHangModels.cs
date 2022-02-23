using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CKLTW.Models
{
    public class DonHangModels
    {
        public int MaDonHang { get; set; }
        public bool? Dathanhtoan { get; set; }
        public bool? Tinhtranggiaohang { get; set; }
        public DateTime? Ngaydat { get; set; }
        public DateTime? Ngaygiao { get; set; }
        public int? MaKH { get; set; }
    }
}