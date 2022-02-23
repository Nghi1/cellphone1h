using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CKLTW.Models
{
    public class ChiTietDonHang
    {
        public int MaDonHang { get; set; }
        public int MaSanPham { get; set; }
        public int? Soluong { get; set; }
        public decimal? Dongia { get; set; }
    }
}