using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace CKLTW.Models
{
    public class TaiKhoanModels
    {
        public int MaKH { get; set; }

        [Required(ErrorMessage = "Tên không được bỏ trống")]
        [Display(Name = "Tên")]
        public string HoTen { get; set; }
        [Required(ErrorMessage = "Tài khoản không được bỏ trống")]
        [Display(Name = "Tài khoản")]
        public string TaiKhoan { get; set; }
        [Required(ErrorMessage = "Mật khẩu không được bỏ trống")]
        [Display(Name = "Mật khẩu")]
        public string MatKhau { get; set; }

        public DateTime? NgaySinh { get; set; }
        [Required(ErrorMessage = "Địa chỉ không được bỏ trống")]
        [Display(Name = "Địa chỉ")]
        public string DiaChi { get; set; }
        [Display(Name = "Email")]
        public string Email { get; set; }
        [Required(ErrorMessage = "Số điện thoại không được bỏ trống")]
        [Display(Name = "Điện thoại")]
        public string DienThoai { get; set; }
    }
}