﻿using CKLTW.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace CKLTW.Controllers
{
    public class HomeController : Controller
    {
        cellphone1hrEntities db = new cellphone1hrEntities();
        // GET: SanPham
        [ChildActionOnly]
        public ActionResult TaiKhoan()
        {
            var tk = Session["TAIKHOAN"] as List<TaiKhoanModels>;
            ViewBag.TaiKhoan = tk;
            return PartialView("_TaiKhoanPartial");
        }
        public ActionResult Index(string TimKiem="")
        {
            if(TimKiem!="")
            {
                var sanpham = db.SANPHAMs.Where(sp => sp.TenSanPham.ToUpper().Contains(TimKiem.ToUpper()))
                .Select(sp => new SanPhamModels
                 {

                     MaSanPham = sp.MaSanPham,
                     TenSanPham = sp.TenSanPham,
                     Anhbia = sp.Anhbia,
                     Mota = sp.Mota,
                     Giaban = sp.Giaban,
                     Soluongton = sp.Soluongton,
                     Ngaycapnhat = sp.Ngaycapnhat,
                     MaCD = sp.MaCD,
                     MaNCC = sp.MaNCC,
                     Khuyenmai = sp.Khuyenmai,
                     GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                 });
                ViewBag.SanPham = sanpham;
                return View();
            }
            else
            {
                 var sanpham = db.SANPHAMs
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                });
            ViewBag.SanPham = sanpham;
            return View();
            }
           
        }
        public ActionResult DienThoai()
        {
            var sanpham = db.SANPHAMs.Where(sp => sp.MaCD == 1)
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                });
            ViewBag.SanPham = sanpham;
            return View();
        }
        public ActionResult TaiNghe()
        {
            var sanpham = db.SANPHAMs.Where(sp => sp.MaCD == 2)
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                });
            ViewBag.SanPham = sanpham;
            return View();
        }
        public ActionResult Chitiet(int id)
        {
            var sanpham = db.SANPHAMs.Where(sp => sp.MaSanPham == id)
                .Select(sp => new SanPhamModels
                {

                    MaSanPham = sp.MaSanPham,
                    TenSanPham = sp.TenSanPham,
                    Anhbia = sp.Anhbia,
                    AnhbiaCT = sp.AnhbiaCT,
                    Mota = sp.Mota,
                    Giaban = sp.Giaban,
                    Soluongton = sp.Soluongton,
                    Ngaycapnhat = sp.Ngaycapnhat,
                    MaCD = sp.MaCD,
                    MaNCC = sp.MaNCC,
                    Khuyenmai = sp.Khuyenmai,
                    GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

                })
                .FirstOrDefault();
            ViewBag.SanPham = sanpham;
            return View();
        }
        [HttpGet]
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(TaiKhoanModels model)
        {
            if (ModelState.IsValid)
            {
                KHACHHANG kh = new KHACHHANG();
                kh.MaKH = model.MaKH;
                kh.HoTen = model.HoTen;
                kh.TaiKhoan = model.TaiKhoan;
                kh.MatKhau = model.MatKhau;
                kh.NgaySinh = model.NgaySinh;
                kh.DiaChi = model.DiaChi;
                kh.Email = model.Email;
                kh.DienThoai = model.DienThoai;

                db.KHACHHANGs.Add(kh);
                db.SaveChanges();
                return RedirectToAction("DangNhap", "Home");
            }
            else // Nếu nhập sai
            {
                return View();
            }
        }
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap(TaiKhoanModels model)
        {
            var taikhoan = db.KHACHHANGs
                .Where(x => x.TaiKhoan == model.TaiKhoan && x.MatKhau == model.MatKhau)
                .FirstOrDefault();
            if (taikhoan != null && taikhoan.TaiKhoan != "admin")
            {
                Session["TAIKHOAN"] = taikhoan;
                Session["idTK"] = taikhoan.MaKH;
                Session["Email"] = taikhoan.Email;
                Session["Hoten"] = taikhoan.HoTen;
                Session["SDT"] = taikhoan.DienThoai;
                Session["Diachi"] = taikhoan.DiaChi;
                return RedirectToAction("Index", "Home");
            }
            if (taikhoan != null && taikhoan.TaiKhoan == "admin")
            {
                Session["TAIKHOAN"] = taikhoan;
                Session["idTK"] = taikhoan.MaKH;
                Session["Email"] = taikhoan.Email;
                Session["Hoten"] = taikhoan.HoTen;
                Session["SDT"] = taikhoan.DienThoai;
                Session["Diachi"] = taikhoan.DiaChi;
                return RedirectToAction("AdminPage", "Home");
            }
            return View();
        }
        public ActionResult AdminPage()
        {
            var listOrder = db.DONDATHANGs
                .Select(sp => new DonHangModels
                {
                    MaDonHang= sp.MaDonHang,
                    Dathanhtoan = sp.Dathanhtoan,
                    Tinhtranggiaohang = sp.Tinhtranggiaohang,
                    Ngaydat = sp.Ngaydat,
                    Ngaygiao = sp.Ngaygiao,
                    MaKH = sp.MaKH,
                });
            ViewBag.listOrder = listOrder;
            var detailOrder = db.CHITIETDONTHANGs
               .Select(sp => new ChiTietDonHang
               {
                   MaDonHang = sp.MaDonHang,
                   MaSanPham = sp.MaSanPham,
                   Soluong=sp.Soluong,
                   Dongia = sp.Dongia,
               });
            ViewBag.detailOrder = detailOrder;
            var khachHang = db.KHACHHANGs.Where(sp=>sp.MaKH!=2)
              .Select(sp => new TaiKhoanModels
              {
                  MaKH = sp.MaKH,
                  HoTen = sp.HoTen,
                  DiaChi = sp.DiaChi,
                  DienThoai = sp.DienThoai,
                  Email = sp.Email,
              });
            ViewBag.khachHang = khachHang;
            var sanpham = db.SANPHAMs
               .Select(sp => new SanPhamModels
               {

                   MaSanPham = sp.MaSanPham,
                   TenSanPham = sp.TenSanPham,
                   Anhbia = sp.Anhbia,
                   Mota = sp.Mota,
                   Giaban = sp.Giaban,
                   Soluongton = sp.Soluongton,
                   Ngaycapnhat = sp.Ngaycapnhat,
                   MaCD = sp.MaCD,
                   MaNCC = sp.MaNCC,
                   Khuyenmai = sp.Khuyenmai,
                   GiaKhuyenmai = (int)sp.Giaban * (double)(100 - sp.Khuyenmai) / 100

               });
            ViewBag.SanPham = sanpham;
            return View();
        }
        [ChildActionOnly]
        public ActionResult TenDangNhap()
        {
            var tk = Session["TAIKHOAN"];
            ViewBag.TenDN = tk;
            return PartialView("_TenDangNhapPartial");
        }
        [ChildActionOnly]
        public ActionResult TheLoai()
        {
            var theloai = db.CHUDEs.ToList();
            ViewBag.TheLoai = theloai;
            return PartialView("TheLoai");
        }
        public ActionResult Checkout()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.Giohang = giohang;
            return View();
        }
        public ActionResult ThemVaoGio(int id)
        {
            List<SanPhamModels> giohang = Session["GIOHANG"] as List<SanPhamModels>;
            if (giohang == null)
            {
                giohang = new List<SanPhamModels>();
                Session["GIOHANG"] = giohang;

            }
            var timkem = giohang.Find(x => x.MaSanPham == id);
            var tam = db.SANPHAMs.Where(x => x.MaSanPham == id).FirstOrDefault();
            var sanpham = new SanPhamModels();
            sanpham.GiaTong = 0;
            if(timkem==null)
            {
                            sanpham.MaSanPham = tam.MaSanPham;
                            sanpham.TenSanPham = tam.TenSanPham;
                            sanpham.Anhbia = tam.Anhbia;
                sanpham.GiaKhuyenmai = (int)tam.Giaban * (double)(100 - tam.Khuyenmai) / 100;
                            sanpham.SoLuong = 1;
                sanpham.GiaTong = (double)sanpham.GiaKhuyenmai * sanpham.SoLuong;
     
                giohang.Add(sanpham);        
            }    
            else
            {
                timkem.SoLuong += 1;
                timkem.GiaTong = (double)timkem.GiaKhuyenmai* timkem.SoLuong;        
            }

            return RedirectToAction("Checkout");
        }
        public ActionResult XoaKhoiGio(int id)
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            var timkem = giohang.Find(x => x.MaSanPham == id);
            if (timkem != null)
            {
                giohang.RemoveAll(x => x.MaSanPham == id);
            }
            return RedirectToAction("Checkout");
        }
        
        public ActionResult DangXuat()
        {
            Session["TAIKHOAN"] = null;
            Session["GioHang"] = null;
            return RedirectToAction("Index");
        }
        [ChildActionOnly]
        public ActionResult TongSoLuong()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.GioHang = giohang;
            return PartialView("_TongSoLuong");
        }
        [ChildActionOnly]
        public ActionResult ThanhTien()
        {
            var giohang = Session["GIOHANG"] as List<SanPhamModels>;
            ViewBag.GioHang = giohang;
            return PartialView("_ThanhTien");
        }
        public ActionResult ThanhToan()
        {
            if(Session["idTK"]==null)
            {
                return RedirectToAction("DangNhap", "Home");
            }    
            else
            {
                var listCart = (List<SanPhamModels>)Session["GIOHANG"];
                DONDATHANG objOrder = new DONDATHANG();
                objOrder.MaKH = int.Parse(Session["idTK"].ToString());
                objOrder.Dathanhtoan = true;
                objOrder.Ngaydat = DateTime.Now;
                objOrder.Ngaygiao = DateTime.UtcNow;
                objOrder.Tinhtranggiaohang = false;
                db.DONDATHANGs.Add(objOrder);
                db.SaveChanges();
                int intOrderId = objOrder.MaDonHang;
                List<CHITIETDONTHANG> listOrderDetail = new List<CHITIETDONTHANG>();
                foreach(var item in listCart)
                {
                    CHITIETDONTHANG obj = new CHITIETDONTHANG();
                    obj.Soluong = item.SoLuong;
                    obj.MaDonHang = intOrderId;
                    obj.MaSanPham = item.MaSanPham;
                
                    listOrderDetail.Add(obj);

                }
                db.CHITIETDONTHANGs.AddRange(listOrderDetail);
                db.SaveChanges();
            }
            string content = System.IO.File.ReadAllText(Server.MapPath("~/content/template/neworder.html"));
            string shipName = (string)Session["Hoten"];
            string mobile = (string)Session["SDT"];
            string address = (string)Session["Diachi"];
            content = content.Replace("{{CustomerName}}", shipName);
            content = content.Replace("{{Phone}}", mobile);
            content = content.Replace("{{Address}}", address);
            string email = (string)Session["Email"];
            new MailHelper().SendMail(email, "Đơn hàng mới từ cửa hàng Cellphone1h", content);
            Session["GioHang"] = null;
            return View();
        }
        public ActionResult About()
        {
           

            return View();
        }

        public ActionResult Contact()
        {

            return View();
        }
    }
}