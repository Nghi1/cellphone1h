USE [cellphone1hr]
GO
/****** Object:  Database [GKLTW]    Script Date: 3/8/2022 9:56:22 PM ******/

/****** Object:  Table [dbo].[CHITIETDONTHANG]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHITIETDONTHANG](
	[MaDonHang] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_CHITIETDONTHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC,
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CHUDE]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHUDE](
	[MaCD] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_ChuDe] PRIMARY KEY CLUSTERED 
(
	[MaCD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DONDATHANG]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DONDATHANG](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[Dathanhtoan] [bit] NULL,
	[Tinhtranggiaohang] [bit] NULL,
	[Ngaydat] [datetime] NULL,
	[Ngaygiao] [datetime] NULL,
	[MaKH] [int] NULL,
 CONSTRAINT [PK_DONDATHANG] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](50) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NHACUNGCAP]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NHACUNGCAP](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NOT NULL,
	[Diachi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
 CONSTRAINT [PK_NhaXuatBan] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 3/8/2022 9:56:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[Giaban] [decimal](18, 0) NULL,
	[Khuyenmai] [int] NULL,
	[Mota] [nvarchar](max) NULL,
	[Anhbia] [nvarchar](max) NULL,
	[AnhbiaCT] [nvarchar](max) NULL,
	[Ngaycapnhat] [datetime] NULL,
	[Soluongton] [int] NULL,
	[MaCD] [int] NULL,
	[MaNCC] [int] NULL,
	[DaXoa] [bit] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1, 1, 2, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1, 2, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (2, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1002, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1003, 1, 2, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1004, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1004, 13, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1005, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1006, 7, 2, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1007, 7, 2, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1008, 7, 2, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1009, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1010, 21, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1011, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1012, 4, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1013, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1014, 7, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1015, 7, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1016, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1017, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1018, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1019, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (1020, 7, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (2002, 1, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (2003, 2, 1, NULL)
INSERT [dbo].[CHITIETDONTHANG] ([MaDonHang], [MaSanPham], [Soluong], [Dongia]) VALUES (2004, 1, 1, NULL)
SET IDENTITY_INSERT [dbo].[CHUDE] ON 

INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (1, N'Điện Thoại')
INSERT [dbo].[CHUDE] ([MaCD], [TenChuDe]) VALUES (2, N'Tai nghe')
SET IDENTITY_INSERT [dbo].[CHUDE] OFF
SET IDENTITY_INSERT [dbo].[DONDATHANG] ON 

INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1, 1, 0, CAST(N'2022-02-16 09:53:56.347' AS DateTime), CAST(N'2022-02-16 02:53:56.347' AS DateTime), 1)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2, 1, 0, CAST(N'2022-02-23 10:40:15.577' AS DateTime), CAST(N'2022-02-23 03:40:15.577' AS DateTime), 1)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1002, 1, 0, CAST(N'2022-03-01 08:56:01.383' AS DateTime), CAST(N'2022-03-01 01:56:01.383' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1003, 1, 0, CAST(N'2022-03-01 09:22:17.893' AS DateTime), CAST(N'2022-03-01 02:22:17.893' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1004, 1, 0, CAST(N'2022-03-01 09:30:37.080' AS DateTime), CAST(N'2022-03-01 02:30:37.080' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1005, 1, 0, CAST(N'2022-03-01 09:36:01.517' AS DateTime), CAST(N'2022-03-01 02:36:01.517' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1006, 1, 0, CAST(N'2022-03-01 09:40:15.217' AS DateTime), CAST(N'2022-03-01 02:40:15.217' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1007, 1, 0, CAST(N'2022-03-01 09:41:25.143' AS DateTime), CAST(N'2022-03-01 02:41:25.143' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1008, 1, 0, CAST(N'2022-03-01 09:42:37.187' AS DateTime), CAST(N'2022-03-01 02:42:37.187' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1009, 1, 0, CAST(N'2022-03-01 09:45:07.830' AS DateTime), CAST(N'2022-03-01 02:45:07.833' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1010, 1, 0, CAST(N'2022-03-01 09:47:56.597' AS DateTime), CAST(N'2022-03-01 02:47:56.597' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1011, 1, 0, CAST(N'2022-03-01 09:51:02.360' AS DateTime), CAST(N'2022-03-01 02:51:02.363' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1012, 1, 0, CAST(N'2022-03-01 09:54:28.380' AS DateTime), CAST(N'2022-03-01 02:54:28.380' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1013, 1, 0, CAST(N'2022-03-01 10:02:18.907' AS DateTime), CAST(N'2022-03-01 03:02:18.907' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1014, 1, 0, CAST(N'2022-03-01 10:08:30.417' AS DateTime), CAST(N'2022-03-01 03:08:30.420' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1015, 1, 0, CAST(N'2022-03-01 10:12:17.100' AS DateTime), CAST(N'2022-03-01 03:12:17.100' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1016, 1, 0, CAST(N'2022-03-01 10:28:07.183' AS DateTime), CAST(N'2022-03-01 03:28:07.183' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1017, 1, 0, CAST(N'2022-03-01 10:32:41.970' AS DateTime), CAST(N'2022-03-01 03:32:41.970' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1018, 1, 0, CAST(N'2022-03-01 10:46:56.060' AS DateTime), CAST(N'2022-03-01 03:46:56.060' AS DateTime), 1003)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1019, 1, 0, CAST(N'2022-03-01 10:59:02.503' AS DateTime), CAST(N'2022-03-01 03:59:02.503' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1020, 1, 0, CAST(N'2022-03-01 11:07:59.937' AS DateTime), CAST(N'2022-03-01 04:07:59.937' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (1021, 1, 0, CAST(N'2022-03-01 11:08:05.473' AS DateTime), CAST(N'2022-03-01 04:08:05.473' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2002, 1, 0, CAST(N'2022-03-08 19:48:20.070' AS DateTime), CAST(N'2022-03-08 12:48:20.070' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2003, 1, 0, CAST(N'2022-03-08 20:23:29.807' AS DateTime), CAST(N'2022-03-08 13:23:29.807' AS DateTime), 1002)
INSERT [dbo].[DONDATHANG] ([MaDonHang], [Dathanhtoan], [Tinhtranggiaohang], [Ngaydat], [Ngaygiao], [MaKH]) VALUES (2004, 1, 0, CAST(N'2022-03-08 20:28:47.520' AS DateTime), CAST(N'2022-03-08 13:28:47.520' AS DateTime), 1002)
SET IDENTITY_INSERT [dbo].[DONDATHANG] OFF
SET IDENTITY_INSERT [dbo].[KHACHHANG] ON 

INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1, N'Minh Thái', N'Tai', N'mk', NULL, NULL, N'Thainhok250701@gmail.com', NULL)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (2, N'nghi', N'admin', N'mk', NULL, N'Long Thành, Đồng Nai', N'nghivu201@gmail.com', N'0707183201')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1002, N'test', N'nghi', N'mk', NULL, N'Long Thành, Đồng Nai', N'yuyi2k1@gmail.com', N'0707183201')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1003, N'abc', N'abc', N'mk', NULL, N'Long Thành, Đồng Nai', N'nghivu201@gmail.com', N'0707183201')
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTen], [TaiKhoan], [MatKhau], [NgaySinh], [DiaChi], [Email], [DienThoai]) VALUES (1004, N'abc', N'abc', N'mk', NULL, N'Long Thành, Đồng Nai', N'nghivu201@gmail.com', N'0707183201')
SET IDENTITY_INSERT [dbo].[KHACHHANG] OFF
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] ON 

INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (1, N'Apple', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (2, N'Samsung', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (3, N'OPPO', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (4, N'ASUS', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (5, N'Acer', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (6, N'LG', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (7, N'Panasonic', NULL, NULL)
INSERT [dbo].[NHACUNGCAP] ([MaNCC], [TenNCC], [Diachi], [DienThoai]) VALUES (8, N'Toshiba', NULL, NULL)
SET IDENTITY_INSERT [dbo].[NHACUNGCAP] OFF
SET IDENTITY_INSERT [dbo].[SANPHAM] ON 

INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (1, N'iPhone 12 Pro Max', CAST(29890000 AS Decimal(18, 0)), 5, N'Thương hiệu: Apple
Đứng thứ 75 trong Top 1000 Điện thoại Smartphone bán chạy tháng này', N'https://salt.tikicdn.com/cache/200x200/ts/product/0f/4a/19/e2c1e692c76e5aeb99baa2dcef13cdcb.jpg.webp', NULL, NULL, 20, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (2, N'iPhone 13 PRO MAX', CAST(32490000 AS Decimal(18, 0)), 5, N' iPhone mạnh mẽ nhất, nhiều công nghệ nhất cũng được chính thức ra mắt. Chúng ta vẫn có một cụm camera mới với kích thước lớn hơn, tích hợp một loạt những nâng cấp nhằm cho ra những bức ảnh, video tốt hơn. Màn hình Pro Motion 120Hz cũng là điểm nhấn mới của iPhone dòng Pro năm nay bên cạnh thời lượng pin được kéo dài đáng kể.', N'https://www.viendongmobile.com/vnt_upload/product/09_2021/thumbs/250_crop_Blue_1.png', NULL, NULL, 15, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (3, N'iPhone 11 PRO MAX', CAST(15490000 AS Decimal(18, 0)), 5, N' iPhone mạnh mẽ nhất, nhiều công nghệ nhất cũng được chính thức ra mắt. Chúng ta vẫn có một cụm camera mới với kích thước lớn hơn, tích hợp một loạt những nâng cấp nhằm cho ra những bức ảnh, video tốt hơn. Màn hình Pro Motion 120Hz cũng là điểm nhấn mới của iPhone dòng Pro năm nay bên cạnh thời lượng pin được kéo dài đáng kể.', N'data:image/webp;base64,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', NULL, NULL, 10, 1, 1, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (4, N'OPPO A15', CAST(3150000 AS Decimal(18, 0)), 10, N'OPPO - thương hiệu luôn nằm trong top 5 hãng smartphone lớn nhất Việt Nam. Mới đây, hãng đã ra mắt sản phẩm OPPO A15 với thiết kế trẻ trung, mang tính thẩm mỹ cao. Đây là mẫu điện thoại thông minh có tới ba camera AI đẳng cấp mà giá thành lại vô cùng hợp lý.', N'https://cdn.tgdd.vn/Products/Images/42/229885/oppo-a15-white-1-200x200.jpg', NULL, NULL, 20, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (5, N'OPPO Reno6', CAST(12990000 AS Decimal(18, 0)), 10, N'Điện thoại OPPO Reno6 5G là sản phẩm của công nghệ thiết kế vô cùng hoàn hảo và ấn tượng. Các góc cạnh của máy được bo cong mềm mại, uyển chuyển mang đến sự mượt mà và tinh tế. Kích thước máy nhỏ gọn dễ dàng cầm nắm trong quá trình sử dụng', N'https://cdn.tgdd.vn/Products/Images/42/236186/oppo-reno6-5g-aurora-600x600.jpg', NULL, NULL, 10, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (6, N'OPPO A31', CAST(4290000 AS Decimal(18, 0)), 10, N'Lần đầu cầm Galaxy A31 trên tay, bạn sẽ lập tức bị thu hút bởi màn hình Infinity-U 6.4 inch của chiếc điện thoại này. Cách thiết kế đưa camera selfie vào không gian hiển thị giúp Samsung rút gọn viền bao quanh mặt trước và tạo hiệu ứng màn hình tràn cạnh cuốn hút.', N'https://cdn.tgdd.vn/Products/Images/42/217856/oppo-a31-den-new-600x600-200x200.jpg', NULL, NULL, 15, 1, 3, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (7, N'Samsung Galaxy A12', CAST(4290000 AS Decimal(18, 0)), 5, N'Samsung Galaxy A12 mang diện mạo thân thuộc của những chiếc Samsung tiền nhiệm. Với thiết kế nguyên khối, lớp vỏ máy được đúc bao quanh thân máy chắc chắn, bền chặt. Phần camera trước được đặt trong notch hình giọt nước giúp tăng diện tích cho màn hình.', N'https://cdn.tgdd.vn/Products/Images/42/228151/samsung-galaxy-a12-trang-600x600-1-200x200.jpg', NULL, NULL, 20, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (8, N'Samsung Galaxy A32', CAST(6690000 AS Decimal(18, 0)), 5, N'Samsung Galaxy A32 4G có mặt lưng nhựa cao cấp với thiết kế đơn giản, trang nhã, không chỉ giúp bảo vệ máy mà còn tăng độ bóng bẩy cho smartphone, mang đến vẻ ngoài đẳng cấp cho người sở hữu', N'https://cdn.tgdd.vn/Products/Images/42/234315/samsung-galaxy-a32-4g-thumb-tim-600x600-200x200.jpg', NULL, NULL, 10, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (9, N'Samsung Galaxy S20', CAST(13990000 AS Decimal(18, 0)), 5, N'Samsung Galaxy S20 Ultra 5G (12GB | 128GB) Mỹ Mới 100% được trang bị một màn hình kích thước 6.2 inch độ phân giải 2K sử dụng tấm nền Dynamic AMOLED 2X mới nhất từ nhà sản xuất Samsung.

Màn hình này cho khả năng tái tạo màu sắc đầy đủ và chính xác, đem đến cho bạn những trải nghiệm hình ảnh sống động, chân thực đồng thời giảm lượng ánh sáng xanh bảo vệ sức khỏe người dùng.', N'https://cdn.tgdd.vn/Products/Images/42/217937/samsung-galaxy-s20-ultra-600x600-1-600x600.jpg', NULL, NULL, 20, 1, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (10, N'Xiaomi Mi 11 Lite 5G
', CAST(10490000 AS Decimal(18, 0)), 10, N'Không gian hiển thị thoải mái, chuyển động mượt - Màn hình tràn viền 6,55 inch, tần số quét 90Hz, HDR10+
Hiệu năng mạnh mẽ, ổn định - Chip Snapdragon 780G trên 5nm, 128GB bộ nhớ và 8GB RAM
Camera chụp ảnh ấn tượng - Cụm 3 camera sau 64MP, chụp đêm rõ nét
Sạc nhanh, trải nghiệm suốt ngày dài - Dung lượng pin 4250 mAh và hỗ trợ sạc nhanh 33W', N'https://image.cellphones.com.vn/358x/media/catalog/product/x/i/xiaomi-mi-11-lite-5g-2_10.png', NULL, NULL, 5, 1, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (11, N'Xiaomi Redmi Note 10 5G', CAST(5290000 AS Decimal(18, 0)), 10, N'Thuộc phân khúc tầm trung nhưng Redmi Note 10 5G lại sở hữu cấu hình cũng như các tính năng không hề thua kém bất kỳ dòng smartphone cao cấp nào, là một mẫu smartphone có kết nối 5G trong một tầm giá hấp dẫn ở thời điểm hiện tại.', N'https://image.cellphones.com.vn/358x/media/catalog/product/r/e/redmi-note-10-5g.jpg', NULL, NULL, 15, 1, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (12, N'Xiaomi Redmi Note 10 Pro 8GB', CAST(7490000 AS Decimal(18, 0)), 15, N'Nâng tầm nhiếp ảnh - Cụm camera 108MP chất lượng cao, chụp ảnh chi tiết và sắc nét.
Tốc độ bức phá - Snapdragon 732G 8 nhân, chuẩn bộ nhớ tốc độ cao UFS 2.2
Màn hình vượt trội, phản hồi tức thì - AMOLED 6.67 inch, tần số quét 120Hz, độ sáng tối đa 1200 nit, hỗ trợ DCI- P3, HDR10
Không lo lắng về pin - Pin lớn 5020mAh, sạc nhanh Mi Turbo 33W ấn tượng.', N'https://image.cellphones.com.vn/358x/media/catalog/product/x/i/xiaomi-redmi-note-10-pro_2_.png', NULL, NULL, 10, 1, 4, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (13, N'Nokia 5.4
', CAST(4990000 AS Decimal(18, 0)), 10, N'Chơi game, duyệt web thả ga - Màn hình đục lỗi 6.39inch rộng lớn, độ phân giải HD+ sắc nét
Bắt trọn thế giới muôn màu - Camera 4 ống kính 48MP và camera trước 16MP
Thời lượng pin lên đến 2 ngày - Pin lớn 4000mAh, công nghệ pin thích ứng hỗ trợ bởi AI
Hiệu năng ổn định, vận hành mượt mà - Snapdragon 662 hỗ trợ AI cho xử lý các tác vụ', N'https://image.cellphones.com.vn/358x/media/catalog/product/n/o/nokia-5-4-xanh_1.png', NULL, NULL, 10, 1, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (14, N'Nokia 2.4', CAST(2690000 AS Decimal(18, 0)), 10, N'Hiển thị nội dung đã mắt- Màn hình lớn 6.5 inch, độ phân giải DH+ rõ nét
Chụp ảnh chi tiết - Camera kép thông minh, hỗ trợ chế độ chụp đêm
Sử dụng thả ga không lo hết pin - Pin 4500mAh, công nghệ pin thích ứng hỗ trợ bởi AI
Hiệu năng ổn định, giao diện mượt mà - Helio P22 vận hành mạnh mẽ, Android One cập nhật nhanh chóng, trải nghiệm nhẹ nhàng', N'https://image.cellphones.com.vn/358x/media/catalog/product/n/o/nokia-2.4_1_.jpg', NULL, NULL, 20, 1, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (15, N'Nokia C20', CAST(2290000 AS Decimal(18, 0)), 5, N'Thiết kế gọn nhẹ, trải nghiệm thoải mái - Trọng lượng 191g, nhựa cao cấp, dễ dàng cầm nắm
Hiển thị rõ ràng, sắc nét - Màn hình IPS LCD 6.52 inches cho góc nhìn rộng, hiển thị hình ảnh rõ nét
Hệ điều hành ổn định, mượt mà hơn - Hỗ trợ Android 11 (phiên bản Go Edition) nhiều tiện ích
Khắc họa chi tiết cuộc sống - Camera trước, sau 5MP với nhiều chế độ chụp thông minh', N'https://image.cellphones.com.vn/358x/media/catalog/product/n/o/nokia-c20-2.jpg', NULL, NULL, 5, 1, 5, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (16, N'Cáp chuyển đổi Apple Lightning to 3.5mm Audio MXK22ZA | Chính hãng Apple Việt Nam', CAST(1490000 AS Decimal(18, 0)), 5, N'Cáp chuyển đổi Lightning sang đầu cắm audio 3.5mm, có thể sử dụng với cổng vào/ra âm thanh 3.5mm
Tương thích với AirPods Max hoặc Beats Solo Pro
Hỗ trợ kết nối iPhone/iPad với các thiết bị trang bị cổng âm thanh 3.5mm', N'https://image.cellphones.com.vn/358x/media/catalog/product/c/a/cap-chuyen-doi-lightning-to-3-5mm-audio-mxk22zaa.jpg', NULL, NULL, 15, 2, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (17, N'Tai nghe không dây Beats Studio Buds | Chính hãng Apple Việt Nam', CAST(3990000 AS Decimal(18, 0)), 5, N'Chế độ chống ồn lọc bỏ tạp âm của môi trường xung quanh
Tính năng xuyên âm cho phép nghe âm thanh môi trường xung quanh
8 Giờ sử dụng với tai nghe,24 giờ khi đi kèm hộp sạc
Công nghệ Bluetooth Class 1 cho phạm vi kết nối rộng hơn
Micro kép thu âm giọng nói rõ ràng
Kháng nước IPX4 bảo vệ thiết bị', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/a/tai-nghe-khong-day-beats-studio-buds.jpg', NULL, NULL, 20, 2, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (18, N'Tai nghe kiểm âm AKG K92', CAST(1850000 AS Decimal(18, 0)), 5, N'', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/a/tai-nghe-kiem-am-akg-k92-1.jpg', NULL, NULL, 20, 2, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (21, N'Tai nghe chụp tai chống ồn Apple AirPods Max | Chính hãng Apple Việt Nam', CAST(13900000 AS Decimal(18, 0)), 10, N'Tính năng chống ồn chủ động tách biệt âm nhạc khỏi các âm thanh xung quanh
Chức năng xuyên âm giúp người dùng đàm thoại mà không cần giảm âm lượng
Nút vặn nhanh chóng chuyển chế độ hay chuyển bài hát,kích hoạt trợ lý ảo Siri
Phần tai nghe được bọc vải Fabric mềm mại tạo cảm giác đeo thoải mái
Chip Apple H1 cùng Bluetooth 5.0 cho kết nối ổn định,không gián đoạn', N'https://image.cellphones.com.vn/358x/media/catalog/product/a/p/apple-airpods-max-2_1_1.jpg', NULL, NULL, 15, 2, 2, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (22, N'Tai nghe kiểm âm AKG K361BT', CAST(3900000 AS Decimal(18, 0)), 5, N'', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/a/tai-nghe-kiem-am-akg-k361bt-2.jpg', NULL, NULL, 5, 2, 6, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (23, N'Loa kiểm âm JBL Nano K4', CAST(8800000 AS Decimal(18, 0)), 10, N'', N'https://image.cellphones.com.vn/358x/media/catalog/product/l/o/loa-kiem-am-jbl-nano-k4-1.jpg', NULL, NULL, 10, 2, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (24, N'Tai nghe chụp tai Sony WH-1000XM4', CAST(8490000 AS Decimal(18, 0)), 15, N'Bộ xử lý chống ồn QN1 loại bỏ tạp âm của môi trường xung quanh
Màng loa 40mm mang đến chất lượng âm thanh đỉnh cao
Pin khoẻ dùng đến 30 giờ liên tục
Tự động bật tắt nhạc khi người dùng đeo/tháo thiết bị
Thực hiện cuộc gọi rảnh tay với micro tích hợp trên tai nghe
Tăng giảm âm lượng hay nhận cuộc gọi chỉ với 1 thao tác chạm', N'https://image.cellphones.com.vn/358x/media/catalog/product/s/o/sony-wh-1000xm4.jpg', NULL, NULL, 20, 2, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (25, N'Tai nghe Bluetooth Galaxy Buds Pro Laneige', CAST(4990000 AS Decimal(18, 0)), 5, N'Công nghệ chống ồn chủ động ANC lọc mọi tạp âm của môi trường
Trải nghiệm âm thanh 3D với loa 2 chiều (loa trầm 11mm,loa bổng 6.5mm)
Thời lượng pin 5 giờ và 13 cùng hộp sạc(Bật chống ồn),8 giờ và 20 giờ cùng hộp sạc(tắt chống ồn)
3 micro giúp lọc tiếng ồn môi trường xung quanh cho chất lượng đàm thoại rõ ràng
Chế độ âm thanh xung quanh cho phép nghe thấy giọng nói của người xung quanh
Chuẩn kháng nước IPX7,không lo vào nước kể cả khi trời mưa', N'https://image.cellphones.com.vn/358x/media/catalog/product/b/u/buds-laneige_1.jpg', NULL, NULL, 10, 2, 7, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (26, N'Tai nghe Bluetooth Apple AirPods 2 VN/A', CAST(3990000 AS Decimal(18, 0)), 5, N'Chip H1 mới nhất cho thời gian phản hồi nhanh cùng thời lượng pin lên đến 5 giờ
Tích hợp 2 Micro giúp khử tiếng ồn của môi trường cho chất lượng âm thanh rõ ràng khi đàm thoại
Kích hoạt trợ lý ảo Siri bằng cách gọi "Hey Siri"
Nhận hoặc dừng cuộc gọi bằng 1 cú chạm với tính năng điều khiển cảm ứng
Hỗ trợ sạc nhanh:15 phút sạc pin cho thời gian sử dụng lên đến 3 giờ
', N'https://image.cellphones.com.vn/358x/media/catalog/product/a/i/airpods-2_6.jpg', NULL, NULL, 15, 2, 7, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (27, N'Tai nghe Bluetooth Apple AirPods Pro VN/A', CAST(7990000 AS Decimal(18, 0)), 5, N'Hỗ trợ tính năng chống ồn chủ động ANC
Tính năng xuyên âm giúp người dùng nghe được âm thanh của môi trường xung quanh
Thời gian sử dụng 4.5 giờ khi bật chế độ chống ồn,19 giờ khi đi kèm với hộp sạc
Sạc không dây chuẩn Qi,5 phút sạc cho 1 giờ sử dụng
Kích hoạt trợ lý ảo Siri bằng cách gọi ""Hey Siri""
Chống nước chuẩn IPX4 cho phép thoải mái luyện tập mà không lo thấm mồ hôi
Có khả năng định vị tai nghe bị thất lạc
', N'https://image.cellphones.com.vn/358x/media/catalog/product/a/i/airpods-pro_5.jpg', NULL, NULL, 20, 2, 7, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (28, N'Tai nghe không dây Beats Studio Buds | Chính hãng Apple Việt Nam
', CAST(9500000 AS Decimal(18, 0)), 5, N'Chế độ chống ồn lọc bỏ tạp âm của môi trường xung quanh
Tính năng xuyên âm cho phép nghe âm thanh môi trường xung quanh
8 Giờ sử dụng với tai nghe,24 giờ khi đi kèm hộp sạc
Công nghệ Bluetooth Class 1 cho phạm vi kết nối rộng hơn
Micro kép thu âm giọng nói rõ ràng
Kháng nước IPX4 bảo vệ thiết bị', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/a/tai-nghe-khong-day-beats-studio-buds.jpg', NULL, NULL, 20, 2, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (29, N'Tai nghe Bluetooth Samsung Galaxy Buds Live', CAST(4490000 AS Decimal(18, 0)), 10, N'Chống ồn chủ động ANC khử tiếng ồn nhưng không lấn át các âm thanh quan trọng
Màn loa 12mm tinh chỉnh bởi AKG cho chất âm sáng rõ
3 mic lọc tiếng ồn cho chất lượng đàm thoại trong trẻo
Tích hợp Softify,chạm và giữ trong một giây tất cả danh sách nhạc sẽ được đồng bộ
6 tiếng nghe nhạc,đi kèm hộp sạc cho thời gian sử dụng lên đến 21 tiếng
Hỗ trợ sạc không dây,có thể sử dụng điện thoại để sạc cho tai nghe', N'https://image.cellphones.com.vn/358x/media/catalog/product/b/u/buds-live_1.jpg', NULL, NULL, 10, 2, 2, 0)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (30, N'Tai nghe không dây Samsung Galaxy Buds 2', CAST(2990000 AS Decimal(18, 0)), 5, N'Loa 2 chiều : chất lượng âm thanh chân thật
Chế độ chống ồn chủ động chặn tiếng ồn môi trường
Chất lượng đàm thoại rõ ràng với 3 micro
Tích hợp chế độ chơi game giảm độ trễ xuống mức thấp nhất
Dùng trong 5 giờ với 1 (bật chống ồn) , 7.5 giờ (tắt chống ồn)', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/e/template_tai_nghe_galaxy_buds_2.jpg', NULL, NULL, 15, 2, 7, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (32, N'Tai nghe không dây JBL Live Pro+', CAST(2990000 AS Decimal(18, 0)), 5, N'Tính năng chống ồn chủ động,xuyên âm tối ưu hoá trải nghiệm âm nhạc
6 Micro đàm thoại,triệt tiêu tiếng ồn xung quanh
Kết nối ngay khi mở hộp,có thể sử dụng độc lập 1 bên tai
Điều khiển tiện lợi bằng giọng nói
Thiết kế kháng nước,mồ hôi cùng cảm giác đeo thoải mái', N'https://image.cellphones.com.vn/358x/media/catalog/product/t/a/tai-nghe-khong-day-jbl-live-pro-plus-4_1_1.jpg', NULL, NULL, 15, 2, 8, 1)
INSERT [dbo].[SANPHAM] ([MaSanPham], [TenSanPham], [Giaban], [Khuyenmai], [Mota], [Anhbia], [AnhbiaCT], [Ngaycapnhat], [Soluongton], [MaCD], [MaNCC], [DaXoa]) VALUES (33, N'Tai Nghe Không Dây JBL Tune 120 TWS', CAST(2390000 AS Decimal(18, 0)), 5, N'Âm bass mạnh mẽ với công nghệ JBL Pure Bass Sound
1 lần sạc cho 4 giờ sử dụng,12 giờ đi kèm với hộp sạc
Tai phải có khả năng hoạt động độc lập
Chuẩn bluetooth 5.0 cho khả năng kết nối ổn định trong 10m
Thao tác chuyển bài,nhận cuộc gọi hay kích hoạt trợ lý ảo chỉ với 1 phím bấm', N'https://image.cellphones.com.vn/358x/media/catalog/product/j/b/jbl-tune-120_1.jpg', NULL, NULL, 15, 2, 8, 1)
SET IDENTITY_INSERT [dbo].[SANPHAM] OFF
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG] FOREIGN KEY([MaDonHang])
REFERENCES [dbo].[DONDATHANG] ([MaDonHang])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_DONDATHANG]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [FK_CHITIETDONTHANG_SACH] FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[SANPHAM] ([MaSanPham])
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [FK_CHITIETDONTHANG_SACH]
GO
ALTER TABLE [dbo].[DONDATHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONDATHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONDATHANG] CHECK CONSTRAINT [FK_DONDATHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_Chude] FOREIGN KEY([MaCD])
REFERENCES [dbo].[CHUDE] ([MaCD])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_Chude]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [FK_NhaXB] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NHACUNGCAP] ([MaNCC])
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [FK_NhaXB]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61] CHECK  (([Dongia]>=(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Dongi__440B1D61]
GO
ALTER TABLE [dbo].[CHITIETDONTHANG]  WITH CHECK ADD  CONSTRAINT [CK__CHITIETDO__Soluo__4316F928] CHECK  (([Soluong]>(0)))
GO
ALTER TABLE [dbo].[CHITIETDONTHANG] CHECK CONSTRAINT [CK__CHITIETDO__Soluo__4316F928]
GO
ALTER TABLE [dbo].[SANPHAM]  WITH CHECK ADD  CONSTRAINT [CK__SANPHAM__Giaban__20C1E124] CHECK  (([Giaban]>=(0)))
GO
ALTER TABLE [dbo].[SANPHAM] CHECK CONSTRAINT [CK__SANPHAM__Giaban__20C1E124]
GO
USE [master]
GO
ALTER DATABASE [cellphone1hr] SET  READ_WRITE 
GO
