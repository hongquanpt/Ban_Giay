USE [thuctapnhom]
GO
/****** Object:  Table [dbo].[AnhSP]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AnhSP](
	[Ma_Sanpham] [varchar](20) NOT NULL,
	[Link1] [varchar](50) NULL,
	[Link2] [varchar](50) NULL,
	[Link3] [varchar](50) NULL,
 CONSTRAINT [PK_AnhSP] PRIMARY KEY CLUSTERED 
(
	[Ma_Sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Chitiet_Hoadon]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitiet_Hoadon](
	[Ma_Hoadon] [varchar](100) NOT NULL,
	[Ma_Sanpham] [varchar](20) NOT NULL,
	[size] [int] NOT NULL,
	[Trangthai] [int] NULL,
	[Soluong] [int] NULL,
	[Giaban] [int] NULL,
 CONSTRAINT [PK_Chitiet_Hoadon] PRIMARY KEY CLUSTERED 
(
	[Ma_Hoadon] ASC,
	[Ma_Sanpham] ASC,
	[size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChucVu]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChucVu](
	[Ma_Chucvu] [int] NOT NULL,
	[TenChucVu] [nvarchar](50) NULL,
 CONSTRAINT [PK_ChucVu] PRIMARY KEY CLUSTERED 
(
	[Ma_Chucvu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhgiaSP]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhgiaSP](
	[Ma_Danhgia] [int] IDENTITY(1,1) NOT NULL,
	[Ma_Sanpham] [varchar](20) NULL,
	[Danhgia] [ntext] NULL,
	[Sao] [int] NULL,
	[Ma_Nguoidung] [int] NULL,
 CONSTRAINT [PK_DanhgiaSP] PRIMARY KEY CLUSTERED 
(
	[Ma_Danhgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Discount]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Discount](
	[Ma_Giamgia] [varchar](20) NOT NULL,
	[Ngaygiamgia] [date] NULL,
	[Ngayhethan] [date] NULL,
	[Tilegiamgia] [float] NULL,
	[Ma_Dieukien] [varchar](20) NULL,
	[DieuKien] [nvarchar](100) NULL,
 CONSTRAINT [PK_Discount] PRIMARY KEY CLUSTERED 
(
	[Ma_Giamgia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Giohang]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Giohang](
	[Ma_Giohang] [varchar](20) NOT NULL,
	[Ma_Khachhang] [int] NULL,
	[Ma_sanpham] [varchar](20) NULL,
	[Soluong] [int] NULL,
	[Giaban] [int] NULL,
 CONSTRAINT [PK_Giohang] PRIMARY KEY CLUSTERED 
(
	[Ma_Giohang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hoadon]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hoadon](
	[Ma_Hoadon] [varchar](100) NOT NULL,
	[Ma_Khachhang] [int] NULL,
	[Ngaydathang] [datetime] NULL,
	[PhuongthucTT] [nvarchar](10) NULL,
	[TrangthaiTT] [nvarchar](50) NULL,
	[Diachigiaohang] [nvarchar](50) NULL,
	[TrangthaiHD] [int] NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_Hoadon] PRIMARY KEY CLUSTERED 
(
	[Ma_Hoadon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LichSuMuaHang]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LichSuMuaHang](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Ma_Nguoidung] [int] NOT NULL,
	[MaHoadon] [varchar](100) NOT NULL,
	[Ngaydathang] [datetime] NULL,
	[MaSanpham] [varchar](20) NOT NULL,
	[Ten_Sanpham] [nvarchar](50) NULL,
	[Link1] [varchar](50) NULL,
	[Link2] [varchar](50) NULL,
	[Link3] [varchar](50) NULL,
	[size] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Giagoc] [int] NULL,
	[MaGiamgia] [varchar](20) NULL,
	[ThanhTien] [int] NULL,
 CONSTRAINT [PK_LichSuMuaHang] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiGiay]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiGiay](
	[Ma_Loai] [varchar](10) NOT NULL,
	[Ten_loai] [nvarchar](50) NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_LoaiGiay] PRIMARY KEY CLUSTERED 
(
	[Ma_Loai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MotaSP]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MotaSP](
	[Ma_SanPham] [varchar](20) NULL,
	[Mota] [ntext] NULL,
	[Thongso] [ntext] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[Ma_Nguoidung] [int] IDENTITY(1,1) NOT NULL,
	[Ten_Nguoidung] [nvarchar](40) NOT NULL,
	[Gioitinh] [nvarchar](10) NULL,
	[Sodienthoai_nv] [varchar](10) NULL,
	[Diachi_nv] [nvarchar](40) NULL,
	[Ma_Chucvu] [int] NULL,
	[Username] [varchar](20) NULL,
	[Password] [varchar](10) NULL,
 CONSTRAINT [PK_Nhanvien] PRIMARY KEY CLUSTERED 
(
	[Ma_Nguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhasanxuat]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhasanxuat](
	[Ma_Nhasanxuat] [varchar](10) NOT NULL,
	[Ten_Nhasanxuat] [nvarchar](50) NULL,
	[Sodienthoai_nsx] [nchar](10) NULL,
	[Diachi_nsx] [nchar](10) NULL,
	[Ghichu] [text] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Nhasanxuat] PRIMARY KEY CLUSTERED 
(
	[Ma_Nhasanxuat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Ma_Sanpham] [varchar](20) NOT NULL,
	[Ten_Sanpham] [nvarchar](50) NULL,
	[Mausac] [nvarchar](50) NULL,
	[Giagoc] [int] NULL,
	[Ma_Nhasanxuat] [varchar](10) NULL,
	[Ma_Loai] [varchar](10) NULL,
	[Ma_Giamgia] [varchar](20) NULL,
	[NhomGiay] [int] NULL,
	[TrangThai] [int] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Ma_Sanpham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham_Size]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham_Size](
	[Ma_Sanpham] [varchar](20) NOT NULL,
	[Ma_Size] [varchar](3) NOT NULL,
	[SoLuong] [int] NULL,
 CONSTRAINT [PK_SanPham_Size] PRIMARY KEY CLUSTERED 
(
	[Ma_Sanpham] ASC,
	[Ma_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Size]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Size](
	[Ma_Size] [varchar](3) NOT NULL,
	[_Size] [int] NULL,
 CONSTRAINT [PK_Size] PRIMARY KEY CLUSTERED 
(
	[Ma_Size] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThungRac]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThungRac](
	[Ma_Sanpham] [varchar](20) NOT NULL,
	[Ten_Sanpham] [nvarchar](50) NULL,
	[Mausac] [nvarchar](50) NULL,
	[Giagoc] [int] NULL,
	[Ma_Nhasanxuat] [varchar](10) NULL,
	[Ma_Loai] [varchar](10) NULL,
	[Ma_Giamgia] [varchar](10) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[YeuCau]    Script Date: 12/03/2024 11:17:51 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[YeuCau](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Ma_Hoadon] [varchar](100) NULL,
	[TrangThaiYeuCau] [int] NULL,
	[LyDo] [nvarchar](100) NULL,
	[TrangThaiXuLy] [int] NULL,
	[ThoiGian] [datetime] NULL,
 CONSTRAINT [PK_YeuCau] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD - P6 - Bl', N'61.1.jpg', N'61.2.jpg', N'61.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-MB-WH', N'107.1.jpg', N'107.2.jpg', N'107.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-MG-RE', N'62.1.jpg', N'62.2.jpg', N'62.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-PA-WH', N'2.1.jpeg', N'2.2.jpeg', N'2.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-PP-BL', N'1.1.jpeg', N'1.2.jpeg', N'1.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-SB-WH', N'91.1.jpeg', N'91.2.jpeg', N'91.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-SP-WH', N'32.1.jpeg', N'32.2.jpeg', N'32.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-SS-GR', N'33.1.jpeg', N'33.2.jpeg', N'33.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-UL-GR', N'34.1.jpeg', N'34.2.jpeg', N'34.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'ADD-UR-WH', N'63.1.jpg', N'63.2.jpg', N'63.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT - F9 - pi', N'3.1.jpg', N'3.2.jpg', N'3.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT - HX - Bl', N'30.1.jpeg', N'30.2.jpeg', N'30.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-BF-WH', N'92.1.jpeg', N'92.2.jpeg', N'92.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-BS-WH', N'93.1.jpeg', N'93.2.jpeg', N'93.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-CG-WH', N'31.1.jpeg', N'31.2.jpeg', N'31.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-FB-OR', N'4.1.jpg', N'4.2.jpg', N'4.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-FD-YE', N'5.1.jpg', N'5.2.jpg', N'5.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-RM-BL', N'64.1.jpg', N'64.2.jpg', N'64.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-RP-GR', N'94.1.jpeg', N'94.2.jpeg', N'94.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-SD-BL', N'35.1.jpeg', N'35.2.jpeg', N'35.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-SP-BL', N'36.1.jpeg', N'36.2.jpeg', N'36.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'BIT-TS-BL', N'95.1.jpeg', N'95.2.jpeg', N'95.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-C70-BL', N'37.1.jpeg', N'37.2.jpeg', N'37.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-CC-BL', N'38.1.jpeg', N'38.2.jpeg', N'38.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-CRT-YL', N'39.1.jpeg', N'39.2.jpeg', N'39.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-CTA-BL', N'40.1.jpeg', N'40.2.jpeg', N'40.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-CTA-WH', N'41.1.jpeg', N'41.2.jpeg', N'41.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-CT-BL', N'42.1.jpeg', N'42.2.jpeg', N'42.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-NBA-BL', N'43.1.jpeg', N'43.2.jpeg', N'43.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-NO-RE', N'48.1.jpg', N'48.2.jpg', N'48.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-TDM-BL', N'96.1.jpeg', N'96.2.jpeg', N'96.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-TDM-PI', N'97.1.jpeg', N'97.2.jpeg', N'97.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'CON-XG-GR', N'98.1.jpg', N'98.2.jpg', N'98.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-AE-WH', N'6.1.jpg', N'6.2.jpg', N'6.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-LM-BL', N'99.1.jpg', N'99.2.jpg', N'99.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-LZ-BL', N'100.1.jpg', N'100.2.jpg', N'100.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-MA-BL', N'7.1.jpg', N'7.2.jpg', N'7.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-MN-WH', N'8.1.jpg', N'8.2.jpg', N'8.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-MS-WH', N'9.1.jpg', N'9.2.jpg', N'9.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-NS-WH', N'10.1.jpg', N'10.2.jpg', N'10.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-WD-WH', N'101.1.jpg', N'101.2.jpg', N'101.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-WF-WH', N'102.1.jpg', N'102.2.jpg', N'102.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'MIZ-WL-WH', N'103.1.jpg', N'103.2.jpg', N'103.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK - M1 - Ye', N'11.1.jpg', N'11.2.jpg', N'11.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK - M2 - Ye', N'12.1.jpg', N'12.2.jpg', N'12.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK - MN - Wh', N'13.1.jpg', N'13.2.jpg', N'13.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-AF-BL', N'44.1.jpg', N'44.2.jpg', N'44.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-AJ-WH', N'104.1.jpg', N'104.2.jpg', N'104.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-AW-BL', N'65.1.jpg', N'65.2.jpg', N'65.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-BM-BL', N'45.1.jpg', N'45.2.jpg', N'45.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-DF-BL', N'66.1.jpg', N'66.2.jpg', N'66.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-FT-OR', N'14.1.jpg', N'14.2.jpg', N'14.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-JB-WH', N'105.1.jpg', N'105.2.jpg', N'105.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-JN-YL', N'46.1.jpeg', N'46.2.jpeg', N'46.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-JO-RE', N'106.1.jpg', N'106.2.jpg', N'106.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-JS-GR', N'47.1.jpeg', N'47.2.jpeg', N'47.3.jpeg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-MA-BL', N'15.1.jpg', N'15.2.jpg', N'15.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-MV-PI', N'16.1.jpg', N'16.2.jpg', N'16.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-RX-WH', N'67.1.jpg', N'67.2.jpg', N'67.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-TL-BL', N'17.1.jpg', N'17.2.jpg', N'17.3.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-ZF-GR', N'107.1.jpg', N'107.2.jpg', N'108.2.jpg')
INSERT [dbo].[AnhSP] ([Ma_Sanpham], [Link1], [Link2], [Link3]) VALUES (N'NIK-ZF-WH', N'68.1.jpg', N'68.2.jpg', N'68.3.jpg')
GO
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560407/12/202311/59/11', N'ADD-SB-WH', 39, 1, 1, 1300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560407/12/202311/59/11', N'ADD-SP-WH', 39, 1, 3, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202303/10/59', N'ADD-PP-BL', 41, 1, 1, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202303/10/59', N'ADD-SS-GR', 40, 1, 1, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202303/30/53', N'ADD-MG-RE', 41, NULL, 3, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202303/37/17', N'MIZ-NS-WH', 41, 1, 1, 1300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202303/37/17', N'MIZ-WD-WH', 40, 1, 1, 2200000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202309/33/21', N'ADD-SB-WH', 39, 1, 1, 910000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202309/37/12', N'ADD-SB-WH', 39, 1, 1, 910000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'560527/12/202310/20/14', N'ADD-SB-WH', 39, 1, 1, 910000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'561301/01/202407/52/35', N'ADD-MG-RE', 43, 0, 1, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'561301/01/202407/52/35', N'ADD-PA-WH', 41, 0, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'5622-a1', N'ADD-SB-WH', 40, 1, 4, 1000000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'5622-a1', N'ADD-SB-WH', 41, 1, 2, 1000000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562524/12/202311/56/32', N'ADD-SB-WH', 40, 1, 1, 1300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562524/12/202311/56/32', N'ADD-SS-GR', 39, 1, 1, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562524/12/202311/56/32', N'ADD-UL-GR', 42, 1, 1, 5200000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562524/12/202311/56/32', N'BIT-FB-OR', 42, 1, 1, 800000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562524/12/202311/56/32', N'BIT-TS-BL', 41, 1, 1, 900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202307/45/11', N'ADD-MB-WH', 41, 1, 1, 1900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202307/45/11', N'ADD-MG-RE', 41, 1, 1, 2500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202307/45/11', N'ADD-PP-BL', 40, 1, 1, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202307/45/11', N'BIT - HX - Bl', 40, 1, 1, 2500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202312/03/54', N'ADD-MB-WH', 40, 1, 1, 1900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202312/03/54', N'ADD-MG-RE', 39, 1, 1, 2500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562525/12/202312/27/58', N'ADD-UL-GR', 39, 1, 1, 5200000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562526/12/202308/25/10', N'ADD-MG-RE', 43, 1, 1, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562801/01/202411/18/33', N'ADD - P6 - Bl', 39, 1, 1, 250000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'562801/01/202411/18/33', N'ADD-MB-WH', 43, 1, 1, 152000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'563626/12/202310/17/49', N'ADD-MB-WH', 40, 1, 1, 1520000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'563626/12/202310/17/49', N'ADD-MG-RE', 43, NULL, 1, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'564022/12/202308/21/48', N'ADD-SS-GR', 39, 1, 1, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'564422/12/202311/36/19', N'ADD-SP-WH', 39, 1, 1, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'564622/12/202311/55/09', N'ADD-PA-WH', 39, 1, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565123/12/202310/26/04', N'ADD-PP-BL', 40, NULL, 9, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565223/12/202311/14/28', N'ADD-MG-RE', 39, 1, 1, 2500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565223/12/202311/14/28', N'ADD-PA-WH', 39, 1, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565223/12/202311/14/28', N'ADD-PP-BL', 40, 1, 1, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565324/12/202307/16/16', N'ADD-MG-RE', 41, 1, 1, 2500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565424/12/202307/17/07', N'ADD-PA-WH', 40, 1, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565524/12/202307/18/02', N'ADD-MB-WH', 40, 1, 1, 1900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565524/12/202307/18/02', N'ADD-PA-WH', 39, 1, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565624/12/202307/42/05', N'ADD-MB-WH', 40, 1, 1, 1900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'565724/12/202309/18/25', N'ADD-PP-BL', 40, 1, 1, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566427/12/202309/16/43', N'ADD-MB-WH', 43, 1, 2, 1520000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566427/12/202309/16/43', N'BIT-BS-WH', 41, 1, 1, 750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566427/12/202309/16/43', N'BIT-TS-BL', 40, 1, 1, 900000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566527/12/202309/17/14', N'ADD-UL-GR', 40, 1, 3, 5200000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566527/12/202309/17/14', N'ADD-UR-WH', 41, 1, 1, 5500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566827/12/202304/36/17', N'ADD-MG-RE', 41, NULL, 5, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'566927/12/202304/40/56', N'ADD-PP-BL', 40, 1, 6, 2450000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567027/12/202311/22/00', N'ADD-MB-WH', 40, 1, 2, 1520000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567027/12/202311/22/00', N'ADD-MG-RE', 41, 1, 5, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567029/12/202307/30/43', N'ADD-MG-RE', 43, 1, 1, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567429/12/202307/29/43', N'ADD-PA-WH', 41, 0, 1, 1680000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567529/12/202307/31/17', N'ADD-SS-GR', 39, 0, 1, 3300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567529/12/202307/31/17', N'ADD-UR-WH', 39, 1, 1, 5500000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567629/12/202307/33/52', N'ADD-UL-GR', 39, 0, 1, 3640000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567701/01/202408/02/01', N'ADD-MG-RE', 43, 0, 1, 1750000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567701/01/202408/02/01', N'ADD-PA-WH', 41, 0, 1, 2400000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202407/46/27', N'NIK-RX-WH', 41, 0, 1, 300000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202407/46/27', N'NIK-TL-BL', 40, 0, 1, 460000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202407/55/14', N'ADD-MG-RE', 43, 0, 1, 175000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202409/09/16', N'ADD-MB-WH', 41, 1, 1, 152000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202409/09/16', N'ADD-MG-RE', 43, 1, 1, 175000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567702/01/202410/36/33', N'ADD - P6 - Bl', 40, 0, 1, 200000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567703/01/202409/06/46', N'ADD-MB-WH', 40, 0, 2, 152000)
INSERT [dbo].[Chitiet_Hoadon] ([Ma_Hoadon], [Ma_Sanpham], [size], [Trangthai], [Soluong], [Giaban]) VALUES (N'567703/01/202409/22/47', N'ADD-PA-WH', 40, 0, 3, 240000)
GO
INSERT [dbo].[ChucVu] ([Ma_Chucvu], [TenChucVu]) VALUES (1, N'Nhân viên')
INSERT [dbo].[ChucVu] ([Ma_Chucvu], [TenChucVu]) VALUES (2, N'Khách hàng')
GO
SET IDENTITY_INSERT [dbo].[DanhgiaSP] ON 

INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (1, N'ADD-PP-BL', N'Sản phẩm tốt', 3, 5604)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (2, N'MIZ-LZ-BL', N'vl lun', 5, 5605)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (3, N'MIZ-LZ-BL', N'đẹp', 4, 5605)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (4, N'ADD-MG-RE', N'đẹp', 5, 5628)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (5, N'ADD-MG-RE', N'tuyệt', 5, 5628)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (6, N'ADD-PP-BL', N'tuyệt', 5, 5605)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (7, N'ADD-SS-GR', N'đẹp', 5, 5605)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (8, N'ADD - P6 - Bl', N'31/12/2023
Tốt', 3, 5677)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (9, N'ADD - P6 - Bl', N'Tốt', 5, 5628)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (10, N'ADD-MB-WH', N'Tốt', 5, 5628)
INSERT [dbo].[DanhgiaSP] ([Ma_Danhgia], [Ma_Sanpham], [Danhgia], [Sao], [Ma_Nguoidung]) VALUES (11, N'ADD-MB-WH', N'tốt', 5, 5677)
SET IDENTITY_INSERT [dbo].[DanhgiaSP] OFF
GO
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra0000', CAST(N'2000-01-01' AS Date), CAST(N'9999-01-01' AS Date), 0, NULL, NULL)
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra1234', CAST(N'2023-11-20' AS Date), CAST(N'2024-01-21' AS Date), 0.2, N'5', N'Tất cả sản phẩm giảm 20%')
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra2489', CAST(N'2023-04-11' AS Date), CAST(N'2023-12-30' AS Date), 0.3, N'1', N'Đơn giá sản phẩm từ 2.000.000 trở lên')
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra5567', CAST(N'2023-10-28' AS Date), CAST(N'2023-12-31' AS Date), 0.5, N'3', N'Big sale 50% các sản phẩm Nike từ 3.000.000 trở lên')
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra8512', CAST(N'2023-12-26' AS Date), CAST(N'2024-01-20' AS Date), 0.1, N'6', N'Mizuno sale 10%')
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra8888', CAST(N'2023-11-11' AS Date), CAST(N'2024-01-20' AS Date), 0.3, N'4', N'Big sale sản phẩm nhà Nike và Adidas 30%')
INSERT [dbo].[Discount] ([Ma_Giamgia], [Ngaygiamgia], [Ngayhethan], [Tilegiamgia], [Ma_Dieukien], [DieuKien]) VALUES (N'extra9987', CAST(N'2023-10-24' AS Date), CAST(N'2024-01-26' AS Date), 0.3, N'2', N'Adidas sale 30% các sản phẩm từ 1.000.000')
GO
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560407/12/202311/59/11', 5604, CAST(N'2023-10-07T00:00:00.000' AS DateTime), N'tienmat', N'Đã thanh toán', N'Tân Cảng, Đà Nẵng', 2, 9230000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202303/10/59', 5605, CAST(N'2023-11-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dá', 2, 5760000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202303/30/53', 5605, CAST(N'2023-11-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Èw', 2, 5260000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202303/37/17', 5605, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Eqw', 2, 3290000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202309/33/21', 5605, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dqw', 2, 920000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202309/37/12', 5605, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dá', 2, 920000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'560527/12/202310/20/14', 5605, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Das', 2, 1310000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'561301/01/202407/52/35', 5613, CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Hà Nội', 0, 41600000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'5622-a1', 5622, CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 7810000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562524/12/202311/56/32', 5625, CAST(N'2023-02-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 11510000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562525/12/202307/45/11', 5625, CAST(N'2023-09-25T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dá', 2, 9360000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562525/12/202312/03/54', 5625, CAST(N'2023-06-25T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 3840000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562525/12/202312/27/58', 5625, CAST(N'2023-08-25T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dá', 2, 5210000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562526/12/202308/25/10', 5625, CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'As', 2, 1760000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'562801/01/202411/18/33', 5628, CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', NULL, 2, 412000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'563626/12/202310/17/49', 5636, CAST(N'2023-11-26T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Fa', 2, 3280000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'564022/12/202308/21/48', 5640, CAST(N'2023-02-22T00:00:00.000' AS DateTime), N'tienmat', N'Đã thanh toán', N'236 Hqv, Cầu Giấy', 2, 3310000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'564422/12/202311/36/19', 5644, CAST(N'2023-01-22T00:00:00.000' AS DateTime), N'tienmat', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 2650000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'564622/12/202311/55/09', 5646, CAST(N'2023-03-22T00:00:00.000' AS DateTime), N'tienmat', N'Đã thanh toán', N'Thanh Chương, Nghệ An', 2, 1690000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565123/12/202310/26/04', 5651, CAST(N'2023-05-23T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 22060000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565223/12/202311/14/28', 5652, CAST(N'2023-04-23T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Minh Tân, Yên Bái, Yên Bái', 2, 5905000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565324/12/202307/16/16', 5653, CAST(N'2023-05-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Hh', 2, 2510000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565424/12/202307/17/07', 5654, CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Nn', 2, 2410000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565524/12/202307/18/02', 5655, CAST(N'2023-01-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Fsdf', 2, 3020000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565624/12/202307/42/05', 5656, CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Đà Nẵng', 2, 1910000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'565724/12/202309/18/25', 5657, CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Da Nang', 2, 1715000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'566427/12/202309/16/43', 5664, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Dá', 2, 4700000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'566527/12/202309/17/14', 5665, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Dá', 1, 16430000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'566627/12/202309/17/38', 5666, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Dá', 0, 810000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'566827/12/202304/36/17', 5668, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Fs', 2, 8760000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'566927/12/202304/40/56', 5669, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Dá', 1, 14710000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567027/12/202311/22/00', 5670, CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Das', 1, 11800000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567029/12/202307/30/43', 5670, CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Giao Yến, Nam Định', 0, 1760000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567429/12/202307/29/43', 5674, CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Đô Lương, Nghệ An', 0, 1690000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567529/12/202307/31/17', 5675, CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Bảo Yên, Lào Cai', 0, 8810000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567629/12/202307/33/52', 5676, CAST(N'2023-12-29T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Tô Tâm, Khánh Hòa', 0, 3650000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567701/01/202408/02/01', 5677, CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Long An', 0, 41600000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567702/01/202407/46/27', 5677, CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Long An', 0, 770000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567702/01/202407/55/14', 5677, CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', NULL, 0, 1850000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567702/01/202409/09/16', 5677, CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'tiền mặt', N'Đã thanh toán', N'Hà Nội', 2, 337000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567702/01/202410/36/33', 5677, CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', NULL, 0, 2100000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567703/01/202409/06/46', 5677, CAST(N'2024-01-03T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Hà Nội', 0, 3140000)
INSERT [dbo].[Hoadon] ([Ma_Hoadon], [Ma_Khachhang], [Ngaydathang], [PhuongthucTT], [TrangthaiTT], [Diachigiaohang], [TrangthaiHD], [ThanhTien]) VALUES (N'567703/01/202409/22/47', 5677, CAST(N'2024-01-03T00:00:00.000' AS DateTime), N'tiền mặt', N'Chưa thanh toán', N'Hà Nội', 0, 730000)
GO
SET IDENTITY_INSERT [dbo].[LichSuMuaHang] ON 

INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (38, 5613, N'5613-a6', CAST(N'2023-10-19T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 1, 2450000, N'extra9987', 1715000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (39, 5613, N'5613-a6', CAST(N'2023-10-19T00:00:00.000' AS DateTime), N'BIT-RP-GR', N'Bitis Running Plus', N'BitJG20.jpg', N'BitJG21.jpg', N'BitJG22.jpg', 42, 1, 1900000, NULL, 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (40, 5602, N'5602-a8', CAST(N'2023-10-19T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 41, 3, 2450000, N'extra9987', 5145000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (41, 5603, N'5603-a2', CAST(N'2023-10-31T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 5, 1900000, NULL, 9500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (42, 5602, N'5602-a1', CAST(N'2023-10-31T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, NULL, 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (43, 5602, N'5602-a1', CAST(N'2023-10-31T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 2, 2500000, N'extra1234', 4000000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (44, 5602, N'5602-a1', CAST(N'2023-10-31T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 41, 2, 2450000, N'extra9987', 3430000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (45, 5604, N'5604-a3', CAST(N'2023-10-26T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 39, 1, 2450000, N'extra9987', 1715000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (46, 5604, N'5604-a3', CAST(N'2023-10-26T00:00:00.000' AS DateTime), N'NIK-AW-BL', N'Nike Air Winflo', N'NikJG20.jpg', N'NikJG21.jpg', N'NikJG22.jpg', 41, 2, 4500000, NULL, 9000000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (47, 5609, N'5609-b6', CAST(N'2023-10-20T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 1, 2450000, N'extra9987', 1715000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (48, 5604, N'5604-a6', CAST(N'2023-10-17T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, NULL, 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (49, 5604, N'5604-a6', CAST(N'2023-10-17T00:00:00.000' AS DateTime), N'BIT-BF-WH', N'Bitis Boost Focus ', N'BitVB10.jpg', N'BitVB11.jpg', N'BitVB12.jpg', 39, 3, 1800000, NULL, 5400000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (50, 5628, N'5628-a2', CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 42, 2, 2450000, N'extra9987', 3430000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (51, 5628, N'5628-a2', CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'NIK-JN-YL', N'Nike Jordan Nu', N'NikFN20.jpg', N'NikFN21.jpg', N'NikFN22.jpg', 41, 2, 2700000, NULL, 5400000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (52, 5628, N'5628-a2', CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'NIK-ZF-WH', N'Nike Zoom Fly', N'NikJG30.jpg', N'NikJG31.jpg', N'NikJG32.jpg', 41, 2, 5250000, N'extra5567', 5250000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (53, 5621, N'5621-b1', CAST(N'2023-10-21T00:00:00.000' AS DateTime), N'BIT-RP-GR', N'Bitis Running Plus', N'BitJG20.jpg', N'BitJG21.jpg', N'BitJG22.jpg', 42, 1, 1900000, NULL, 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (54, 5618, N'5618-a8', CAST(N'2023-10-18T00:00:00.000' AS DateTime), N'BIT-RP-GR', N'Bitis Running Plus', N'BitJG20.jpg', N'BitJG21.jpg', N'BitJG22.jpg', 42, 1, 1900000, NULL, 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (55, 5618, N'5618-a8', CAST(N'2023-10-18T00:00:00.000' AS DateTime), N'MIZ-LZ-BL', N'Mizuno Lining Z7', N'MizVB40.jpg', N'MizVB41.jpg', N'MizVB42.jpg', 41, 1, 3800000, NULL, 3800000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (57, 5638, N'563807/12/202311/55/28', CAST(N'2023-12-07T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 2, 2500000, NULL, 5000000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (58, 5625, N'562522/12/202308/13/50', CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 39, 2, 2400000, N'extra2489', 3360000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (59, 5639, N'563907/12/202301/43/16', CAST(N'2023-12-07T00:00:00.000' AS DateTime), N'BIT-BF-WH', N'Bitis Boost Focus ', N'BitVB10.jpg', N'BitVB11.jpg', N'BitVB12.jpg', 40, 1, 1800000, NULL, 1800000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (60, 5604, N'560407/12/202311/59/11', CAST(N'2023-12-07T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 39, 1, 1300000, N'extra0000', 1300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (61, 5604, N'560407/12/202311/59/11', CAST(N'2023-12-07T00:00:00.000' AS DateTime), N'ADD-SP-WH', N'Adidas Superstar Pride', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 39, 3, 3300000, N'extra1234', 7920000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (62, 5646, N'564622/12/202311/55/09', CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 39, 1, 2400000, N'extra2489', 1680000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (63, 5652, N'565223/12/202311/14/28', CAST(N'2023-12-23T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 39, 1, 2500000, N'extra0000', 2500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (64, 5652, N'565223/12/202311/14/28', CAST(N'2023-12-23T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 39, 1, 2400000, N'extra2489', 1680000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (65, 5652, N'565223/12/202311/14/28', CAST(N'2023-12-23T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 1, 2450000, N'extra9987', 1715000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (66, 5625, N'562524/12/202311/56/32', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 40, 1, 1300000, N'extra0000', 1300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (67, 5625, N'562524/12/202311/56/32', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-SS-GR', N'Adidas Stan Smith', N'AddFN30.jpg', N'AddFN31.jpg', N'AddFN32.jpg', 39, 1, 3300000, N'extra0000', 3300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (68, 5625, N'562524/12/202311/56/32', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-UL-GR', N'Adidas Ultraboost Light', N'AddFN20.jpg', N'AddFN21.jpg', N'AddFN22.jpg', 42, 1, 5200000, N'extra0000', 5200000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (69, 5625, N'562524/12/202311/56/32', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'BIT-FB-OR', N'Bitis Football Beckham', N'BitFB20.jpg', N'BitFB21.jpg', N'BitFB22.jpg', 42, 1, 800000, N'extra0000', 800000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (70, 5625, N'562524/12/202311/56/32', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'BIT-TS-BL', N'Bitis Tennis Suite', N'AddFB21.jpg', N'BitVB31.jpg', N'BitVB32.jpg', 41, 1, 900000, N'extra0000', 900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (71, 5625, N'562525/12/202312/03/54', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, N'extra8888', 1330000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (72, 5625, N'562525/12/202312/03/54', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 39, 1, 2500000, N'extra0000', 2500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (73, 5622, N'5622-a1', CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 40, 4, 1300000, N'extra0000', 5200000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (74, 5622, N'5622-a1', CAST(N'2023-11-19T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 41, 2, 1300000, N'extra0000', 2600000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (75, 5640, N'564022/12/202308/21/48', CAST(N'2023-12-22T00:00:00.000' AS DateTime), N'ADD-SS-GR', N'Adidas Stan Smith', N'AddFN30.jpg', N'AddFN31.jpg', N'AddFN32.jpg', 39, 1, 3300000, N'extra0000', 3300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (76, 5625, N'562525/12/202312/27/58', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-UL-GR', N'Adidas Ultraboost Light', N'AddFN20.jpg', N'AddFN21.jpg', N'AddFN22.jpg', 39, 1, 5200000, N'extra8888', 3640000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (77, 5655, N'565524/12/202307/18/02', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, N'extra8888', 1330000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (78, 5655, N'565524/12/202307/18/02', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 39, 1, 2400000, N'extra2489', 1680000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (79, 5625, N'562525/12/202307/45/11', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 41, 1, 1900000, N'extra0000', 1900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (80, 5625, N'562525/12/202307/45/11', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 1, 2500000, N'extra0000', 2500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (81, 5625, N'562525/12/202307/45/11', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 1, 2450000, N'extra0000', 2450000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (82, 5625, N'562525/12/202307/45/11', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'BIT - HX - Bl', N'BitisHunter Huracan X22', N'AddFB11.jpg', N'AddFB22.jpg', N'AddFB31.jpg', 40, 1, 2500000, N'extra0000', 2500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (83, 5653, N'565324/12/202307/16/16', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 1, 2500000, N'extra0000', 2500000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (84, 5628, N'562825/12/202303/19/38', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 40, 1, 2400000, N'extra0000', 2400000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (85, 5628, N'562825/12/202303/19/38', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 41, 1, 2450000, N'extra0000', 2450000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (86, 5628, N'562825/12/202303/38/49', CAST(N'2023-12-25T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 43, 1, 2500000, N'extra9987', 1750000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (87, 5644, N'564422/12/202311/36/19', CAST(N'2023-01-22T00:00:00.000' AS DateTime), N'ADD-SP-WH', N'Adidas Superstar Pride', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 39, 1, 3300000, N'extra0000', 3300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (88, 5651, N'565123/12/202310/26/04', CAST(N'2023-12-23T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 9, 2450000, N'extra0000', 22050000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (89, 5628, N'562826/12/202303/18/21', CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'ADD - AS - Si', N'Adidas Adizero SL X22', N'AddFN12.jpg', N'AddFB40.jpg', N'AddFB20.jpg', 39, 2, 2550000, N'extra0000', 5100000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (90, 5636, N'563626/12/202310/17/49', CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, N'extra1234', 1520000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (91, 5636, N'563626/12/202310/17/49', CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 43, 1, 2500000, N'extra9987', 1750000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (92, 5628, N'562826/12/202310/28/59', CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'NIK-ZF-GR', N'Nike Zoom Freak', N'NikVB30.jpg', N'NikVB31.jpg', N'NikVB32.jpg', 41, 1, 3700000, N'extra5567', 1850000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (93, 5654, N'565424/12/202307/17/07', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-PA-WH', N'Adidas Predator Accuracy', N'AddFB10.jpg', N'AddFB11.jpg', N'AddFB12.jpg', 40, 1, 2400000, N'extra0000', 2400000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (94, 5657, N'565724/12/202309/18/25', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 40, 1, 2450000, N'extra0000', 2450000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (95, 5664, N'566427/12/202309/16/43', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 43, 2, 1900000, N'extra1234', 3040000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (96, 5664, N'566427/12/202309/16/43', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'BIT-BS-WH', N'Bitis Bound Suite', N'BitVB20.jpg', N'BitVB21.jpg', N'BitVB22.jpg', 41, 1, 750000, N'extra0000', 750000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (97, 5664, N'566427/12/202309/16/43', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'BIT-TS-BL', N'Bitis Tennis Suite', N'AddFB21.jpg', N'BitVB31.jpg', N'BitVB32.jpg', 40, 1, 900000, N'extra0000', 900000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (98, 5605, N'560527/12/202309/33/21', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 39, 1, 1300000, N'extra9987', 910000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (99, 5605, N'560527/12/202309/37/12', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 39, 1, 1300000, N'extra9987', 910000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (100, 5605, N'560527/12/202303/10/59', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-PP-BL', N'Adidas Predator Plus', N'AddFB40.jpg', N'AddFB41.jpg', N'AddFB42.jpg', 41, 1, 2450000, N'extra0000', 2450000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (101, 5605, N'560527/12/202303/10/59', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-SS-GR', N'Adidas Stan Smith', N'AddFN30.jpg', N'AddFN31.jpg', N'AddFN32.jpg', 40, 1, 3300000, N'extra0000', 3300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (102, 5605, N'560527/12/202303/30/53', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 3, 2500000, N'extra9987', 5250000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (103, 5625, N'562526/12/202308/25/10', CAST(N'2023-12-26T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 43, 1, 2500000, N'extra9987', 1750000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (104, 5628, N'562828/12/202308/20/34', CAST(N'2023-12-28T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 43, 1, 1900000, N'extra1234', 1520000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (105, 5605, N'560527/12/202303/37/17', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'MIZ-NS-WH', N'Mizuno Neo Sala', N'MizFB50.jpg', N'MizFB51.jpg', N'MizFB52.jpg', 41, 1, 1300000, N'extra0000', 1300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (106, 5605, N'560527/12/202303/37/17', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'MIZ-WD-WH', N'Mizuno Wave Dimension', N'MizVB10.jpg', N'MizVB11.jpg', N'MizVB12.jpg', 40, 1, 2200000, N'extra8512', 1980000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (107, 5656, N'565624/12/202307/42/05', CAST(N'2023-12-24T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Adidas Marquee Boost', N'AddFN10.jpg', N'AddFN11.jpg', N'AddFN12.jpg', 40, 1, 1900000, N'extra1234', 1520000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (108, 5628, N'562828/12/202302/06/28', CAST(N'2023-11-28T00:00:00.000' AS DateTime), N'NIK-AJ-WH', N'Nike Air Jordan 2022', N'NikVB10.jpg', N'NikVB11.jpg', N'NikVB11.jpg', 40, 1, 4100000, N'extra8888', 2870000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (109, 5667, N'566727/12/202304/05/35', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 40, 1, 1300000, N'extra0000', 1300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (110, 5668, N'566827/12/202304/36/17', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Adidas Marquee GA', N'AddVB20.jpg', N'AddVB21.jpg', N'AddVB22.jpg', 41, 5, 2500000, N'extra9987', 8750000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (111, 5605, N'560527/12/202310/20/14', CAST(N'2023-12-27T00:00:00.000' AS DateTime), N'ADD-SB-WH', N'Adidas Solecourt Boost', N'AddVB30.jpg', N'AddVB31.jpg', N'AddVB32.jpg', 39, 1, 1300000, N'extra0000', 1300000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (112, 5628, N'562801/01/202411/18/33', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'ADD - P6 - Bl', N'Giày búp bê Vascara 1', N'61.1.jpg', N'61.2.jpg', N'61.3.jpg', 39, 1, 250000, N'extra0000', 250000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (113, 5628, N'562801/01/202411/18/33', CAST(N'2024-01-01T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Guốc Vascara 1', N'107.1.jpg', N'107.2.jpg', N'107.3.jpg', 43, 1, 190000, N'extra1234', 152000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (114, 5677, N'567702/01/202409/09/16', CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'ADD-MB-WH', N'Guốc Vascara 1', N'107.1.jpg', N'107.2.jpg', N'107.3.jpg', 41, 1, 190000, N'extra1234', 152000)
INSERT [dbo].[LichSuMuaHang] ([id], [Ma_Nguoidung], [MaHoadon], [Ngaydathang], [MaSanpham], [Ten_Sanpham], [Link1], [Link2], [Link3], [size], [Soluong], [Giagoc], [MaGiamgia], [ThanhTien]) VALUES (115, 5677, N'567702/01/202409/09/16', CAST(N'2024-01-02T00:00:00.000' AS DateTime), N'ADD-MG-RE', N'Giày búp bê Vascara 2', N'62.1.jpg', N'62.2.jpg', N'62.3.jpg', 43, 1, 250000, N'extra9987', 175000)
SET IDENTITY_INSERT [dbo].[LichSuMuaHang] OFF
GO
INSERT [dbo].[LoaiGiay] ([Ma_Loai], [Ten_loai], [TrangThai]) VALUES (N'FBS', N'Sneaker', 0)
INSERT [dbo].[LoaiGiay] ([Ma_Loai], [Ten_loai], [TrangThai]) VALUES (N'FNS', N'Cao gót', 0)
INSERT [dbo].[LoaiGiay] ([Ma_Loai], [Ten_loai], [TrangThai]) VALUES (N'JGS', N'Búp bê', 0)
INSERT [dbo].[LoaiGiay] ([Ma_Loai], [Ten_loai], [TrangThai]) VALUES (N'VBS', N'Guốc', 0)
GO
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-MB-WH', N'GIÀY B-BALL CỔ ĐIỂN ĐƯỢC THIẾT KẾ ĐỂ MANG LẠI SỰ NHANH NHẸN TRÊN SÂN.
Cập nhật vẻ ngoài cổ điển với các chi tiết hiện đại, đôi giày bóng rổ cổ thấp này được chế tạo để mang lại sự nhanh nhẹn và linh hoạt trên gỗ cứng. Chúng có cổ giày đúc ở mắt cá chân với gót chân có đệm để hỗ trợ và thoải mái. Đế giữa có độ đàn hồi cao mang lại năng lượng cho mỗi người nhảy. Đế ngoài hình xương cá giúp tăng thêm độ bám khi bạn dừng lại và tiếp tục chạy.', N'Đóng ren/Thân giày bằng vải và vải với lớp phủ tổng hợp/Lớp lót dệt; Đế ngoài cao su họa tiết xương cá/Đế giữa Boost có độ đàn hồi; Vỏ đệm ở gót chân/Cổ chân đúc và có đệm')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-MG-RE', N'GIÀY B-BALL CỔ ĐIỂN ĐƯỢC THIẾT KẾ ĐỂ MANG LẠI SỰ NHANH NHẸN TRÊN SÂN.
Cập nhật vẻ ngoài cổ điển với các chi tiết hiện đại, đôi giày bóng rổ cổ thấp này được chế tạo để mang lại sự nhanh nhẹn và linh hoạt trên gỗ cứng. Chúng có cổ giày đúc ở mắt cá chân với gót chân có đệm để hỗ trợ và thoải mái. Đế giữa có độ đàn hồi cao mang lại năng lượng cho mỗi người nhảy. Đế ngoài hình xương cá giúp tăng thêm độ bám khi bạn dừng lại và tiếp tục chạy.', N'Đóng ren/Thân giày bằng vải và vải với lớp phủ tổng hợp/Lớp lót dệt; Đế ngoài cao su họa tiết xương cá/Đế giữa Boost có độ đàn hồi; Vỏ đệm ở gót chân/Cổ chân đúc và có đệm')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-PA-WH', N'Góc trên cùng. Góc dưới. Tất cả các góc. adidas Predator Accuracy được thiết kế để ghi bàn, nhờ đó bạn biết bóng sẽ tìm đến lưới. Điều thú vị là chọn cách đạt được điều đó. Những đôi giày bóng đá cổ thấp này có phần bàn chân trước bằng vải dệt tráng phủ được phủ Kết cấu độ nét cao để tăng thêm độ bám cho bóng. Bên dưới, đế ngoài bằng cao su có rãnh đảm bảo bạn chiếm ưu thế trên sân cỏ nhân tạo. Được làm bằng nhiều loại vật liệu tái chế, phần trên này có hàm lượng tái chế ít nhất 50%. Sản phẩm này chỉ là một trong những giải pháp của chúng tôi nhằm giúp chấm dứt rác thải nhựa.', N'Đóng ren/Lớp dệt tráng phủ phía trên/Lưới đơn phía trên/Cảm giác nhẹ nhàng, ổn định')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-PP-BL', N'Góc trên cùng. Góc dưới. Tất cả các góc. adidas Predator Accuracy được thiết kế để ghi bàn, nhờ đó bạn biết bóng sẽ tìm đến lưới. Điều thú vị là chọn cách đạt được điều đó. Giày đá bóng dành cho trẻ em này có phần bàn chân trước bằng chất liệu tổng hợp, không dây, được bao phủ bởi Kết cấu độ nét cao để tăng thêm độ bám cho bóng. Đế ngoài vững chắc giúp bạn luôn kiểm soát được trên mặt sân cỏ tự nhiên, khô ráo.', N'Xây dựng không dây/Thân giày tổng hợp/Kết cấu 3D cho cảm giác chạm mềm mại/Đế ngoài vững chắc')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-SB-WH', N'GIÀY ĐA NĂNG DÀNH CHO QUẦN VỢT CẤP CAO NHẤT.
Tại sao phải chọn giữa tốc độ và sức mạnh? Đôi giày adidas SoleCourt mang đến cho bạn cả hai điều đó. Chúng giúp chân bạn luôn nhanh nhẹn nhờ phần thân giày nhẹ mang lại cảm giác hỗ trợ khi bạn chạy nước rút. Đế giữa Boost giúp chống mệt mỏi khi bạn vượt qua những hiệp đấu khó khăn. Nó thấp so với mặt đất và dừng ở bàn chân trước, tạo ra sự cân bằng hoàn hảo giữa sự thoải mái có đệm và cảm giác trên sân.', N'Đóng ren/Thân giày bằng vải dệt chống mài mòn với mũi Adituff/Ổn định khung TPU/Đế giữa Boost đàn hồi/Đế ngoài Adiwear bền bỉ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-SP-WH', N'ĐÔI GIÀY ADIDAS ĐẶC TRƯNG ĐƯỢC THIẾT KẾ BỞI RICH MNISI, NGƯỜI CÓ TẦM NHÌN XA TRÔNG RỘNG CỦA NAM PHI.
Hãy để tình yêu là di sản của bạn. Nhà thiết kế người Nam Phi Rich Mnisi đã từng viết lời nhắc nhở đó trong một bức thư viết tay cho người đồng tính trẻ tuổi của mình và ngày nay nó đã phát triển mạnh mẽ trong Bộ sưu tập adidas x Rich Mnisi Pride. Tôn vinh sự thể hiện bản thân, trí tưởng tượng và niềm tin vững chắc rằng tình yêu gắn kết, sự hợp tác khám phá tính trôi chảy, màu sắc và hoa văn. Sự hợp tác này là một phần trong nỗ lực của chúng tôi nhằm tôn vinh cộng đồng LGBTQIA+ cùng với đối tác Mục đích Toàn cầu của chúng tôi, Athlete Ally. Đôi giày adidas Superstar mang tính biểu tượng mang đến ý nghĩa và phong cách mới mẻ trong phiên bản mới này. Hallmark 3-Stripes nổi bật với các đường sọc nhỏ và điểm nhấn cầu vồng vang vọng trên lót giày.', N'Mũi da/Đóng ren/Lớp lót dệt/Đế giày cao su')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-SS-GR', N'Giày adidas Stan Smith tiếp tục tự hào về thiết kế vượt thời gian đồng thời mang những màu sắc và biến thể hiện đại. Cặp đôi này tái hiện phong cách cổ điển bằng cách thay đổi diện mạo. Phần trên bằng da trở thành da lộn và đế cốc trở thành băng dính cao su đồng thời có nhiều màu sắc. Việc làm lại này mang lại cho hình bóng một biểu cảm vui tươi và thoải mái. Thắt dây chúng để nâng cao phong cách của bạn và để cảm giác thoải mái phát huy.', N'Đóng ren
/Da lộn phía trên/Lớp lót dệt/Đế cốc bằng băng keo cao su')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-UL-GR', N'GIÀY CHẠY BỘ HÀNG NGÀY SIÊU NHẸ ĐƯỢC SẢN XUẤT MỘT PHẦN BẰNG PARLEY OCEAN PLASTIC.
Dòng sản phẩm chạy bộ adidas mới nhất kết hợp phong cách với chức năng giúp bạn trông đẹp và cảm thấy thoải mái khi chạy hàng km. Các phụ kiện hiệu suất cao được thiết kế để giảm thiểu sự mất tập trung khi chạy tốn nhiều năng lượng, nhờ đó bạn có thể tập trung vào việc tận hưởng niềm vui trong khi sải bước. Tận hưởng từng bước đi với đôi giày chạy bộ Ultraboost Light 23 này. Ultraboost nhẹ nhất từ ​​trước đến nay của chúng tôi, được làm bằng vật liệu tăng cường nhẹ hơn 30% vì chân nặng sẽ hút. Hàng trăm viên tăng áp bùng nổ với nguồn năng lượng hoành tráng mỗi khi chân bạn chạm đường băng. Sản phẩm này được sản xuất một phần với Parley Ocean Plastic. Chỉ là một trong những cải tiến thể hiện cam kết của chúng tôi trong việc giúp chấm dứt rác thải nhựa.', N'Đóng ren/Thân giày bằng vải dệt adidas PRIMEKNIT+FORGED/Hệ thống đẩy năng lượng tuyến tính/Trọng lượng: 296 g (cỡ UK 8.5)/Độ tụt đế giữa: 10 mm (gót chân: 29,3 mm / bàn chân trước: 19,3 mm)/Đế ngoài cao su tốt hơn của Continental')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'ADD-UR-WH', N'Trải nghiệm nguồn năng lượng hoành tráng với Ultraboost Light mới, Ultraboost nhẹ nhất từ ​​trước đến nay của chúng tôi. Điều kỳ diệu nằm ở đế giữa Light BOOST, thế hệ mới của adidas BOOST. Thiết kế phân tử độc đáo của nó tạo ra bọt BOOST nhẹ nhất cho đến nay. Với hàng trăm viên nang BOOST tràn đầy năng lượng, khả năng đệm và sự thoải mái tối ưu, một số bàn chân thực sự có thể có được tất cả.', N'Đóng ren/Thân giày bằng vải dệt/Lớp lót dệt/Hệ thống đẩy năng lượng tuyến tính/Trọng lượng: 299 g (size UK 8.5)/Độ tụt đế giữa: 10 mm (gót chân: 30 mm, bàn chân trước: 20 mm)/Sợi ở phía trên chứa ít nhất 50% Parley Ocean Plastic và 50% polyester tái chế / Lượng khí thải mỗi cặp ít hơn tối thiểu 10% so với phiên bản trước')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-BF-WH', N'Giày Thể Thao Nam Biti''s BSM000900 hiện là một trong những mẫu giày thể thao được đông đảo khách hàng tin tưởng thương hiệu Biti’s lựa chọn. Bởi lẽ, không chỉ sở hữu kiểu dáng năng động và nam tính, sản phẩm còn có chất lượng đế - quai cao cấp, độ bền bỉ cao.Ngay từ cái nhìn đầu tiên, mọi người mua đều ấn tượng với phần đế làm từ chất liệu cao su. Biti’s ưu tiên lựa chọn vật liệu cao su cao cấp, được chọn lọc và sản xuất theo đúng quy trình tiêu chuẩn chất lượng tốt nhất. Bên cạnh đó còn giữ nguyên những ưu điểm nổi bật không thể phủ nhận như độ bền cao, bảo đảm không bị biến dạng sau một thời gian sử dụng, giá thành phải chăng, có khả năng chống dầu và hóa chất cực tốt, dễ tạo hình…  ', N'Thiết kế thể thao năng động, thời trang nhưng không kém phần mạnh mẽ./Màu sắc đơn giản, dễ phối đồ./Form giày gọn gàng, ít bị biến dạng sau một thời gian sử dụng. /Phù hợp với nhiều đối tượng sử dụng ở đa dạng độ tuổi. /Có thể dùng có nhiều mục đích khác nhau như đi học, đi làm, đi chơi… /Chất liệu cao cấp, được xử lý chỉn chu./Bảo đảm cảm giác êm ái, thoải mái, ít đau chân cho người sử dụng. /Hạn chế trơn trượt tối đa trong mọi chuyển động. ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-BS-WH', N'Giày thể thao nam Hunter Tennis DSMH10200 được “tung” ra thị trường với 3 phiên bản màu trung tính gồm Đen, Trắng, Xám. Người dùng có thể dễ dàng lựa chọn mẫu mã màu sắc ưng ý.Giày thể thao nam Hunter Tennis DSMH10200 sở hữu thiết kế năng động, nhiều tính năng và lợi ích nổi bật. Chính vì vậy, đây sẽ là “người bạn đồng hành” hoàn hảo trong các buổi Tennis của phái nam. Còn chần chờ gì nữa mà không liên hệ Biti’s đặt hàng và trải nghiệm tập luyện cùng đôi giày đẳng cấp này ngay nào!', N'Đóng ren/Thân giày bằng vải dệt chống mài mòn với mũi Adituff/Ổn định khung TPU/Đế giữa Boost đàn hồi/Đế ngoài Adiwear bền bỉ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-CG-WH', N'Giày thể thao là “người bạn đồng hành” quan trọng của mọi người trong mọi chuyển động hàng ngày, nhất là luyện tập thể dục thể thao rèn luyện sức khỏe. Nếu bạn cần tìm một sản phẩm vừa đẹp mắt, vừa chất lượng thì hãy tham khảo ngay mẫu Giày Thể Thao Nữ Biti’s Hunter HSW002900. Đôi giày chắc chắn sẽ khiến mọi chị em hài lòng ngay từ cái nhìn đầu tiên.Đa số người dùng đều ấn tượng với phần đế LITEFLEX 3.0. Đây là công nghệ chế tác đế độc quyền từ Biti’s với vô vàn ưu điểm nổi trội không thể bỏ lỡ. Đó là trọng lượng siêu nhẹ, mang lại cảm giác di chuyển nhẹ như bay cùng công thức cao su cao cấp, được xử lý cẩn thận để tối ưu hóa đặc tính mềm dẻo. Chưa kể, LITEFLEX 3.0 còn có khả năng ma sát tốt, hạn chế tình trạng trơn trượt cũng như kháng mài mòn hiệu quả để sản phẩm bền bỉ hơn hết. Form dáng chunky từ sản phẩm Biti’s Hunter HSW002900 không chỉ giúp thon gọn đôi chân mà còn mang lại khả năng đàn hồi tốt. Từ đó, người dùng cảm thấy mỗi bước chân đều vô cùng êm ái, mềm mại nhất.Trang bị phần lót đế O Foam, nổi trội với khả năng kháng khuẩn siêu tốt để hạn chế tình trạng ngứa ngáy, nổi mẩn… cho người dùng. Đặc biệt, lót đế kết hợp chất liệu Ortholite, sở hữu độ êm ái ưu việt và khả năng hút ẩm, hạn chế mùi hôi độc đáo. Chính vì thế, đôi chân của người sử dụng được bảo vệ tối đa và tạo ra cảm giác thoải mái dù phải mang giày thời gian dài.   ', N'Đóng ren/Thân giày bằng vải dệt chống mài mòn với mũi Adituff/Ổn định khung TPU/Đế giữa Boost đàn hồi/Đế ngoài Adiwear bền bỉ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-FB-OR', N'Giày bóng đá nam Biti''s Hunter Football DSMH09600 là một trong những sản phẩm phục vụ các tuyển thủ ra sân với niềm đam mê và hứa hẹn sẽ làm hài lòng các chân sút. Điểm nổi bật của mẫu giày này là thiết kế cổ cao, ôm cổ chân hơn, khả năng co giãn giúp bạn di chuyển linh hoạt và phòng tránh chấn thương lật cổ chân vô cùng hiệu quả.Giày bóng đá nam Biti''s Hunter Football DSMH09600 là một trong những đôi giày đá bóng sân cỏ được thiết kế cho mọi vị trí trên sân và nhiều mặt sân khác nhau. Giày thích hợp với những cầu thủ có lối chơi linh hoạt. Liên hệ Bitis.com.vn ngay để sở hữu mẫu giày "đậm chất phủi" này. ', N'Mũi da/Đóng ren/Lớp lót dệt/Đế giày cao su')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-FD-YE', N'Giày Bóng Đá Nam Biti''s Hunter Football DSMH03800 được ứng dụng với nền tảng công nghệ TrueFit – X, sản phẩm giày đá banh từ Biti’s Hunter với cam kết đem lại trải nghiệm vừa vặn nhất với đôi chân.
Quai da tổng hợp cao cấp chuyên dụng cho giày đá banh với độ dày 1.3mm nhưng vẫn đảm bảo được độ mềm, uốn gấp tạo cảm giác thoải mái và độ bền có khả năng chịu lực cao.
Rãnh ma sát trên bề mặt giày tang “cảm giác bóng” và tang độ ổn dịnh khi tiếp xúc bóng.
Đế cao su tự nhiên mềm với phần đinh bám được thiết kế theo các đường rãnh tạo độ uốn gấp khi di chuyển cùng với độ cao 5mm đảm bảo được độ bám và đầy đủ tính năng cần thiết cho một đôi giày sử dụng trên sân cỏ nhân tạo.', N'Đóng ren/Thân giày bằng vải và vải với lớp phủ tổng hợp/Lớp lót dệt; Đế ngoài cao su họa tiết xương cá/Đế giữa Boost có độ đàn hồi; Vỏ đệm ở gót chân/Cổ chân đúc và có đệm')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-RM-BL', N'Giày Chạy Bộ Nữ Biti''s Hunter Running DSWH10000 được nhiều người dùng đánh giá cao từ lần đầu tiên bởi ngoại hình trẻ trung, màu sắc bắt mắt và chất lượng cao cấp. ', N'Đóng ren/Thân giày bằng vải và vải với lớp phủ tổng hợp/Lớp lót dệt; Đế ngoài cao su họa tiết xương cá/Đế giữa Boost có độ đàn hồi; Vỏ đệm ở gót chân/Cổ chân đúc và có đệm')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-RP-GR', N'Rèn luyện thể dục thể thao là một hoạt động tốt mà bất cứ ai cũng nên thực hiện mỗi ngày. Để làm được điều này, ngoài lòng quyết tâm thì một đôi giày tốt chắc chắn là điều không thể thiếu để bảo vệ đôi chân của bạn trong suốt hành trình. Nếu bạn vẫn chưa biết nên mua đôi giày nào giá ổn, chất lượng tốt, thì mẫu Giày Chạy Bộ Nam Biti''s Hunter Running HSM003800 là sự lựa chọn hoàn hảo.', N'Vừa vặn thường xuyên/Lưới đơn phía trên/Cảm giác nhẹ nhàng, ổn định/Đệm LIGHTMOTION/Đế ngoài Adiwear/Đóng ren')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-SD-BL', N'Giày Biti''s nữ ngoài những kiểu dáng điệu đà ra chúng ta không thể không kể tới những đôi giày mang phong cách cá tính mà các bạn bạn trẻ hiện nay rất yêu thích. Được thiết kế với họa tiết mang đậm chất phong cách đường phố, Giày Thể Thao Nữ Biti’s Hunter Street HSW003900 đang là một mẫu giày rất hot hiện nay được nhiều bạn trẻ lựa chọn. Dưới đây là thông tin chi tiết của sản phẩm.', N'Dây giày cố định cao cấp/Vải Lưới Kỹ Thuật Tái Chế Một Phần/Lớp đệm Lightstrike & Lightstrike Pro/Lớp lót bằng vải dệt')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-SP-BL', N'Một trong những mẫu giày đế #BÀO hiện đang thịnh hành nhất tại Biti''s phải kể đến giày thể thao nam Hunter Street đế #BÀO DSMH11000. Sản phẩm đơn giản nhưng ấn tượng với lối thiết kế phá cách mạnh mẽ, mang đến một làn gió mới cho các đấng mày râu. Sau hơn 40 năm tự hào đồng hành cùng các thế hệ Việt, Biti’s Hunter Street tự hào ra mắt đế #BÀO kết hợp cùng nghệ sĩ Việt Max với khao khát cùng người trẻ Việt in đậm dấu ấn trải nghiệm trên mọi mảnh đất, mọi đích đến trên đất Việt và toàn cầu.', N'Vừa vặn thường xuyên/Lưới đơn phía trên/Cảm giác nhẹ nhàng, ổn định/Đệm LIGHTMOTION/Đế ngoài Adiwear/Đóng ren')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'BIT-TS-BL', N'Giày Chạy Bộ Nam Biti''s Hunter Running Tiger là sự kết hợp hoàn hảo giữa phong cách thể thao và đẳng cấp thời trang. Được thiết kế đặc biệt cho các vận động viên và người yêu thích hoạt động chạy bộ, đôi giày này mang đến sự thoải mái, độ bền và hiệu suất tối ưu. ', N'Quai của Biti''s Hunter Running Tiger được làm từ chất liệu mềm, ôm chặt vào chân, thiết kế thoáng khí giúp thông gió và giữ cho chân luôn khô ráo và thoáng mát trong quá trình sử dụng. /Đế giày được thiết kế để giảm sốc tốt, giúp giảm thiểu tác động lên cơ và xương khi chạy. Đế giày khá nhẹ, giúp giảm trọng lượng tổng thể của giày và tăng sự thoải mái cho người sử dụng. /Đồng thời, đế giày cũng có tính đàn hồi tốt, có khả năng uốn gấp và triệt tiêu lực tốt, giúp tăng cường độ bám và độ ổn định khi di chuyển./Biti''s Hunter Running Tiger là một đôi giày chuyên dụng được thiết kế đặc biệt cho hoạt động chạy bộ. Với thiết kế thời trang và hiện đại, đôi giày này cũng có thể phù hợp để mang đi làm, đi chơi, gặp gỡ bạn bè hoặc thậm chí dạo phố. ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-C70-BL', N'Sự kết hợp giữa giày sneaker và bốt yêu thích của bạn, có thể được bạn tùy chỉnh hoàn toàn để tăng thêm nét độc đáo. Chuck 70 Bosey cải tiến giày sneaker cao cấp với các chi tiết lấy cảm hứng từ ngoài trời như dây buộc đi bộ đường dài, lỗ xỏ giày và đế ngoài có họa tiết. Giờ đây có màu trung tính mới, lớp lót lông cừu cách nhiệt và vòng cổ sherpa ấm cúng.', N'Giày sneaker da có thể tùy chỉnh/Phần đệm chân nhẹ nhàng mang lại sự thoải mái tối ưu/Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-CC-BL', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-CRT-YL', N'Sự kết hợp giữa giày sneaker và bốt yêu thích của bạn, có thể được bạn tùy chỉnh hoàn toàn để tăng thêm nét độc đáo. Chuck 70 Bosey cải tiến giày sneaker cao cấp với các chi tiết lấy cảm hứng từ ngoài trời như dây buộc đi bộ đường dài, lỗ xỏ giày và đế ngoài có họa tiết. Giờ đây có màu trung tính mới, lớp lót lông cừu cách nhiệt và vòng cổ sherpa ấm cúng.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-CT-BL', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-CTA-BL', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-CTA-WH', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-NBA-BL', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-NO-RE', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-TDM-BL', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-TDM-PI', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'CON-XG-GR', N'Chuck 70 vốn đã cao cấp chỉ trở nên tuyệt vời hơn với kiểu dáng độc đáo của bạn. Thể hiện bản thân bằng các lựa chọn màu sắc và hình in theo xu hướng, sau đó hoàn thiện bằng các chi tiết được cá nhân hóa hoàn toàn để có vẻ ngoài thực sự độc đáo.', N'Sự lựa chọn của bạn về màu sắc cổ điển và mới, theo xu hướng/Có sẵn vải canvas cổ điển, lông cừu ấm áp và lớp lót sherpa ấm cúng/Đường khâu lệch và có kết cấu ở thành bên và lưỡi có cánh')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-AE-WH', N'Giày đá bóng Mizuno Morelia Neo IV Pro FG, đinh cao, da thật Kangaroo mềm mịn, sân cỏ tự nhiên, có đệm giảm chấn

Giày đá bóng Mizuno Morelia Neo IV Pro FG sở hữu upper mềm mại, mang đến cho bạn cảm giác như đang đi chân trần. Giày đá bóng sân cỏ tự nhiên Morelia Neo IV Pro FG cực kỳ phù hợp với người chơi thiên về tốc độ, kỹ thuật và mong muốn một đôi giày nhẹ, êm ái, cảm giác bóng tốt.', N'Công nghệ K-Leather mang đến chất liệu da thật hảo hạng đã được Mizuno sử dụng hiệu quả trên phần Upper giày đá bóng Mizuno Morelia Neo IV Pro FG, tạo cảm giác thật chân, hạn chế tối đa tình trạng đau nhức mũi chân, hỗ trợ người chơi trong những pha sút đầy uy lực và đột phá./Form giày đá bóng Mizuno Morelia Neo IV Pro FG đặc biệt phù hợp với bàn chân người Châu Á, nhất là người Việt và những cầu thủ chân bè hoàn toàn có thể trải nghiệm trên sân thoải mái./Công nghệ đệm giảm chấn trên giày đá bóng Mizuno Morelia Neo IV Pro FG có vai trò quan trọng trong việc giảm nguy cơ chấn thương và bảo vệ toàn diện cho chân khi bạn tham gia hoạt động thể thao. ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-LM-BL', N'Wave Lightning là dòng giày bóng chuyền được rất nhiều các VĐV chuyên nghiệp lựa chọn sử dụng. Ngay từ phiên bản đầu tiên, mẫu giày này đã gây ấn tượng lớn với người chơi bởi trọng lượng nhẹ và sự linh hoạt trong từng bước chạy cùng với đó là sự êm ái, bảo vệ chân tối đa các VĐV. Một biến thể vô cùng đặc biệt của dòng giày Mizuno này đó là Wave Lightning NEO', N'Công nghệ Wave đặc biệt giúp dàn trải lực khi tiếp xúc với đất/Chất liệu giày hoàn toàn mới, giảm trọng lượng chung của giày/Cao su XG được áp dụng ở mặt ngoài đế giày')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-LZ-BL', N'Mizuno Wave Lightning là dòng giày bóng chuyền cao cấp được rất nhiều các VĐV chuyên nghiệp lựa chọn sử dụng và WAVE LIGHTNING NEO 2 chính là phiên bản mới được ra mắt của Mizuno ở dòng giày này.  

Ở phiên bản này, WAVE LIGHTNING NEO 2 tiếp tục gây ấn tượng lớn với người chơi bởi trọng lượng nhẹ và sự linh hoạt trong từng bước chạy. Cùng với đó là sự êm ái, trợ lực tối đa mỗi pha bật nhảy. Đặc biệt hơn, WAVE LIGHTNING NEO 2 còn được cải tiến về phần cổ giày, vẫn giữ form cổ cao nhưng ngắn hơn chút so với phiên bản Wave Lightning Neo trước đó. Với lớp vải dệt cao cấp, cổ giày co dãn và ôm sát, đặc biệt được thiết kế lưỡi gà liền sẽ giúp cho các VĐV luôn thoải mái mỗi khi sử dụng và chắc chắn, ổn định hơn trong từng bước nhảy, hạn chế những chấn thương không đáng có. ', N'MIZUNO WAVE: Công nghệ Wave độc quyền của Mizuno với lớp đế dạng sóng giúp dàn trải lực khi bạn tiếp đất ra toàn đôi giày thay vì chỉ gót chịu áp lực, đồng thời tạo nên sự ổn định, an toàn cho người đi, phòng tránh những chấn thương không đáng có.  /D-FLEX GROOVE: Thiết kế đường chéo đặc biệt ở phần giữa của đôi giày, giúp người chơi có những pha di chuyển chắc chắn, ổn định hơn, đặc biệt là trang những tình huống xoay người, đổi hướng đột ngột. /IZUNO INTERCOOL: Hệ thống lỗ thoáng khí ở đế giày giúp người mang luôn cảm thấy khô thoáng, thoải mái. /3D-SOLID: Thiết kế upper đặc biệt dạng nổi khối, mang tới độ bền ấn tượng nhưng vẫn giữ được sự mềm mại và giúp giày thoáng khí. 

/REMOVABLE INSOCK: Lót giày được đúc theo khuôn bàn chân tạo nên sự êm ái và ôm chân vừa vặn, có thể tháo rời thuận tiện cho việc vệ sinh sản phẩm.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-MA-BL', N'Giày bóng đá MIZUNO MONARCIDA NEO SELECT AS là dòng giày sân cỏ nhân tạo, phiên bản cải tiến với nhiều ưu điểm vượt trội hơn so với dòng Monarcida Neo trước đó. Đảm bảo sẽ giúp bạn thỏa mãn niềm đam mê trên sân cỏ với trái bóng tròn.', N'Trọng lượng trung bình: 225gr-UK8/Phần upper được làm từ da tổng hợp cao cấp/Đế đúc với đinh răm AS giúp bám sân, chống trơn trượt /Lớp lót giày chống trơn có thể tháo rời, đem lại sự chắc chắn và thoải mái cho đôi chân')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-MN-WH', N'Mizuno Monarcida là dòng sản phẩm đã được rất nhiều người chơi bóng đá đánh giá cao và tin dùng bởi sự bền bỉ đáng kinh ngạc cùng với đó là sự chắc chắn và đặc biệt là rất hợp chân người Việt khi những cầu thủ có bàn chân bè vẫn có thể sử dụng thoải mái. ', N'Upper: Được làm từ da tổng hợp thế hệ mới, giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn. Bề mặt thân giày được phủ bóng một lớp đặc biệt, giúp dễ dàng vệ sinh giày và mang tới sự ấn tượng trong tổng thể thiết kế. /Mũi giày: vừa giúp bảo vệ ngón chân, vừa hạn chế việc bong, tróc da, tăng tuổi thọ cho đôi giày. Hỗ trợ những pha chích mũi uy lực./Form giày: Đặc biệt phù hợp với bàn chân người Việt, những cầu thủ chân bè hoàn toàn có thể sử dụng mà không gặp chút khó khăn nào. /Là mẫu giày thuộc phân khúc cao cấp, Monarcida Neo Sala Pro IN được trang bị lớp đệm giảm chấn U4ic, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-MS-WH', N'Ngay từ những ngày đầu xuất hiện tại Việt Nam, dòng giày Monarcida nói chung đã được rất nhiều các cầu thủ chơi sân cỏ nhân tạo tin dùng bởi sự bền bỉ đáng kinh ngạc cùng với đó là sự chắc chắn và đặc biệt là rất hợp chân người Việt khi những cầu thủ có bàn chân bè vẫn có thể sử dụng thoải mái. ', N'Được làm từ da tổng hợp thế hệ mới, liền mạch trên toàn thân giày giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn./Thiết kế ấn tượng với những họa tiết chạy dọc theo thân giày, mang tới sự trẻ trung, năng động cho tổng thể thiết kế/Form giày hợp chân người Việt, các cầu thủ dù chân bè nhiều hay trung bình đều có thể đi giày vừa vặn, thoải mái.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-NS-WH', N'Morelia là dòng giày đã được ra mắt từ năm 1985 với thiết kế truyền thống mang tính chuẩn mực cho một đôi giày bóng đá. Trải qua gần 40 năm, những mẫu Morelia mới nhất vẫn giữ những nét truyền thống đó pha lẫn với những chi tiết hiện đại tạo nên một đôi giày tinh tế phù hợp với nhiều cầu thủ.

Linh hồn của hầu hết các mẫu giày trong dòng Morelia đó chính là chất liệu da Kangaroo hảo hạng được lựa chọn kĩ lưỡng trước khi đưa vào sản xuất. Những đôi giày Morelia với da Kangaroo luôn mang đến sự mềm mại đáng kinh ngạc, và tạo cảm giác như bạn đang đi chân trần vậy. Rất nhiều các hảo thủ trên Thế Giới đã lựa chọn Morelia cho những trận đấu đỉnh cao của mình như Roberto Carlos, Rivaldo, Fernando Torres… Tại Việt Nam, những tuyển thủ như Hồ Tấn Tài, Nguyễn Huy Hùng, Nguyễn Trọng Đại, Hà Đức Chinh….cũng lựa chọn Morelia là người bạn đồng hành trong từng trận đấu.', N'Chất liệu da Kangaroo siêu mềm đã được Mizuno sử dụng hiệu quả ở phần Upper giày, hỗ trợ tối đa cho các cầu thủ khi nhận bóng, đi bóng, những pha sút mu uy lực và tạo cảm giác như đi chân trần./Phom giày đặc biệt phù hợp với bàn chân người Việt, những cầu thủ chân bè hoàn toàn có thể sử dụng mà không gặp chút khó khăn nào./Là mẫu giày thuộc phân khúc cao cấp, Morelia TF được trang bị lớp đệm giảm chấn, tạo sự êm ái thoải mái cho các cầu thủ trong suốt trận đấu./Hệ thống đinh dăm trên Morelia TF là dạng chữ L quen thuộc với ưu điểm giúp các cầu thủ có thể đổi hướng linh hoạt và rất bám sân ngay cả khi thời tiết không thuận lợi.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-WD-WH', N'Wave Dimension mới là giày bóng chuyền áp dụng công nghệ kỹ thuật mới nhất của Mizuno được thiết kế theo tiêu chí ổn định và thoải mái. Với thiết kế tiên tiến và hiện đại liên kết trực tiếp với Wave Momentum, đôi giày sẽ hỗ trợ bạn một cách an toàn và thoải mái nhất với đế được áp dụng một số công nghệ cao cấp nhất của nhà Mizuno.', N'Được làm từ da tổng hợp thế hệ mới, liền mạch trên toàn thân giày giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn./Thiết kế ấn tượng với những họa tiết chạy dọc theo thân giày, mang tới sự trẻ trung, năng động cho tổng thể thiết kế/Form giày hợp chân người Việt, các cầu thủ dù chân bè nhiều hay trung bình đều có thể đi giày vừa vặn, thoải mái.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-WF-WH', N'Đưa trò chơi của bạn lên một tầm cao mới với Giày bóng chuyền WAVE LIGHTNING Z7 MID V1GA2250 của Mizuno. Được thiết kế để tăng cường sự nhanh chóng và thoải mái của bạn, những đôi giày này được trang bị Mizuno Energy để có lớp đệm vượt trội. Với các tính năng như đế trong có thể tháo rời và đế không để lại dấu vết, những đôi giày này được thiết kế để đáp ứng nhu cầu của bất kỳ vận động viên bóng chuyên nghiệp nào', N'Được làm từ da tổng hợp thế hệ mới, liền mạch trên toàn thân giày giúp các cầu thủ khống chế bóng êm ái và kiểm soát bóng tốt hơn./Thiết kế ấn tượng với những họa tiết chạy dọc theo thân giày, mang tới sự trẻ trung, năng động cho tổng thể thiết kế/Form giày hợp chân người Việt, các cầu thủ dù chân bè nhiều hay trung bình đều có thể đi giày vừa vặn, thoải mái.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'MIZ-WL-WH', N'Giày thể thao trong nhà Mizuno Dynablitz, đệm giảm chấn êm ái, form chuẩn, thoáng khí, cao cấp, chính hãng

Giày thể thao trong nhà Mizuno Dynablitz là dòng giày indoor được thiết kế đặc biệt để sử dụng trong nhà, phù hợp cho nhiều hoạt động thể thao trong các sân đấu, sân nhà, phòng tập gym, trung tâm thể dục, hội trường, đường phố…', N'Form giày được thiết kế đặc biệt phù hợp với kiểu dáng bàn chân người Châu Á, đặc biệt là người Việt./Công nghệ giảm chấn cực kỳ mềm mại, giúp hấp thụ hiệu quả lực tác động từ mặt sàn khi bạn thực hiện các hoạt động như chạy, nhảy, bật lên hoặc di chuyển nhanh,... Điều này giảm áp lực lên các cơ, xương và khớp, giảm cảm giác mệt mỏi và tăng hiệu suất trong các hoạt động thể thao, giải trí trong nhà./Công nghệ Air Mesh được tích hợp trên giày, với hệ thống vải lưới dọc theo thân giày, giúp hút ẩm mồ hôi cực tốt mang đến sự thoải mái cho bàn chân./Công nghệ Removable Insock: Lót giày có thiết kế đường rãnh được đúc theo khuôn bàn chân mang đến cảm giác êm ái và cố định. Bạn có thể dễ dàng giữ vệ sinh giày luôn sạch sẽ và ngăn ngừa mùi hôi./Đế giày được làm từ chất liệu cao su đặc biệt giúp bám sân cực tốt với thiết kế đường gân, rãnh tạo ma sát và ổn định, giúp bạn tự tin di chuyển trên sàn nhà.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-AF-BL', N'Sự rạng rỡ vẫn tồn tại với bản gốc b-ball. Vượt qua sự thoải mái bằng gỗ cứng với sự tinh tế ngoài sân đấu, nó mang đến một sự thay đổi mới mẻ về những gì bạn biết rõ nhất: cấu trúc lấy cảm hứng từ thập niên 80, các chi tiết táo bạo và phong cách không gì khác ngoài lưới.', N'Từ những đường khâu chắc chắn cho đến chất liệu da nguyên sơ, nó mang đến phong cách bền bỉ, mịn màng hơn cả mặt kính phía sau./Được thiết kế ban đầu cho các vòng thi đấu, đệm Nike Air mang lại sự thoải mái lâu dài./Đế ngoài cao su với các vòng tròn trục tăng thêm lực kéo và độ bền./Cổ cao có đệm, cắt thấp trông bóng bẩy và tạo cảm giác tuyệt vời.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-AJ-WH', N'Khi nói đến môn thể thao vòng, Jordan Brand đã tạo được danh tiếng toàn cầu với tư cách là nhà sáng tạo và cộng tác viên. AJ XXXVIII này vinh danh Liên đoàn Bóng rổ Quốc tế—cơ quan quản lý bóng rổ trên toàn thế giới. Giống như ánh sáng trắng chứa mọi màu sắc có thể, lớp ngoài nổi bật che giấu phần đế được trang trí bằng tất cả các màu sắc của logo FIBA ​​​​sống động. Sự táo bạo, từ trong ra ngoài.', N'Bạn muốn cắt bóng nhanh hơn, chạy nước rút nhanh hơn và kiểm soát toàn sân. Thiết bị Zoom Air Strobel tầm thấp giúp bạn đạt được điều đó./Đường thêu ở phía trên được thiết kế để giúp bạn cảm thấy an toàn hơn khi băng qua sân. Kỹ năng của bạn, cộng với lưới nhẹ, hỗ trợ? Một sự kết hợp chiến thắng./Hộp Move to Zero đặc biệt mang đến cho bạn tiếng chuông và tiếng còi của bao bì kỷ niệm mà không cần thêm rác.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-AW-BL', N'Với sự ổn định ở nơi bạn cần và đệm ở nơi bạn muốn, Structure 25 hỗ trợ bạn trong những chặng đường dài, những buổi tập luyện ngắn và thậm chí cả những bước lùi trước khi ngày kết thúc. Đó chính là sự ổn định mà bạn tìm kiếm, trung thành ngay từ lần buộc đầu tiên, đã được thử và kiểm nghiệm, với hệ thống giữa bàn chân hoàn toàn hỗ trợ và có lớp đệm thoải mái hơn trước.', N'Sự kết hợp giữa hỗ trợ điều chỉnh và đệm được đặt có chủ ý giúp bạn cảm thấy an toàn trong mỗi bước đi. Cấu trúc 25 tập trung vào việc mang lại sự ổn định cho mọi sải chân. Đế giữa bằng bọt được cập nhật hoạt động với khả năng hỗ trợ giữa bàn chân rộng hơn và bệ đỡ tăng cường giúp bạn có nền tảng ổn định hơn dưới chân và chuyển tiếp mượt mà hơn từ gót chân đến ngón chân./Có nhiều lớp đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Đế giữa xốp mang lại cảm giác mềm mại và thoải mái khi bạn ghi lại số dặm của mình. Ngăn xếp xốp cao giúp bạn thoải mái. Có hình dạng giống như một chiếc bập bênh, lớp xốp này hỗ trợ cho 3 giai đoạn sải chân của người chạy. Nó mang lại sự linh hoạt khi chân bạn nhấc lên khỏi mặt đất, cảm giác di chuyển êm ái khi chân bạn di chuyển về phía trước và đệm khi tiếp xúc với mặt đất./Bộ phận Zoom Air ở bàn chân trước cung cấp khả năng đệm đàn hồi. Mỗi bước đi giúp tạo ra năng lượng quay trở lại để giúp bạn tiến về phía trước với cảm giác hồi xuân và nhạy bén.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-BM-BL', N'Vào những năm 70, Nike là hãng giày mới. Trên thực tế, rất mới, Nike vẫn đang tham gia vào lĩnh vực bóng rổ và thử nghiệm các nguyên mẫu trên chân đội bóng địa phương của mình. Tất nhiên, thiết kế đã được cải thiện qua nhiều năm, nhưng cái tên vẫn giữ nguyên. Nike Blazer Mid 77 Vintage mang đến nét cổ điển ngay từ đầu.', N'Da và phần trên tổng hợp giữ vẻ cổ điển của nguyên bản đồng thời tăng thêm sự thoải mái và hỗ trợ./Da và phần trên tổng hợp giữ vẻ cổ điển của nguyên bản đồng thời tăng thêm sự thoải mái và hỗ trợ./Cách xử lý cổ điển ở đế giữa mang lại vẻ cổ điển')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-DF-BL', N'Thời tiết khó chịu không nhất thiết phải chấm dứt hoạt động chạy của bạn. Tận hưởng các yếu tố của những đôi giày này được thiết kế để giúp bạn vượt qua mọi vũng nước, điểm dừng, ổ gà và thành tích cá nhân. Lớp hoàn thiện chống thấm nước giúp bạn luôn khô ráo trong khi có lực kéo giống như lốp xe và bộ phận Air có chiều dài tối đa mang lại độ bám và đệm mềm giúp bạn tiếp tục chạy khi điều kiện trơn trượt.', N'Giống như một chiếc áo khoác ấm áp cho đôi chân của bạn, phần trên có chất liệu dệt kim giúp bạn giữ ấm khi chạy bộ trong thời tiết lạnh. Miếng da bọc xung quanh các ngón chân—ở những nơi nước có thể thấm vào—giúp bạn luôn khô ráo./Lớp hoàn thiện chống thấm nước và lưỡi giày phối hợp với nhau giúp giữ cho bàn chân của bạn luôn khô ráo./Đế ngoài Storm-Tread cung cấp lực kéo trong thời tiết ẩm ướt. Nó có kết cấu lấy cảm hứng từ lốp xe mùa đông. Các rãnh siêu nhỏ bám đường, trong khi các hình dạng đa hướng giúp thoát nước khi tiếp xúc trực tiếp với đường nhựa./Một bộ Nike Air có chiều dài đầy đủ sẽ đặt lớp đệm ở nơi bạn cần. Đế giữa bằng xốp mềm mại và đàn hồi giúp bước đi của bạn có độ đàn hồi cao hơn.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-FT-OR', N'Được thiết kế dành cho những người chơi muốn đưa trận đấu của mình lên một tầm cao mới, giày đá bóng Nike Jr. giúp bạn thi đấu một cách tự tin. Các tab kéo và dây đai kép kết hợp với một thiết kế dễ sử dụng giúp loại bỏ sự cần thiết của dây buộc và giúp bạn nhanh chóng bước vào sân. Bộ phận Zoom Air ở gót chân tăng thêm độ nảy cho mỗi bước đi của bạn, giúp bạn luôn nhẹ nhàng trên đôi chân từ khi bắt đầu cho đến khi tiếng còi chung cuộc vang lên. Và thiết kế táo bạo của phiên bản này lại xuất phát từ nguồn cảm hứng của Marcus Rashford, với thông điệp mạnh mẽ trong tâm trí. Anh ấy nói: “Nếu tôi thiết kế một chiếc bốt thì nó phải có ý nghĩa gì đó”. Tông màu, màu chuyển sắc và đồ họa phản ánh mong muốn của Marcus là giúp bạn khám phá và khuếch đại tiếng nói bên trong bạn rằng "bạn hiểu rồi".', N'Lồng tốc độ bên trong được làm từ vật liệu mỏng nhưng chắc chắn giúp cố định chân vào đĩa mà không tăng thêm trọng lượng./Lớp phủ NikeSkin siêu mỏng giúp bạn đến gần bóng hơn để có cú chạm bóng chính xác ở tốc độ cao./Đinh tán hình nón cung cấp lực kéo tăng áp với khả năng nhả nhanh.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-JB-WH', N'Lần trước, LeBron đã lật ngược kịch bản trận đấu đánh giày của mình mà chỉ có Nhà vua mới có thể làm được. Bản encore thậm chí còn hay hơn. LeBron XXI có hệ thống cáp hoạt động với đệm Zoom Air và thiết kế nhẹ, thấp so với mặt đất, mang lại cho bạn sự linh hoạt và khả năng bùng nổ linh hoạt mà không bị thừa trọng lượng. Được tạo ra để phục vụ cho việc thăng tiến của bạn và thế hệ vận động viên ném vòng tiếp theo, nó lý tưởng cho các cuộc tấn công trên sàn mở giống như Bron và tiến về phía rìa khi tốc độ của trò chơi tăng lên. Thiết kế đặc biệt này nhằm tôn vinh viên ngọc quý giá nhất thế giới, viên ngọc rồng.', N'Lớp da sáng chế ở phía trên nói lên tính chất sang trọng thực sự của viên kim cương trong khi kết cấu giống như đường gân ở gót chân thể hiện tính chất hỗ trợ của ngọc trai./Bộ phận Zoom Air ở gót chân và bàn chân trước hỗ trợ tiếp đất và mang lại cho bạn cảm giác như bị đẩy. Chúng tôi kết hợp chúng với lớp bọt xốp mềm mại, đàn hồi để giúp đảm bảo cảm giác êm ái./Lưới chiều ở phía trên bền và kín. Bằng cách sử dụng vật liệu nhẹ, chúng tôi tạo đường rãnh thông hơi ở phía trên trông giống như đường gân của vỏ sò, giúp bạn kiềm chế trong những chuyển động bùng nổ. Các lỗ thủng theo vùng trên lưới sandwich và hệ thống thông gió ở cả hai bên mang lại sự thoáng khí.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-JN-YL', N'Hai mươi năm sau, những chiếc áo thấp này đã quay trở lại. Lấy cảm hứng từ logo và thiết kế Wings nguyên bản của Jordan 1, những đôi giày hàng ngày này luôn sẵn sàng cho mọi hoạt động. Hãy diện chúng với một vài chiếc quần jean rộng thùng thình, mặc chúng để trượt ván hay chỉ đơn giản là trông bay bổng—điều đó tùy thuộc vào bạn. Mũ giày bằng da mịn và logo dập nổi lớn sẽ giúp bạn nổi bật dù mặc trang phục cao hay thấp.', N'Công nghệ Nike Air hấp thụ lực tác động để giảm chấn theo từng bước đi./Cổ giày có đệm, cắt thấp vừa vặn thoải mái quanh mắt cá chân của bạn./Đế cao su mang lại cho bạn lực kéo dồi dào.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-JO-RE', N'Đạt được tốc độ bạn cần, giống như Russ. Lấy cảm hứng từ mẫu giày đặc trưng mới nhất của Russell Westbrook, đế ngoài của Jordan One Take 4 gần như ôm trọn đế giữa để bạn có thể bắt đầu, dừng hoặc đổi hướng ngay lập tức. Trong khi đó, đệm Zoom Air hoàn trả năng lượng ở bàn chân trước giúp bạn tiếp tục di chuyển', N'Tấm giữa bàn chân chạy qua giày để tăng độ ổn định./Đế ngoài xương cá cung cấp lực kéo dồi dào./Phiên bản PF được thiết kế rộng hơn dành cho sân chơi ngoài trời./Phần trên bền được làm từ da thật, da tổng hợp và vật liệu dệt./Công nghệ Nike Air hấp thụ lực tác động để giảm chấn theo từng bước đi./Đế ngoài cao su cung cấp lực kéo hàng ngày.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-JS-GR', N'Sự thoải mái là quan trọng nhất, nhưng điều đó không có nghĩa là bạn phải hy sinh phong cách. Lấy cảm hứng thiết kế từ AJ1 và AJ5, Stadium 90 sẵn sàng để đeo hàng ngày. Phần trên được làm từ da và vải dệt thoáng mát, do đó bạn có được cả độ thoáng khí và độ bền, đồng thời đệm Nike Air ở đế giúp mỗi bước đi của bạn luôn nhẹ nhàng và êm ái.', N'Đế ngoài cao su tỏ lòng tôn kính với AJ1/Chi tiết ngọn lửa và nhãn hiệu gót chân tham khảo AJ5')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-MA-BL', N'Nghiêng sân ngay lập tức trong thiết kế táo bạo của Superfly 9 Academy TF. Nó được trang bị bộ Zoom Air và NikeSkin linh hoạt ở phía trên mang lại cảm giác chạm đặc biệt, nhờ đó bạn có thể chiếm ưu thế trong những phút cuối của trận đấu—khi điều đó quan trọng nhất. Nhanh chóng là trong không khí.', N'Lần đầu tiên trong lịch sử của chúng tôi, Nike đã phát triển một bộ Zoom Air hoàn toàn mới. Nó nằm ở đế ngoài và mang lại cảm giác đàn hồi dưới chân, giúp bạn di chuyển nhanh hơn trên sân và tạo ra sự tách biệt khi điều đó quan trọng nhất—cho dù bạn đang ghi bàn, là người đầu tiên nhận bóng hay vượt qua các hậu vệ./Lồng tốc độ bên trong cấu trúc được làm từ vật liệu mỏng nhưng chắc chắn giúp cố định bàn chân vào đế ngoài mà không tăng thêm trọng lượng để khóa tối ưu./Đế ngoài cao su được thiết kế để tạo lực kéo trên bề mặt sân cỏ.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-MV-PI', N'Sân đấu sẽ là của bạn khi bạn tham gia IC Học viện Vapor 15. Nó được trang bị bộ Zoom Air và NikeSkin linh hoạt phía trên mang lại cảm giác chạm đặc biệt, nhờ đó bạn có thể chiếm ưu thế trong những phút cuối của trận đấu—khi điều đó quan trọng nhất. Nhanh chóng là trong không khí.', N'Lồng tốc độ bên trong cấu trúc được làm bằng vật liệu mỏng nhưng chắc chắn giúp cố định bàn chân vào đế ngoài mà không tăng thêm trọng lượng để khóa tối ưu./Dựa trên phân tích của Phòng thí nghiệm nghiên cứu thể thao Nike về chuyển động của người chơi, đế ngoài bằng cao su được thiết kế để cung cấp lực kéo đa hướng trên đường phố, sân đấu và các bề mặt trong nhà./Thiết kế được làm lại giúp cải thiện độ vừa vặn để mô phỏng bàn chân tốt hơn. Chúng tôi đã thực hiện điều này bằng cách tiến hành nhiều cuộc kiểm tra độ mòn trên hàng trăm vận động viên. Kết quả là phần ngón chân có đường nét hơn và khả năng khóa gót chân tốt hơn./Phần trên có NikeSkin, một chất liệu lưới mềm và dẻo được liên kết với nhau bằng một lớp phủ mỏng. Nó giúp kiểm soát bóng và thực sự mang lại cho bạn cảm giác như đang chơi bóng bằng chân trần.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-RX-WH', N'Với lớp đệm hỗ trợ được thiết kế để giúp bạn chạy êm ái, Nike InfinityRN 4 là một sản phẩm hoàn toàn mới được yêu thích quen thuộc. Nó được làm từ bọt Nike ReactX hoàn toàn mới của chúng tôi, giúp bạn hồi phục năng lượng nhiều hơn 13% so với bọt Nike React, để giúp bạn luôn tươi mới và bồng bềnh. (Hơn nữa? Nike ReactX giảm lượng khí thải carbon ở một đôi đế giữa ít nhất 43% so với bọt Nike React.*) Chúng tôi đã kết hợp bọt ReactX với Flyknit vừa vặn nhất của Nike Running để bạn có thể cởi ra mọi lúc, mọi nơi với sự hỗ trợ phía trên an toàn và khả năng thở. Đó là loại giày có thể mang lại cho bạn sự an tâm vô giá để đi nhanh hơn và xa hơn nhờ thiết kế trực quan hỗ trợ mọi sải chân. * Lượng khí thải carbon của ReactX dựa trên đánh giá toàn diện do PRé Sustainability BV và Intertek China xem xét. Các thành phần đế giữa khác như túi khí, tấm lót hoặc các công thức xốp khác không được xem xét.', N'Phiên bản Nike InfinityRN 4 này vẫn mang lại cảm giác lái sang trọng và êm ái, với lớp bọt ReactX mới mang lại nhiều sự hỗ trợ hơn. Phần mũi giày Flyknit được cải tiến và rộng hơn giúp bàn chân của bạn có cảm giác ổn định và an toàn./Càng có nhiều lớp đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Bọt ReactX mang đến cho bạn cảm giác êm ái đến không ngờ, giúp bạn vượt qua giới hạn của mình.

/Giày càng phản ứng nhanh thì bạn càng nhận được nhiều năng lượng hơn sau mỗi bước đi. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít nỗ lực hơn một chút, những đôi giày có độ đàn hồi cao sẽ giúp bạn bước đi uyển chuyển hơn một chút để đạt được hiệu quả cao hơn trong quá trình chạy. Bọt ReactX mang lại cho bạn +13% năng lượng hoàn trả so với bọt React, giúp bạn luôn sảng khoái và bồng bềnh trong suốt quá trình chạ/Giày càng phản ứng nhanh thì bạn càng nhận được nhiều năng lượng hơn sau mỗi bước đi. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít nỗ lực hơn một chút, những đôi giày có độ đàn hồi cao sẽ giúp bạn bước đi uyển chuyển hơn một chút để đạt được hiệu quả cao hơn trong quá trình chạy. Bọt ReactX mang lại cho bạn +13% năng lượng hoàn trả so với bọt React, giúp bạn luôn sảng khoái và bồng bềnh trong suốt quá trình chạ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-TL-BL', N'Bạn đã hoàn thiện kỹ năng của mình thông qua quá trình rèn luyện không ngừng nghỉ và truyền ngọn lửa bên trong vào nghề của mình. Bây giờ, khi sức nặng của trận đấu đè lên vai bạn, hãy nắm bắt cơ hội và thực hiện. Màu đỏ đậm và màu cam nhẹ nhàng thể hiện thái độ dũng cảm nhưng vững vàng cần có để đón nhận những khoảnh khắc đầy áp lực này. Được trang bị bộ Zoom Air dành riêng cho bóng đá và cảm ứng dính, giày Elite giúp bạn—và những ngôi sao lớn nhất thế giới—đưa trận đấu của bạn lên một tầm cao mới và đặt bàn đạp xuống trong những phút suy yếu của trận đấu, khi trận đấu quan trọng nhất.', N'Bộ phận Zoom Air dài 3/4 nằm trong tấm đế và mang lại cảm giác đàn hồi dưới chân, giúp bạn di chuyển nhanh trên sân và tạo ra sự tách biệt khi điều đó quan trọng nhất—dù bạn đang ghi bàn hay là người đầu tiên ghi bàn bóng hoặc vượt qua các hậu vệ./Flyknit quấn mắt cá chân của bạn bằng vải mềm, co giãn để mang lại cảm giác an toàn. Thiết kế được làm lại giúp cải thiện độ vừa vặn để mô phỏng bàn chân tốt hơn. Chúng tôi đã thực hiện điều này bằng cách tiến hành nhiều cuộc kiểm tra độ mòn trên hàng trăm vận động viên. Kết quả là phần ngón chân có đường nét hơn và vừa vặn hơn với gót chân./Phần trên được làm từ Vaporposite+, kết hợp lưới lưới có độ bám tốt với vật liệu cao cấp để kiểm soát bóng tối ưu ở tốc độ cao. Chất liệu mang lại cảm giác xúc giác trên bề mặt của phần trên. Nó mềm mại nhưng ổn định và quấn chặt quanh chân bạn, mang lại cho bạn cảm giác chạm bóng tự nhiên hơn khi rê bóng, chuyền bóng hoặc ghi bàn./Đinh tán ba sao cung cấp lực kéo đa hướng với mỗi bước đi, do đó bạn có thể thay đổi hướng đi một cách nhanh chóng và tự tin. Đinh tán ở gót chân mang lại lực kéo và sự ổn định khi phanh. Các đinh tán ở giữa mũi giày giúp bạn bám đường khi bắt đầu bùng nổ.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-ZF-GR', N'Ban đầu được đặt tên là "Blue Ribbon Sports", Nike được thành lập vào năm 1964 bởi Bill Bowerman, huấn luyện viên điền kinh của Đại học Oregon và học trò cũ của ông, Phil Knight. Công ty chính thức đổi tên thành tên hiện tại vào năm 1971 và được công nhận rộng rãi nhờ logo "Swoosh" mang tính biểu tượng và khẩu hiệu "Just Do It". Nike đã liên tục giới thiệu các sản phẩm cải tiến, chẳng hạn như công nghệ đệm Nike Air và hệ thống Adapt tự buộc dây, đã cách mạng hóa ngành công nghiệp giày thể thao. Ngoài ra, Nike còn được biết đến nhờ mối quan hệ hợp tác và hợp tác thành công với các vận động viên nổi tiếng, bao gồm Michael Jordan và LeBron James, cũng như các thương hiệu thời trang như OFF-WHITE và Supreme, củng cố sự phù hợp về văn hóa và tiếp tục phổ biến.', N'Phiên bản Nike InfinityRN 4 này vẫn mang lại cảm giác lái sang trọng và êm ái, với lớp bọt ReactX mới mang lại nhiều sự hỗ trợ hơn. Phần mũi giày Flyknit được cải tiến và rộng hơn giúp bàn chân của bạn có cảm giác ổn định và an toàn./Càng có nhiều lớp đệm dưới chân thì trải nghiệm chạy của bạn càng mềm mại và thoải mái hơn. Đệm giúp làm dịu tác động khi chân bạn chạm đất. Bọt ReactX mang đến cho bạn cảm giác êm ái đến không ngờ, giúp bạn vượt qua giới hạn của mình.

/Giày càng phản ứng nhanh thì bạn càng nhận được nhiều năng lượng hơn sau mỗi bước đi. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít nỗ lực hơn một chút, những đôi giày có độ đàn hồi cao sẽ giúp bạn bước đi uyển chuyển hơn một chút để đạt được hiệu quả cao hơn trong quá trình chạy. Bọt ReactX mang lại cho bạn +13% năng lượng hoàn trả so với bọt React, giúp bạn luôn sảng khoái và bồng bềnh trong suốt quá trình chạ/Giày càng phản ứng nhanh thì bạn càng nhận được nhiều năng lượng hơn sau mỗi bước đi. Cho dù bạn muốn chạy nhanh hơn một chút hay tốn ít nỗ lực hơn một chút, những đôi giày có độ đàn hồi cao sẽ giúp bạn bước đi uyển chuyển hơn một chút để đạt được hiệu quả cao hơn trong quá trình chạy. Bọt ReactX mang lại cho bạn +13% năng lượng hoàn trả so với bọt React, giúp bạn luôn sảng khoái và bồng bềnh trong suốt quá trình chạ')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK-ZF-WH', N'Đảm bảo hoạt động tập luyện hàng tuần của bạn và phá vỡ kỷ lục cá nhân của bạn bằng một đôi giày bền chắc sẽ đồng hành cùng bạn khắp mọi nơi, từ những cuộc chạy bộ hàng ngày cho đến vạch đích của cuộc đua yêu thích của bạn. Nó mang lại sự thoải mái và tin cậy, nhưng với cảm giác đẩy để tăng thêm tốc độ và sự mới mẻ. Mức độ linh hoạt này rất hiếm trong thế giới chạy bộ. ', N'Bọt ZoomX mới được tích hợp ở đế giữa giúp đôi giày vốn đã đáng tin cậy và phổ biến đạt đến mức hiệu suất mà Zoom Fly 4 chưa từng đạt được trước đây. Sự bổ sung này giúp hệ thống đệm nhẹ hơn và phản hồi nhanh hơn. Hãy tận dụng những tính năng linh hoạt này để giải phóng sải chân của bạn, tăng tốc độ và tận hưởng niềm vui trong quá trình chạy./Bàn chân trước và gót chân rộng hơn một chút để tạo nền tảng ổn định, hoàn hảo để tự tin xử lý các khúc cua và chạy dài./Phần trên được làm bằng lưới nhẹ giúp giày mềm hơn, thoáng khí hơn, phù hợp với hình dáng của bàn chân.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK - M1 - Ye', N'Đảm bảo hoạt động tập luyện hàng tuần của bạn và phá vỡ kỷ lục cá nhân của bạn bằng một đôi giày bền chắc sẽ đồng hành cùng bạn khắp mọi nơi, từ những cuộc chạy bộ hàng ngày cho đến vạch đích của cuộc đua yêu thích của bạn. Nó mang lại sự thoải mái và tin cậy, nhưng với cảm giác đẩy để tăng thêm tốc độ và sự mới mẻ. Mức độ linh hoạt này rất hiếm trong thế giới chạy bộ. ', N'Bọt ZoomX mới được tích hợp ở đế giữa giúp đôi giày vốn đã đáng tin cậy và phổ biến đạt đến mức hiệu suất mà Zoom Fly 4 chưa từng đạt được trước đây. Sự bổ sung này giúp hệ thống đệm nhẹ hơn và phản hồi nhanh hơn. Hãy tận dụng những tính năng linh hoạt này để giải phóng sải chân của bạn, tăng tốc độ và tận hưởng niềm vui trong quá trình chạy./Bàn chân trước và gót chân rộng hơn một chút để tạo nền tảng ổn định, hoàn hảo để tự tin xử lý các khúc cua và chạy dài./Phần trên được làm bằng lưới nhẹ giúp giày mềm hơn, thoáng khí hơn, phù hợp với hình dáng của bàn chân.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK - M2 - Ye', N'Với lớp đệm hỗ trợ được thiết kế để giúp bạn chạy êm ái, Nike InfinityRN 4 là một sản phẩm hoàn toàn mới được yêu thích quen thuộc. Nó được làm từ bọt Nike ReactX hoàn toàn mới của chúng tôi, giúp bạn hồi phục năng lượng nhiều hơn 13% so với bọt Nike React, để giúp bạn luôn tươi mới và bồng bềnh. (Hơn nữa? Nike ReactX giảm lượng khí thải carbon ở một đôi đế giữa ít nhất 43% so với bọt Nike React.*) Chúng tôi đã kết hợp bọt ReactX với Flyknit vừa vặn nhất của Nike Running để bạn có thể cởi ra mọi lúc, mọi nơi với sự hỗ trợ phía trên an toàn và khả năng thở. Đó là loại giày có thể mang lại cho bạn sự an tâm vô giá để đi nhanh hơn và xa hơn nhờ thiết kế trực quan hỗ trợ mọi sải chân. * Lượng khí thải carbon của ReactX dựa trên đánh giá toàn diện do PRé Sustainability BV và Intertek China xem xét. Các thành phần đế giữa khác như túi khí, tấm lót hoặc các công thức xốp khác không được xem xét.', N'Lần đầu tiên trong lịch sử của chúng tôi, Nike đã phát triển một bộ Zoom Air hoàn toàn mới. Nó nằm ở đế ngoài và mang lại cảm giác đàn hồi dưới chân, giúp bạn di chuyển nhanh hơn trên sân và tạo ra sự tách biệt khi điều đó quan trọng nhất—cho dù bạn đang ghi bàn, là người đầu tiên nhận bóng hay vượt qua các hậu vệ./Lồng tốc độ bên trong cấu trúc được làm từ vật liệu mỏng nhưng chắc chắn giúp cố định bàn chân vào đế ngoài mà không tăng thêm trọng lượng để khóa tối ưu./Đế ngoài cao su được thiết kế để tạo lực kéo trên bề mặt sân cỏ.')
INSERT [dbo].[MotaSP] ([Ma_SanPham], [Mota], [Thongso]) VALUES (N'NIK - MN - Wh', N'Hai mươi năm sau, những chiếc áo thấp này đã quay trở lại. Lấy cảm hứng từ logo và thiết kế Wings nguyên bản của Jordan 1, những đôi giày hàng ngày này luôn sẵn sàng cho mọi hoạt động. Hãy diện chúng với một vài chiếc quần jean rộng thùng thình, mặc chúng để trượt ván hay chỉ đơn giản là trông bay bổng—điều đó tùy thuộc vào bạn. Mũ giày bằng da mịn và logo dập nổi lớn sẽ giúp bạn nổi bật dù mặc trang phục cao hay thấp.', N'Lớp da sáng chế ở phía trên nói lên tính chất sang trọng thực sự của viên kim cương trong khi kết cấu giống như đường gân ở gót chân thể hiện tính chất hỗ trợ của ngọc trai./Bộ phận Zoom Air ở gót chân và bàn chân trước hỗ trợ tiếp đất và mang lại cho bạn cảm giác như bị đẩy. Chúng tôi kết hợp chúng với lớp bọt xốp mềm mại, đàn hồi để giúp đảm bảo cảm giác êm ái./Lưới chiều ở phía trên bền và kín. Bằng cách sử dụng vật liệu nhẹ, chúng tôi tạo đường rãnh thông hơi ở phía trên trông giống như đường gân của vỏ sò, giúp bạn kiềm chế trong những chuyển động bùng nổ. Các lỗ thủng theo vùng trên lưới sandwich và hệ thống thông gió ở cả hai bên mang lại sự thoáng khí.')
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5602, N'Phạm Công Nguyên', N'Nam', N'0876567884', N'Tiên Lãng, Hải Phòng', 1, N'congnguyen', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5603, N'Nguyễn Minh Đớp', N'Nữ', N'0784536888', N'Giao Thủy, Thanh Hóa', 2, N'minhdop', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5604, N'Nguyễn Đức Minh', N'Nam', N'0327568111', N'Đà Nẵng', 2, N'ducminh', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5605, N'Nguyễn Minh Đức', N'Nam', N'0876123456', N'Ý Yên, Nam Định', 2, N'ducdut', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5609, N'Nguyễn Đức Minh', N'Nam', N'0965871234', N'Ý Yên, Nam Định', 2, N'minmin', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5613, N'Phạm Công Tác', N'Nữ', N'091320944', N'Tiên Lãng, Hải Phòng', 2, N'congnguyen1', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5618, N'hà ngọc lan', N'Nữ', N'0987677888', N'Ý Yên, Nam Định', 2, N'ducngoc1233', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5620, N'hà ngọc lan', N'Nữ', N'0943086512', N'Hà Tĩnh', 2, N'ducngoc888', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5621, N'Bùi Bịp', N'Nữ', N'0978671888', N'Tiên Lãng, Hải Phòng', 2, N'minion123', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5622, N'Bùi Bịp Vãi', N'Nữ', N'0987645111', N'Cẩm Thủy, Thanh Hóa', 2, N'minhdopan', N'2')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5624, N'Tô Minh Huy', N'Nam', N'0785111677', N'Ý Yên, Nam Định', 2, N'minionda', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5625, N'hà ngọc lan', N'Nữ', N'0943086102', N'Tiên Lãng, Hải Phòng', 2, N'tytylady', N'123456')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5626, N'Xuân Phương', N'Nam', N'0943087111', N'Quảng Bình', 2, N'tutublue', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5627, N'Nguyễn minh dương', N'Nam', N'0943086777', N'Minh Tân, Yên Bái', 2, N'minhduong', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5628, N'Hà đức ngọc', N'Nam', N'0943086102', N'Minh Tân, Yên Bái', 1, N'ducngoc', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5630, N'Tô Lâm huy', N'Nam', N'0386754111', N'Cẩm Thủy, Thanh Hóa', 2, N'tuledaxua', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5636, N'đá thủ', N'Nam', N'0943086111', N'Tiên Lãng, Hải Phòng', 2, N'ducngoc123', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5637, N'Nguyễn Minh Dương', N'Nam', N'0987333737', N'Ninh Bình', 1, N'MinhDuong', N'787878')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5638, N'Phạm Công Nguyên', NULL, N'0987666777', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5639, N'Tat Thang', NULL, N'3333333333', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5640, N'Đấng', NULL, N'0944311222', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5641, N'Hoàng Bò', NULL, N'0955678111', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5642, N'Minh Đấng', NULL, N'0321411561', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5643, N'Đấng Ngáo', NULL, N'0312345444', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5644, N'Hà Ngọc Lan', NULL, N'0988777123', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5645, N'Nguyễn Đức Minh', NULL, N'0988777654', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5646, N'Bùi Bịp', NULL, N'0912311444', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5647, N'Nguyễn Đức Minh', NULL, N'0911876555', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5648, N'Bùi Bịp Vãi', NULL, N'0987666123', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5649, N'Hiếu Nguyên', NULL, N'0311421222', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5650, N'Nguyễn Đức Minh', NULL, N'0988777888', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5651, N'Nguyễn Đức Minh', NULL, N'0911222111', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5652, N'Hà Ngọc Lan', NULL, N'0911086111', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5653, N'Nguyễn Đức Minh', NULL, N'0987888777', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5654, N'Nguyễn Đức Minh', NULL, N'0877777777', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5655, N'Bùi Bịp Vãi', NULL, N'0888888888', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5656, N'Nguyễn Đức Minh', NULL, N'0911222222', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5657, N'Bùi Bịp', NULL, N'0000000000', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5658, N'Nguyễn Đức Minh', NULL, N'0943081111', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5659, N'Thắng Nguyễn', NULL, N'0999666555', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5660, N'Đớp Nguyên', NULL, N'0877111999', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5661, N'Hoàng Bò', NULL, N'0999111221', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5662, N'Lan', NULL, N'0560888777', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5663, N'Nguyễn Minh Đức', NULL, N'0311441121', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5664, N'Lan', NULL, N'0981728728', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5665, N'Nguyễn Minh Đức', NULL, N'0912301293', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5666, N'Bùi Bịp Vãi', NULL, N'1809238123', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5668, N'Bùi Bịp', NULL, N'0941341341', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5669, N'Bùi Bịp Vãi', NULL, N'7312783891', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5670, N'Nguyễn Minh Đức', N'Nam', N'0911111111', N'Das', 2, N'h', N'4')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5671, N'Hà Ngọc Lan', NULL, N'0911111112', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5672, N'Nguyễn Đức Minh', N'Nam', N'0911111111', N'Đà Nẵng', 2, N'ducdut2', N'1')
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5673, N'Nguyễn Đức Minh', NULL, N'0911551111', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5674, N'Hà Ngọc Lan', NULL, N'0344112787', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5675, N'Hà Ngọc Lan', NULL, N'0911111116', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5676, N'Lan', NULL, N'0908419024', NULL, NULL, NULL, NULL)
INSERT [dbo].[Nguoidung] ([Ma_Nguoidung], [Ten_Nguoidung], [Gioitinh], [Sodienthoai_nv], [Diachi_nv], [Ma_Chucvu], [Username], [Password]) VALUES (5677, N'Thanhthoai', N'Nữ', N'0931282520', N'Long An', 2, N'thoai', N'1')
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
INSERT [dbo].[Nhasanxuat] ([Ma_Nhasanxuat], [Ten_Nhasanxuat], [Sodienthoai_nsx], [Diachi_nsx], [Ghichu], [TrangThai]) VALUES (N'ADD', N'Vascara', N'0923123456', N'Hà Nội    ', N'Không', 0)
INSERT [dbo].[Nhasanxuat] ([Ma_Nhasanxuat], [Ten_Nhasanxuat], [Sodienthoai_nsx], [Diachi_nsx], [Ghichu], [TrangThai]) VALUES (N'BIT', N'GAFA', N'0675655677', N'Hải Phòng ', N'Không', 0)
INSERT [dbo].[Nhasanxuat] ([Ma_Nhasanxuat], [Ten_Nhasanxuat], [Sodienthoai_nsx], [Diachi_nsx], [Ghichu], [TrangThai]) VALUES (N'CON', N'Juno', N'0987666555', N'Hà Nội    ', N'Không', 0)
INSERT [dbo].[Nhasanxuat] ([Ma_Nhasanxuat], [Ten_Nhasanxuat], [Sodienthoai_nsx], [Diachi_nsx], [Ghichu], [TrangThai]) VALUES (N'MIZ', N'VinaGiay', N'0923456754', N'Hải Phòng ', N'Không', 0)
INSERT [dbo].[Nhasanxuat] ([Ma_Nhasanxuat], [Ten_Nhasanxuat], [Sodienthoai_nsx], [Diachi_nsx], [Ghichu], [TrangThai]) VALUES (N'NIK', N'Đông Hải', N'0876787666', N'Đà Nẵng   ', N'Không', 0)
GO
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD - P6 - Bl', N'Giày búp bê Vascara 1', N'Gray', 250000, N'ADD', N'JGS', N'extra1234', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-MB-WH', N'Guốc Vascara 1', N'Black', 190000, N'ADD', N'VBS', N'extra1234', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-MG-RE', N'Giày búp bê Vascara 2', N'White-Cream', 250000, N'ADD', N'JGS', N'extra9987', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-PA-WH', N'Giày Sneaker Vascara 1', N'White', 240000, N'ADD', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-PP-BL', N'Giày Sneaker Vascara 2', N'White', 245000, N'ADD', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-SB-WH', N'Guốc Vascara 2', N'Brown', 130000, N'ADD', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-SP-WH', N'Giày cao gót GAFA 4', N'Gray', 330000, N'BIT', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-SS-GR', N'Giày cao gót Vascara 2', N'Black', 330000, N'ADD', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-UL-GR', N'Giày cao gót Vascara 1', N'White-Cream', 520000, N'ADD', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'ADD-UR-WH', N'Giày búp bê Vascara 3', N'Black', 550000, N'ADD', N'JGS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT - F9 - pi', N'Giày Sneaker GAFA 1', N'White', 560000, N'BIT', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT - HX - Bl', N'Giày cao gót GAFA 1', N'White-Cream', 250000, N'BIT', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-BF-WH', N'Guốc GAFA 1', N'Black', 180000, N'BIT', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-BS-WH', N'Guốc GAFA 2', N'Gray', 750000, N'BIT', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-CG-WH', N'Giày cao gót GAFA 2', N'Black', 130000, N'BIT', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-FB-OR', N'Giày Sneaker GAFA 2', N'Pink', 800000, N'BIT', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-FD-YE', N'Giày Sneaker GAFA 3', N'Blue', 700000, N'BIT', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-RM-BL', N'Giày búp bê GAFA 1', N'Black', 100000, N'BIT', N'JGS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-RP-GR', N'Guốc GAFA 3', N'Black', 190000, N'BIT', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-SD-BL', N'Giày cao gót GAFA 3', N'Gray', 900000, N'BIT', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-SP-BL', N'Giày cao gót GAFA 4', N'Black', 800000, N'BIT', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'BIT-TS-BL', N'Guốc GAFA 4', N'Grown', 900000, N'BIT', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-C70-BL', N'Giày cao gót Juno 1 ', N'Red', 350000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-CC-BL', N'Giày cao gót Juno 2', N'White', 250000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-CRT-YL', N'Giày cao gót Juno 3', N'Black', 525000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-CTA-BL', N'Giày cao gót Juno 4', N'White-Cream', 570000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-CTA-WH', N'Giày cao gót Juno 5', N'Red', 650000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-CT-BL', N'Giày cao gót Juno 6', N'Black', 400000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-NBA-BL', N'Guốc Juno 1', N'Gray', 800000, N'CON', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-NO-RE', N'Giày cao gót Juno 7', N'White-Cream', 350000, N'CON', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-TDM-BL', N'Guốc Juno 2', N'Black', 300000, N'CON', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-TDM-PI', N'Guốc Juno 3', N'White-Cream', 400000, N'CON', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'CON-XG-GR', N'Guốc Juno 4', N'Brown', 400000, N'CON', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-AE-WH', N'Giày Sneaker Vina 1', N'White', 200000, N'MIZ', N'FBS', N'extra8512', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-LM-BL', N'Guốc Vina 1', N'Black', 410000, N'MIZ', N'VBS', N'extra8512', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-LZ-BL', N'Guốc Vina 2', N'Black', 380000, N'MIZ', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-MA-BL', N'Giày Sneaker Vina 2', N'Blue', 300000, N'MIZ', N'FBS', N'extra8512', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-MN-WH', N'Giày Sneaker Vina 3', N'White', 300000, N'MIZ', N'FBS', N'extra8512', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-MS-WH', N'Giày Sneaker Vina 4', N'Black', 210000, N'MIZ', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-NS-WH', N'Giày Sneaker Vina 5', N'White', 130000, N'MIZ', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-WD-WH', N'Guốc Vina 3', N'White-Cream', 220000, N'MIZ', N'VBS', N'extra8512', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-WF-WH', N'Guốc Vina 4', N'Gray', 200000, N'MIZ', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'MIZ-WL-WH', N'Guốc Vina 5', N'Red', 360000, N'MIZ', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK - M1 - Ye', N'Giày Sneaker Đông Hải 1', N'Black', 370000, N'NIK', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK - M2 - Ye', N'Giày Sneaker Đông Hải 2', N'Pink', 470000, N'NIK', N'FBS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK - MN - Wh', N'Giày Sneaker Đông Hải 3', N'White', 255000, N'NIK', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-AF-BL', N'Giày cao gót Đông Hải 1', N'Gray', 455000, N'NIK', N'FNS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-AJ-WH', N'Guốc Đông Hải 1', N'White', 410000, N'NIK', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-AW-BL', N'Giày búp bê Đông Hải 4', N'Black', 450000, N'NIK', N'JGS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-BM-BL', N'Giày cao gót Đông Hải 2', N'Black', 500000, N'NIK', N'FNS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-DF-BL', N'Giày búp bê Đông Hải 3', N'White-Cream', 900000, N'NIK', N'JGS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-FT-OR', N'Giày Sneaker Đông Hải 4', N'Blue', 256000, N'NIK', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-JB-WH', N'Guốc Đông Hải 3', N'Black', 590000, N'NIK', N'VBS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-JN-YL', N'Giày cao gót Đông Hải 3', N'Brown', 270000, N'NIK', N'FNS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-JO-RE', N'Nike Jordan One', N'White', 300000, N'NIK', N'VBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-JS-GR', N'Giày cao gót Đông Hải 4', N'Black', 400000, N'NIK', N'FNS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-MA-BL', N'Giày Sneaker Đông Hải 6', N'Blue', 200000, N'NIK', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-MV-PI', N'Giày Sneaker Đông Hải 5', N'White', 400000, N'NIK', N'FBS', N'extra2489', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-RX-WH', N'Giày búp bê Đông Hải 2', N'Red', 300000, N'NIK', N'JGS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-TL-BL', N'Giày Sneaker Đông Hải 7', N'Pink', 460000, N'NIK', N'FBS', N'extra0000', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-ZF-GR', N'Guốc Đông Hải 4', N'Black', 370000, N'NIK', N'VBS', N'extra5567', NULL, 0)
INSERT [dbo].[Sanpham] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia], [NhomGiay], [TrangThai]) VALUES (N'NIK-ZF-WH', N'Giày búp bê Đông Hải 1', N'Black', 525000, N'NIK', N'JGS', N'extra0000', NULL, 0)
GO
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD - P6 - Bl', N'39', 12)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD - P6 - Bl', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-MB-WH', N'40', 3)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-MB-WH', N'41', 2)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-MB-WH', N'43', 7)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-MG-RE', N'41', 0)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-MG-RE', N'43', 7)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PA-WH', N'40', 11)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PA-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PP-BL', N'39', 0)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PP-BL', N'40', 0)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PP-BL', N'41', 3)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-PP-BL', N'42', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SB-WH', N'39', 17)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SB-WH', N'40', 8)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SB-WH', N'41', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SP-WH', N'39', 4)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SP-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SP-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SP-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SS-GR', N'39', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SS-GR', N'40', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SS-GR', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-SS-GR', N'43', 3)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UL-GR', N'39', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UL-GR', N'40', 17)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UL-GR', N'42', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UR-WH', N'39', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UR-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UR-WH', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'ADD-UR-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT - F9 - pi', N'39', 6)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT - F9 - pi', N'40', 6)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT - HX - Bl', N'40', 5)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT - HX - Bl', N'42', 9)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BF-WH', N'39', 0)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BF-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BS-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BS-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BS-WH', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-BS-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-CG-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-CG-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-CG-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FB-OR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FB-OR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FB-OR', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FB-OR', N'42', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FD-YE', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FD-YE', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FD-YE', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-FD-YE', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RM-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RM-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RM-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RM-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RP-GR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RP-GR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RP-GR', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-RP-GR', N'42', 17)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SD-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SD-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SD-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SD-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SP-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SP-BL', N'40', 0)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-SP-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-TS-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-TS-BL', N'40', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-TS-BL', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'BIT-TS-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-C70-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-C70-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-C70-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-C70-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CC-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CC-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CC-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CC-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CRT-YL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CRT-YL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CRT-YL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CRT-YL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CTA-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CT-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CT-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CT-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-CT-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NBA-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NBA-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NBA-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NBA-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NO-RE', N'39', 20)
GO
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NO-RE', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NO-RE', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-NO-RE', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-PI', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-PI', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-PI', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-TDM-PI', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-XG-GR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-XG-GR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-XG-GR', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'CON-XG-GR', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-AE-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-AE-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-AE-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-AE-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LM-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LM-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LM-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LM-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LZ-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LZ-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LZ-BL', N'41', 17)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-LZ-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MA-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MA-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MA-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MA-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MN-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MN-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MN-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MN-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MS-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MS-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MS-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-MS-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-NS-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-NS-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-NS-WH', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-NS-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WD-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WD-WH', N'40', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WD-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WF-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WF-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WF-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WF-WH', N'42', 17)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WL-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WL-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WL-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'MIZ-WL-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK - M1 - Ye', N'39', 11)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK - M1 - Ye', N'40', 2)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK - M2 - Ye', N'39', 6)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK - MN - Wh', N'39', 22)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AF-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AF-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AF-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AF-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AJ-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AJ-WH', N'40', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AJ-WH', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AJ-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AW-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AW-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AW-BL', N'41', 3)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-AW-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-BM-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-BM-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-BM-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-BM-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-DF-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-DF-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-DF-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-DF-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-FT-OR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-FT-OR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-FT-OR', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-FT-OR', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JB-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JB-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JB-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JB-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JN-YL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JN-YL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JN-YL', N'41', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JN-YL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JO-RE', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JO-RE', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JO-RE', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JO-RE', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JS-GR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JS-GR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JS-GR', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-JS-GR', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MA-BL', N'39', 14)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MA-BL', N'40', 20)
GO
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MA-BL', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MA-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MV-PI', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MV-PI', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MV-PI', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-MV-PI', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-RX-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-RX-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-RX-WH', N'41', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-RX-WH', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-TL-BL', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-TL-BL', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-TL-BL', N'41', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-TL-BL', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-GR', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-GR', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-GR', N'41', 19)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-GR', N'42', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-WH', N'39', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-WH', N'40', 20)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-WH', N'41', 18)
INSERT [dbo].[SanPham_Size] ([Ma_Sanpham], [Ma_Size], [SoLuong]) VALUES (N'NIK-ZF-WH', N'42', 20)
GO
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'39', 39)
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'40', 40)
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'41', 41)
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'42', 42)
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'43', 43)
INSERT [dbo].[Size] ([Ma_Size], [_Size]) VALUES (N'44', 44)
GO
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD - AS - Wh', N'Adidas Adizero SL X22', N'White-Cream', 3000001, N'ADD', N'FBS', NULL)
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'BIT - HX - Wh', N'Bitis Hunter X30', N'White-Green', 3700000, N'BIT', N'FNS', NULL)
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD-DS-BL', N'Adidas Duramo SL', N'Black', 700000, N'ADD', N'JGS', N'extra1234')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD-FG-OR', N'Adidas Firm Star2', N'Orange', 2000000, N'ADD', N'FBS', N'extra8888')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD - PX - Bl', N'Adidas Pizero XL X18', N'Blue', 5600000, N'ADD', N'FBS', NULL)
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD - AS - Ye', N'Adidas Pirezo', N'Yellow', 2500000, N'ADD', N'FBS', NULL)
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD - AS - Da', N'Adidas Adizero SL X22', N'Dark', 2550000, N'ADD', N'FBS', N'extra0000')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N' - Bl', N'hihi', N'Blue', 900000, N'ADD', N'FBS', N'extra0000')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N'ADD - AS - Si', N'Adidas Adizero SL X22', N'Silver', 2550000, N'ADD', N'FNS', N'extra0000')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N' - Gr', N'hagygtf', N'Green', 7890000, N'BIT', N'FNS', N'extra0000')
INSERT [dbo].[ThungRac] ([Ma_Sanpham], [Ten_Sanpham], [Mausac], [Giagoc], [Ma_Nhasanxuat], [Ma_Loai], [Ma_Giamgia]) VALUES (N' - Wh', N'hihi', N'White', 7890000, N'ADD', N'FBS', N'extra0000')
GO
SET IDENTITY_INSERT [dbo].[YeuCau] ON 

INSERT [dbo].[YeuCau] ([ID], [Ma_Hoadon], [TrangThaiYeuCau], [LyDo], [TrangThaiXuLy], [ThoiGian]) VALUES (27, N'565324/12/202307/16/16', 0, N'Đổi đơn hàng', 1, CAST(N'2023-12-25T00:00:00.000' AS DateTime))
INSERT [dbo].[YeuCau] ([ID], [Ma_Hoadon], [TrangThaiYeuCau], [LyDo], [TrangThaiXuLy], [ThoiGian]) VALUES (35, N'560527/12/202309/37/12', 0, N'Đổi đơn hàng', 1, CAST(N'2023-12-27T00:00:00.000' AS DateTime))
INSERT [dbo].[YeuCau] ([ID], [Ma_Hoadon], [TrangThaiYeuCau], [LyDo], [TrangThaiXuLy], [ThoiGian]) VALUES (36, N'560527/12/202303/10/59', 0, N'Đổi đơn hàng', 1, CAST(N'2023-12-27T00:00:00.000' AS DateTime))
INSERT [dbo].[YeuCau] ([ID], [Ma_Hoadon], [TrangThaiYeuCau], [LyDo], [TrangThaiXuLy], [ThoiGian]) VALUES (37, N'560527/12/202303/37/17', 0, N'Đổi đơn hàng', 1, CAST(N'2023-12-27T00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[YeuCau] OFF
GO
ALTER TABLE [dbo].[AnhSP]  WITH CHECK ADD  CONSTRAINT [FK_AnhSP_Sanpham] FOREIGN KEY([Ma_Sanpham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AnhSP] CHECK CONSTRAINT [FK_AnhSP_Sanpham]
GO
ALTER TABLE [dbo].[Chitiet_Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Chitiet_Hoadon_Hoadon] FOREIGN KEY([Ma_Hoadon])
REFERENCES [dbo].[Hoadon] ([Ma_Hoadon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chitiet_Hoadon] CHECK CONSTRAINT [FK_Chitiet_Hoadon_Hoadon]
GO
ALTER TABLE [dbo].[Chitiet_Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Chitiet_Hoadon_Sanpham] FOREIGN KEY([Ma_Sanpham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Chitiet_Hoadon] CHECK CONSTRAINT [FK_Chitiet_Hoadon_Sanpham]
GO
ALTER TABLE [dbo].[DanhgiaSP]  WITH CHECK ADD  CONSTRAINT [FK_DanhgiaSP_Nguoidung] FOREIGN KEY([Ma_Nguoidung])
REFERENCES [dbo].[Nguoidung] ([Ma_Nguoidung])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DanhgiaSP] CHECK CONSTRAINT [FK_DanhgiaSP_Nguoidung]
GO
ALTER TABLE [dbo].[DanhgiaSP]  WITH CHECK ADD  CONSTRAINT [FK_DanhgiaSP_Sanpham] FOREIGN KEY([Ma_Sanpham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
GO
ALTER TABLE [dbo].[DanhgiaSP] CHECK CONSTRAINT [FK_DanhgiaSP_Sanpham]
GO
ALTER TABLE [dbo].[Giohang]  WITH CHECK ADD  CONSTRAINT [FK_Giohang_Nguoidung] FOREIGN KEY([Ma_Khachhang])
REFERENCES [dbo].[Nguoidung] ([Ma_Nguoidung])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Giohang] CHECK CONSTRAINT [FK_Giohang_Nguoidung]
GO
ALTER TABLE [dbo].[Giohang]  WITH CHECK ADD  CONSTRAINT [FK_Giohang_Sanpham] FOREIGN KEY([Ma_sanpham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
GO
ALTER TABLE [dbo].[Giohang] CHECK CONSTRAINT [FK_Giohang_Sanpham]
GO
ALTER TABLE [dbo].[Hoadon]  WITH CHECK ADD  CONSTRAINT [FK_Hoadon_Nguoidung] FOREIGN KEY([Ma_Khachhang])
REFERENCES [dbo].[Nguoidung] ([Ma_Nguoidung])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Hoadon] CHECK CONSTRAINT [FK_Hoadon_Nguoidung]
GO
ALTER TABLE [dbo].[MotaSP]  WITH CHECK ADD  CONSTRAINT [FK_MotaSP_Sanpham] FOREIGN KEY([Ma_SanPham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
GO
ALTER TABLE [dbo].[MotaSP] CHECK CONSTRAINT [FK_MotaSP_Sanpham]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_ChucVu] FOREIGN KEY([Ma_Chucvu])
REFERENCES [dbo].[ChucVu] ([Ma_Chucvu])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_ChucVu]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Discount] FOREIGN KEY([Ma_Giamgia])
REFERENCES [dbo].[Discount] ([Ma_Giamgia])
ON UPDATE SET NULL
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Discount]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_LoaiGiay] FOREIGN KEY([Ma_Loai])
REFERENCES [dbo].[LoaiGiay] ([Ma_Loai])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_LoaiGiay]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Nhasanxuat] FOREIGN KEY([Ma_Nhasanxuat])
REFERENCES [dbo].[Nhasanxuat] ([Ma_Nhasanxuat])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Nhasanxuat]
GO
ALTER TABLE [dbo].[SanPham_Size]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size_Sanpham] FOREIGN KEY([Ma_Sanpham])
REFERENCES [dbo].[Sanpham] ([Ma_Sanpham])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham_Size] CHECK CONSTRAINT [FK_SanPham_Size_Sanpham]
GO
ALTER TABLE [dbo].[SanPham_Size]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_Size_Size] FOREIGN KEY([Ma_Size])
REFERENCES [dbo].[Size] ([Ma_Size])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[SanPham_Size] CHECK CONSTRAINT [FK_SanPham_Size_Size]
GO
ALTER TABLE [dbo].[YeuCau]  WITH CHECK ADD  CONSTRAINT [FK_YeuCau_Hoadon1] FOREIGN KEY([Ma_Hoadon])
REFERENCES [dbo].[Hoadon] ([Ma_Hoadon])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[YeuCau] CHECK CONSTRAINT [FK_YeuCau_Hoadon1]
GO
/****** Object:  StoredProcedure [dbo].[ApDung_Voucher]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ApDung_Voucher]
@masp varchar(20), @madk varchar(20)
as
begin
declare @voucher varchar(20)
select @voucher = Ma_Giamgia from Discount where Ma_Dieukien = @madk
update Sanpham set Ma_Giamgia = @voucher  where Ma_Sanpham = @masp
end
GO
/****** Object:  StoredProcedure [dbo].[Bo_Voucher]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Bo_Voucher]
@ma varchar(20)
as
update Sanpham set Ma_Giamgia = 'extra0000' where Ma_Sanpham = @ma
GO
/****** Object:  StoredProcedure [dbo].[CapNhat_SoLuong_SauHuy]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[CapNhat_SoLuong_SauHuy]
@ma varchar(100), @si int, @sl int
as
update SanPham_Size set SoLuong = SoLuong + @sl where Ma_Sanpham = @ma and Ma_Size = @si
GO
/****** Object:  StoredProcedure [dbo].[ChiTietHoaDon_ChuaXuLy]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTietHoaDon_ChuaXuLy]
@ma varchar(50)
as
select ct.Ma_Hoadon as 'MaHoadon',sp.Ma_Sanpham as 'MaSanpham',sp.Ten_Sanpham,asp.Link1,asp.Link2,asp.Link3,ct.size,ct.Soluong,sp.Giagoc,
sp.Ma_Giamgia as 'MaGiamgia',
case when di.Ma_Giamgia is not null then sp.Giagoc*(1-di.Tilegiamgia)*ct.Soluong else sp.Giagoc*ct.Soluong end as 'ThanhTien',
case when ct.Trangthai is null then N'Chờ' else N'Đã xác nhận' end as 'Trang_Thai',ct.Trangthai
from Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia join AnhSP asp on sp.Ma_Sanpham = asp.Ma_Sanpham
where 
	 ct.Ma_Sanpham = sp.Ma_Sanpham
	and ct.Ma_Hoadon = @ma
GO
/****** Object:  StoredProcedure [dbo].[ChiTietSanPham]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ChiTietSanPham]
as
select sp.Ma_Sanpham,sp.Ten_Sanpham,sp.Mausac,nsx.Ma_Nhasanxuat,nsx.Ten_Nhasanxuat,lg.Ma_Loai,lg.Ten_loai,asp.Link1,asp.Link2,asp.Link3,sp.Giagoc
	from Sanpham sp , LoaiGiay lg,Nhasanxuat nsx, AnhSP asp
	where sp.Ma_Loai = lg.Ma_Loai 
			and sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat and sp.Ma_Sanpham = asp.Ma_Sanpham
GO
/****** Object:  StoredProcedure [dbo].[DoanhThu_Thang]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DoanhThu_Thang]
@thang int
as
select sum(ThanhTien) as 'sodem'
from Hoadon 
where TrangthaiHD = 2 and MONTH(Ngaydathang) = @thang

GO
/****** Object:  StoredProcedure [dbo].[GetSanphamhoadon]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetSanphamhoadon]
(
	@mahoadon varchar(100)
)
as
begin
	select s.Ma_Sanpham, s.Ten_Sanpham, c.Size, c.Soluong, c.Giaban, s.Mausac, a.Link1 from dbo.Chitiet_Hoadon as c
	join Sanpham as s on s.Ma_Sanpham = c.Ma_Sanpham
	join AnhSP as a on a.Ma_Sanpham = s.Ma_Sanpham
	where c.Ma_Hoadon = @mahoadon
end
GO
/****** Object:  StoredProcedure [dbo].[HD_ChuaXuLy]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HD_ChuaXuLy]
as
select hd.Ma_Hoadon as 'MaHoadon', nd.Ma_Nguoidung as 'MaKhachhang',nd.Ten_Nguoidung as 'TenNguoidung',nd.Sodienthoai_nv as 'sdt',hd.Diachigiaohang as 'Diachigiaohang',hd.Ngaydathang,hd.PhuongthucTT,hd.TrangthaiTT,
Sum(
case when di.Ma_Giamgia is not null then sp.Giagoc*(1-di.Tilegiamgia)*ct.Soluong else sp.Giagoc*ct.Soluong end ) + 10000 as 'ThanhTien',
case when hd.TrangthaiHD = 0 then N'Chưa xử lý' else N'Đã xử lý' end as 'Trangthaihoadon',hd.TrangthaiHD
from Hoadon hd,Nguoidung nd,Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia
where hd.Ma_Khachhang = nd.Ma_Nguoidung
	and hd.Ma_Hoadon = ct.Ma_Hoadon 
	and ct.Ma_Sanpham = sp.Ma_Sanpham
	and hd.TrangthaiHD =0
group by hd.Ma_Hoadon, nd.Ma_Nguoidung,nd.Ten_Nguoidung,nd.Sodienthoai_nv,hd.Diachigiaohang,hd.PhuongthucTT,hd.TrangthaiTT,hd.TrangthaiHD,hd.Ngaydathang
GO
/****** Object:  StoredProcedure [dbo].[HD_DaGiao]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HD_DaGiao]
as
select hd.Ma_Hoadon as 'MaHoadon', nd.Ma_Nguoidung as 'MaKhachhang',nd.Ten_Nguoidung as 'TenNguoidung',nd.Sodienthoai_nv as 'sdt',hd.Diachigiaohang as 'Diachigiaohang',hd.Ngaydathang,hd.PhuongthucTT,hd.TrangthaiTT,
hd.ThanhTien,
case when hd.TrangthaiHD is null then N'Chưa xử lý' 
		when hd.TrangthaiHD = 1 then N'Đang giao hàng'
		when hd.TrangthaiHD = 2 then N'Giao hàng thành công'
 end as 'Trangthaihoadon'
,hd.TrangthaiHD
from Hoadon hd,Nguoidung nd
where hd.Ma_Khachhang = nd.Ma_Nguoidung
	and hd.TrangthaiHD = 2

GO
/****** Object:  StoredProcedure [dbo].[HD_DaXuLy]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HD_DaXuLy]
as
select hd.Ma_Hoadon as 'MaHoadon', nd.Ma_Nguoidung as 'MaKhachhang',nd.Ten_Nguoidung as 'TenNguoidung',nd.Sodienthoai_nv as 'sdt',hd.Diachigiaohang as 'Diachigiaohang',hd.Ngaydathang,hd.PhuongthucTT,hd.TrangthaiTT,
hd.ThanhTien,
case when hd.TrangthaiHD is null then N'Chưa xử lý' 
		when hd.TrangthaiHD = 1 then N'Đang giao hàng'
		when hd.TrangthaiHD = 2 then N'Giao hàng thành công'
 end as 'Trangthaihoadon'
,hd.TrangthaiHD
from Hoadon hd,Nguoidung nd
where hd.Ma_Khachhang = nd.Ma_Nguoidung
	and hd.TrangthaiHD = 1

GO
/****** Object:  StoredProcedure [dbo].[HienThiSanPham]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[HienThiSanPham]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    STRING_AGG(si._Size, ', ') AS 'All_Size',
    SUM(sp_s.SoLuong) AS 'So_Luong',
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
	WHERE 
        sp.TrangThai = 0 
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Huy_HoaDon]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Huy_HoaDon]
@mahd varchar(50)
as
begin

if(@mahd in (select Ma_Hoadon from YeuCau))
begin
	update YeuCau set TrangThaiXuLy = 1 where Ma_Hoadon = @mahd
	delete from Hoadon where Ma_Hoadon = @mahd
end
else
begin

delete from Hoadon where Ma_Hoadon = @mahd

end

end
GO
/****** Object:  StoredProcedure [dbo].[Huy_HoaDon1]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Huy_HoaDon1]
@mahd varchar(50)
as
begin

if(@mahd in (select Ma_Hoadon from YeuCau))
begin
	update YeuCau set TrangThaiXuLy = 1 where Ma_Hoadon = @mahd
	delete from Hoadon where Ma_Hoadon = @mahd
end
else
begin

delete from Hoadon where Ma_Hoadon = @mahd

end
end
GO
/****** Object:  StoredProcedure [dbo].[KhoiPhuc]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[KhoiPhuc]
@MaSP varchar(20)
as
begin
	insert into Sanpham select * from ThungRac where Ma_Sanpham = @MaSP
	delete from ThungRac where Ma_Sanpham = @MaSP

end
GO
/****** Object:  StoredProcedure [dbo].[KiemTra_Tai_Khoan]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[KiemTra_Tai_Khoan]
@TaiKhoan varchar(20), @Mat_Khau varchar(20)
as
begin
	if exists (select * from Nguoidung where Username = @TaiKhoan and Password = @Mat_Khau and Ma_Chucvu = 1)
		select 1 as code
	else if exists (select * from Nguoidung where Username = @TaiKhoan and Password = @Mat_Khau and Ma_Chucvu = 2)
		select 2 as code
		else if exists (select * from Nguoidung where Username = @TaiKhoan and Password != @Mat_Khau)
		select 3 as code
		
end
GO
/****** Object:  StoredProcedure [dbo].[Kiemtra_username]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Kiemtra_username] 
as
select Username from Nguoidung
GO
/****** Object:  StoredProcedure [dbo].[LaySize_Moi]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LaySize_Moi]
@MaSP varchar(20)
as
select si.Ma_Size,si._Size from Size si where si.Ma_Size not in (select Ma_Size from SanPham_Size where Ma_Sanpham = @MaSP)

GO
/****** Object:  StoredProcedure [dbo].[LichSuMH]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[LichSuMH]
@ma int
as
select * from LichSuMuaHang where Ma_Nguoidung = @ma
GO
/****** Object:  StoredProcedure [dbo].[Loc_NhaSanXuat]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Loc_NhaSanXuat]
@nsx varchar(50)
as
begin
SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    STRING_AGG(si._Size, ', ') AS 'All_Size',
    SUM(sp_s.SoLuong) AS 'So_Luong',
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where nsx.Ten_Nhasanxuat Like  '%'+@nsx+'%'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
	
end
GO
/****** Object:  StoredProcedure [dbo].[SanPham_daApDung_Voucher]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SanPham_daApDung_Voucher]
as
SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
	sp.Ma_Giamgia,
    sp.Giagoc,
	sp.Giagoc - sp.Giagoc*ds.Tilegiamgia as 'GiaApDung'
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
LEFT OUTER JOIN 
	Discount ds on ds.Ma_Giamgia = sp.Ma_Giamgia
where sp.Ma_Giamgia <> 'extra0000' 
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
	sp.Ma_Giamgia,
	ds.Tilegiamgia,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Size_SoLuong]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Size_SoLuong]
as
select sp.Ma_Sanpham,sp.Ten_Sanpham,asp.Link1,asp.Link2,asp.Link3,sp_s.Ma_Size,sp_s.SoLuong 
from SanPham_Size sp_s join Sanpham sp on  sp.Ma_Sanpham = sp_s.Ma_Sanpham, AnhSP asp
where sp.Ma_Sanpham = asp.Ma_Sanpham
GO
/****** Object:  StoredProcedure [dbo].[Size_theoSanPham]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Size_theoSanPham]
@MaSP varchar(50)
as
select sp.Ma_Sanpham,sp.Ten_Sanpham,asp.Link1,asp.Link2,asp.Link3,sp_s.Ma_Size,sp_s.SoLuong 
from SanPham_Size sp_s join Sanpham sp on  sp.Ma_Sanpham = sp_s.Ma_Sanpham, AnhSP asp
where sp.Ma_Sanpham = asp.Ma_Sanpham and sp.Ma_Sanpham = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[SoHoaDon_ChuaXuLy]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[SoHoaDon_ChuaXuLy]
as
with Bang_dem as( 
select hd.Ma_Hoadon, nd.Ma_Nguoidung ,nd.Ten_Nguoidung ,nd.Sodienthoai_nv,hd.Diachigiaohang ,hd.Ngaydathang,hd.PhuongthucTT,hd.TrangthaiTT,hd.TrangthaiHD
from Hoadon hd,Nguoidung nd,Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia
where hd.Ma_Khachhang = nd.Ma_Nguoidung
	and hd.Ma_Hoadon = ct.Ma_Hoadon 
	and ct.Ma_Sanpham = sp.Ma_Sanpham
	and hd.TrangthaiHD is null
group by hd.Ma_Hoadon, nd.Ma_Nguoidung,nd.Ten_Nguoidung,nd.Sodienthoai_nv,hd.Diachigiaohang,hd.PhuongthucTT,hd.TrangthaiTT,hd.TrangthaiHD,hd.Ngaydathang 
)
select count(*) as 'sodem' from Bang_dem
GO
/****** Object:  StoredProcedure [dbo].[Them_YC]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Them_YC]
@mahoadon varchar(100), @lydo nvarchar(100), @thoigian date, @ttyc int, @ttxl int
as

insert YeuCau(Ma_Hoadon,LyDo,ThoiGian,TrangThaiYeuCau,TrangThaiXuLy) values(@mahoadon,@lydo,@thoigian,@ttyc,@ttxl)
GO
/****** Object:  StoredProcedure [dbo].[ThemSP]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThemSP] 
@maso varchar(10), @tensanpham nvarchar(50), @mausac nvarchar(50), @mansx varchar(10), @maloai varchar(10),@giagoc int
as
	insert Sanpham(Ma_Sanpham,Ten_Sanpham,Mausac,Ma_Nhasanxuat,Ma_Loai,Giagoc) values(@maso,@tensanpham,@mausac,@mansx,@maloai,@giagoc)
GO
/****** Object:  StoredProcedure [dbo].[ThongTin_NguoiDung]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[ThongTin_NguoiDung]
as
select Ma_Nguoidung,Username,Password,Ten_Nguoidung,Gioitinh,case when Ma_Chucvu = 1 then N'Nhân viên' when Ma_Chucvu = 2 then N'Khách hàng' end as 'Chucvu',Sodienthoai_nv,Diachi_nv,Ma_Chucvu from Nguoidung
GO
/****** Object:  StoredProcedure [dbo].[ThungRac_proc]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[ThungRac_proc]
as
select * from ThungRac
GO
/****** Object:  StoredProcedure [dbo].[Tim_size]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Tim_size]
@MaSP varchar(20), @MaSize varchar(10)
as
select * from SanPham_Size where Ma_Sanpham = @MaSP and Ma_Size = @MaSize
GO
/****** Object:  StoredProcedure [dbo].[TimKiem_NguoiDung]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimKiem_NguoiDung]
@ten nvarchar(50)
as
select nd.Ma_Nguoidung,nd.Username,nd.Password,nd.Ten_Nguoidung,nd.Gioitinh,cv.TenChucVu as 'Chucvu',nd.Sodienthoai_nv,nd.Diachi_nv,nd.Ma_Chucvu
from Nguoidung nd, ChucVu cv
where nd.Ma_Chucvu = cv.Ma_Chucvu and nd.Ten_Nguoidung Like N'%'+@ten+'%'
GO
/****** Object:  StoredProcedure [dbo].[TimTen_All]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimTen_All]
@tensp nvarchar(50)
as
SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    STRING_AGG(si._Size, ', ') AS 'All_Size',
    SUM(sp_s.SoLuong) AS 'So_Luong',
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Ten_Sanpham like N'%'+@tensp+'%'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[TimTen_NSX]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[TimTen_NSX]
@nsx nvarchar(50),
@tensp nvarchar(50)
as
SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    STRING_AGG(si._Size, ', ') AS 'All_Size',
    SUM(sp_s.SoLuong) AS 'So_Luong',
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where nsx.Ten_Nhasanxuat = @nsx and sp.Ten_Sanpham like N'%'+@tensp+'%'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_Miz_All]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Voucher_Miz_All]
as
SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Ma_Giamgia = 'extra0000' and nsx.Ma_Nhasanxuat = 'Miz'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_SP_ALL]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Voucher_SP_ALL]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Ma_Giamgia = 'extra0000'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_SP_hon1cu_Addidas]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Voucher_SP_hon1cu_Addidas]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Giagoc > 1000000 and nsx.Ma_Nhasanxuat = 'ADD'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_SP_hon2cu]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Voucher_SP_hon2cu]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Giagoc > 2000000 and sp.Ma_Giamgia = 'extra0000'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_SP_hon3cu_Nike]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Voucher_SP_hon3cu_Nike]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where sp.Giagoc > 3000000 and nsx.Ma_Nhasanxuat = 'NIK' and sp.Ma_Giamgia = 'extra0000'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[Voucher_SP_Nike_Adidas]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[Voucher_SP_Nike_Adidas]
as
	SELECT 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc
FROM 
    Sanpham sp
LEFT OUTER JOIN 
    AnhSP asp ON sp.Ma_Sanpham = asp.Ma_Sanpham
LEFT OUTER JOIN 
    SanPham_Size sp_s ON sp.Ma_Sanpham = sp_s.Ma_Sanpham
LEFT OUTER JOIN 
    LoaiGiay lg ON sp.Ma_Loai = lg.Ma_Loai
LEFT OUTER JOIN 
    Size si ON sp_s.Ma_Size = si.Ma_Size
LEFT OUTER JOIN 
    Nhasanxuat nsx ON sp.Ma_Nhasanxuat = nsx.Ma_Nhasanxuat
where nsx.Ma_Nhasanxuat = 'ADD' or nsx.Ma_Nhasanxuat = 'NIK' and sp.Ma_Giamgia = 'extra0000'
GROUP BY 
    sp.Ma_Sanpham,
    sp.Ten_Sanpham,
    sp.Mausac,
    nsx.Ten_Nhasanxuat,
    lg.Ten_loai,
    asp.Link1,
    asp.Link2,
    asp.Link3,
    sp.Giagoc;
GO
/****** Object:  StoredProcedure [dbo].[XacNhan_SanPham]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[XacNhan_SanPham]
@MaHoadon varchar(50), @MaSanpham varchar(50), @Size int, @soluong int
as
update Chitiet_Hoadon set Trangthai = 1 where Ma_Hoadon = @MaHoadon and Ma_Sanpham =@MaSanpham and size = @Size

update SanPham_Size set SoLuong = SoLuong - @soluong where Ma_Sanpham = @MaSanpham and Ma_Size = @Size
GO
/****** Object:  StoredProcedure [dbo].[XacNhanGiaoHang]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XacNhanGiaoHang]
@manguoidung varchar(50), @mahoadon varchar(50)
as
begin

update Hoadon set TrangthaiHD = 2, TrangthaiTT = N'Đã thanh toán' where Ma_Hoadon = @mahoadon 

insert into LichSuMuaHang(Ma_Nguoidung,MaHoadon,Ngaydathang,MaSanpham,Ten_Sanpham,Link1,Link2,Link3,size,Soluong,Giagoc,MaGiamgia,ThanhTien) 
select nd.Ma_Nguoidung, ct.Ma_Hoadon as 'MaHoadon',hd.Ngaydathang,sp.Ma_Sanpham as 'MaSanpham',sp.Ten_Sanpham,asp.Link1,asp.Link2,asp.Link3,ct.size,ct.Soluong,sp.Giagoc,
sp.Ma_Giamgia as 'MaGiamgia',case when di.Ma_Giamgia is not null then sp.Giagoc*(1-di.Tilegiamgia)*ct.Soluong else sp.Giagoc*ct.Soluong end as 'ThanhTien'
from Nguoidung nd, Hoadon hd, Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia join AnhSP asp on sp.Ma_Sanpham = asp.Ma_Sanpham
where 
	 ct.Ma_Sanpham = sp.Ma_Sanpham and
	 nd.Ma_Nguoidung = hd.Ma_Khachhang and
	 hd.Ma_Hoadon = ct.Ma_Hoadon and nd.Ma_Nguoidung = @manguoidung and hd.Ma_Hoadon = @mahoadon

end
GO
/****** Object:  StoredProcedure [dbo].[XacNhanGiaoHang_YC]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XacNhanGiaoHang_YC]
 @mahoadon varchar(50)
as
begin
update YeuCau set TrangThaiXuLy = 1 where Ma_Hoadon = @mahoadon

update Hoadon set TrangthaiHD = 2, TrangthaiTT = N'Đã thanh toán' where Ma_Hoadon = @mahoadon 

insert into LichSuMuaHang select nd.Ma_Nguoidung, ct.Ma_Hoadon as 'MaHoadon',hd.Ngaydathang,sp.Ma_Sanpham as 'MaSanpham',sp.Ten_Sanpham,asp.Link1,asp.Link2,asp.Link3,ct.size,ct.Soluong,sp.Giagoc,
sp.Ma_Giamgia as 'MaGiamgia',case when di.Ma_Giamgia is not null then sp.Giagoc*(1-di.Tilegiamgia)*ct.Soluong else sp.Giagoc*ct.Soluong end as 'ThanhTien'
from Nguoidung nd, Hoadon hd, Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia join AnhSP asp on sp.Ma_Sanpham = asp.Ma_Sanpham
where 
	 ct.Ma_Sanpham = sp.Ma_Sanpham and
	 nd.Ma_Nguoidung = hd.Ma_Khachhang and
	 hd.Ma_Hoadon = ct.Ma_Hoadon and hd.Ma_Hoadon = @mahoadon

end
GO
/****** Object:  StoredProcedure [dbo].[XacNhanHoaDon]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[XacNhanHoaDon]
@manguoidung varchar(50), @mahoadon varchar(50)
as
begin

update Hoadon set TrangthaiHD = 1, ThanhTien = (select
Sum(
case when di.Ma_Giamgia is not null then sp.Giagoc*(1-di.Tilegiamgia)*ct.Soluong else sp.Giagoc*ct.Soluong end )
from Hoadon hd,Nguoidung nd,Chitiet_Hoadon ct,Sanpham sp left outer join Discount di on sp.Ma_Giamgia = di.Ma_Giamgia
where hd.Ma_Khachhang = nd.Ma_Nguoidung
	and hd.Ma_Hoadon = ct.Ma_Hoadon 
	and ct.Ma_Sanpham = sp.Ma_Sanpham
	and hd.TrangthaiHD = 0
	and hd.Ma_Hoadon = @mahoadon
	and hd.Ma_Khachhang = @manguoidung) + 10000
where Ma_Hoadon = @mahoadon and Ma_Khachhang = @manguoidung



end
GO
/****** Object:  StoredProcedure [dbo].[Xoa_All]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa_All]
as
	delete from ThungRac
GO
/****** Object:  StoredProcedure [dbo].[Xoa_NguoiDung]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa_NguoiDung]
@manguoidung int
as
delete from Nguoidung where Ma_Nguoidung = @manguoidung
GO
/****** Object:  StoredProcedure [dbo].[Xoa_SanPham_proc]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[Xoa_SanPham_proc]
    @MaSP varchar(20)
as
    update Sanpham set TrangThai = 1 where Ma_Sanpham = @MaSP
GO
/****** Object:  StoredProcedure [dbo].[Xoa_Size]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[Xoa_Size]
@MaSP varchar(50), @MaS varchar(3)
as
delete from SanPham_Size where Ma_Sanpham = @MaSP and Ma_Size = @MaS
GO
/****** Object:  StoredProcedure [dbo].[XoaSp_TrongHoaDon]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create proc [dbo].[XoaSp_TrongHoaDon]
@ma varchar(50), @masp varchar(50), @size int
as
delete from Chitiet_Hoadon where Ma_Hoadon = @ma and Ma_Sanpham = @masp and size = @size


GO
/****** Object:  StoredProcedure [dbo].[YeuCauKH]    Script Date: 12/03/2024 11:17:52 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[YeuCauKH]
as
select yc.ID,nd.Ten_Nguoidung,hd.Ma_Hoadon,yc.TrangThaiYeuCau,
case when TrangThaiYeuCau = 0 then N'Hủy đơn hàng' 
	when TrangThaiYeuCau = 1 then N'Đã nhận hàng' end as 'Thong_Bao', yc.LyDo,yc.TrangThaiXuLy,yc.ThoiGian
from YeuCau yc, Nguoidung nd, Hoadon hd
where yc.Ma_Hoadon = hd.Ma_Hoadon and hd.Ma_Khachhang = nd.Ma_Nguoidung and yc.TrangThaiXuLy = 0

GO
