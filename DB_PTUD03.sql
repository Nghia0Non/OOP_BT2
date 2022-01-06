USE [master]
GO
/****** Object:  Database [QLDKHP]    Script Date: 11/6/2016 7:18:50 PM ******/
CREATE DATABASE [QLDKHP]
 
GO
USE [QLDKHP]
GO
/****** Object:  Table [dbo].[tblChuyenNganh]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblChuyenNganh](
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldTenChuyenNganh] [nvarchar](30) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_dboChuyenNganh] PRIMARY KEY CLUSTERED 
(
	[fldMaChuyenNganh] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblDiem]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDiem](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldDiemTK] [nvarchar](10) NOT NULL,
	[fldDiemGK] [nvarchar](3) NOT NULL,
	[fldDiemCK] [nvarchar](3) NOT NULL,
	[fldDiemTB] [nvarchar](3) NOT NULL,
	[fldXepLoai] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblGiaoVien]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblGiaoVien](
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldTenGV] [nvarchar](50) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldNgaySinh] [nvarchar](10) NOT NULL,
	[fldGioiTinh] [nvarchar](10) NOT NULL,
	[fldEmail] [nvarchar](50) NOT NULL,
	[fldDiaChi] [nvarchar](70) NOT NULL,
	[fldSDT] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_tblGiangVien] PRIMARY KEY CLUSTERED 
(
	[fldMaGV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblHocPhan]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblHocPhan](
	[fldMaHP] [nvarchar](10) NOT NULL,
	[fldTenHP] [nvarchar](50) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldHocPhanYeuCau] [nvarchar](20) NULL,
 CONSTRAINT [PK_tblHocPhan] PRIMARY KEY CLUSTERED 
(
	[fldMaHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblKhoa]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblKhoa](
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTenKhoa] [nvarchar](50) NOT NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblKhoa] PRIMARY KEY CLUSTERED 
(
	[fldMaKhoa] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLop]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLop](
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldTenLop] [nvarchar](50) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldSiSo] [nvarchar](2) NOT NULL,
	[fldKhoaHoc] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblLop] PRIMARY KEY CLUSTERED 
(
	[fldMaLop] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblLopHP]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLopHP](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaHP] [nvarchar](10) NOT NULL,
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldMaKhoa] [nvarchar](10) NOT NULL,
	[fldTietHoc] [nvarchar](10) NOT NULL,
	[fldPhongHoc] [nvarchar](10) NOT NULL,
	[fldThu] [nvarchar](10) NOT NULL,
	[fldSiSo] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayThi] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblLopHP_1] PRIMARY KEY CLUSTERED 
(
	[fldMaLHP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblMonHoc]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblMonHoc](
	[fldMaMH] [nvarchar](10) NOT NULL,
	[fldTenMH] [nvarchar](30) NOT NULL,
	[fldMaChuyenNganh] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](1) NOT NULL,
	[fldSoTinChi] [nvarchar](1) NOT NULL,
	[fldHinhThucThi] [nvarchar](20) NOT NULL,
	[fldBatBuoc] [nvarchar](10) NULL,
 CONSTRAINT [PK_tblMonHoc] PRIMARY KEY CLUSTERED 
(
	[fldMaMH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguoiDung]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiDung](
	[fldTenDangNhap] [nvarchar](10) NOT NULL,
	[fldMatKhau] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_tblNguoiDung] PRIMARY KEY CLUSTERED 
(
	[fldTenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblNguoiQuanLy]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblNguoiQuanLy](
	[fldMaNQL] [nvarchar](10) NOT NULL,
	[fldTen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_tblAdmin] PRIMARY KEY CLUSTERED 
(
	[fldMaNQL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuDangKyDay]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDangKyDay](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaGV] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayDangKy] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblPhieuDangKyHoc]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblPhieuDangKyHoc](
	[fldMaLHP] [nvarchar](10) NOT NULL,
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldHocKy] [nvarchar](10) NOT NULL,
	[fldNamHoc] [nvarchar](10) NOT NULL,
	[fldNgayDangKy] [nvarchar](10) NOT NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[tblSinhVien]    Script Date: 11/6/2016 7:18:50 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSinhVien](
	[fldMaSV] [nvarchar](10) NOT NULL,
	[fldTenSV] [nvarchar](70) NOT NULL,
	[fldMaLop] [nvarchar](10) NOT NULL,
	[fldHeDaoTao] [nvarchar](50) NOT NULL,
	[fldNgaySinh] [nvarchar](10) NOT NULL,
	[fldGioiTinh] [nvarchar](10) NOT NULL,
	[fldDiaChi] [nvarchar](100) NULL,
	[fldSDT] [nvarchar](15) NULL,
 CONSTRAINT [PK_tblSinhVien] PRIMARY KEY CLUSTERED 
(
	[fldMaSV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'TMDT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'HTTT', N'Hệ Thống Thông Tin', N'TMDT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'KTPC', N'Kỹ Thuật phần Cứng', N'CNTT')
INSERT [dbo].[tblChuyenNganh] ([fldMaChuyenNganh], [fldTenChuyenNganh], [fldMaKhoa]) VALUES (N'KTPM', N'Kỹ Thuật Phần Mềm', N'CNTT')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV001', N'MH001', N'5', N'5', N'5', N'5', N'D')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV001', N'MH002', N'8', N'8', N'8', N'8', N'B')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV002', N'MH001', N'8', N'7', N'4', N'5.7', N'C')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV001', N'MH003', N'9', N'9', N'9', N'9', N'A')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV002', N'MH002', N'5', N'5', N'5', N'5', N'D')
INSERT [dbo].[tblDiem] ([fldMaLop], [fldMaSV], [fldMaMH], [fldDiemTK], [fldDiemGK], [fldDiemCK], [fldDiemTB], [fldXepLoai]) VALUES (N'KTPM10A', N'SV002', N'MH003', N'5.5', N'5.5', N'6.7', N'6.1', N'C')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV001', N'Nguyễn Văn B', N'KTPM', N'12/12/1990', N'0', N'x@x.com', N'zxczxc', N'1231231231231')
INSERT [dbo].[tblGiaoVien] ([fldMaGV], [fldTenGV], [fldMaChuyenNganh], [fldNgaySinh], [fldGioiTinh], [fldEmail], [fldDiaChi], [fldSDT]) VALUES (N'GV002', N'Nguyễn Văn A', N'CNTT', N'12/12/1990', N'1', N'xxxx@xx.com', N'xxxxxx', N'123123123')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP001', N'Lập trình Web', N'MH001', N'Công Nghệ Thông Tin', N'HP002')
INSERT [dbo].[tblHocPhan] ([fldMaHP], [fldTenHP], [fldMaMH], [fldTenKhoa], [fldHocPhanYeuCau]) VALUES (N'HP002', N'Lập Trình Java', N'MH001', N'Công Nghệ Thông Tin', N'')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'CNTT', N'Công Nghệ Thông Tin', N'09191231823')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'QTKD', N'Quản Trị Kinh Doanh', N'1231123123')
INSERT [dbo].[tblKhoa] ([fldMaKhoa], [fldTenKhoa], [fldSDT]) VALUES (N'TMDT', N'Thương Mại Điên Tử', N'1111111111111')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'KTPM10A', N'Kỹ Thuật Phần Mềm 10A', N'CNTT', N'99', N'2016-2020')
INSERT [dbo].[tblLop] ([fldMaLop], [fldTenLop], [fldMaChuyenNganh], [fldSiSo], [fldKhoaHoc]) VALUES (N'KTPM10B', N'Kỹ Thuật Phần Mềm 10B', N'CNTT', N'50', N'2016-2020')
INSERT [dbo].[tblLopHP] ([fldMaLHP], [fldMaHP], [fldMaMH], [fldMaKhoa], [fldTietHoc], [fldPhongHoc], [fldThu], [fldSiSo], [fldHocKy], [fldNamHoc], [fldNgayThi]) VALUES (N'LHP001A', N'HP001', N'MH001', N'CNTT', N'1-3', N'B1.01', N'Thứ 3', N'55', N'2', N'2016', N'10-11-2016')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH001', N'Phát Triển Ứng Dụng', N'HTTT', N'4', N'4', N'Thi Thực Hành', N'')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH002', N'Lập Trình Java', N'KTPM', N'4', N'4', N'Thi Thực Hành', N'Bắt Buộc')
INSERT [dbo].[tblMonHoc] ([fldMaMH], [fldTenMH], [fldMaChuyenNganh], [fldHocKy], [fldSoTinChi], [fldHinhThucThi], [fldBatBuoc]) VALUES (N'MH003', N'Nhập Môn Lập Trình C', N'KTPM', N'2', N'4', N'Thi Thực Hành', N'')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'admin', N'111111')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'GV001', N'123456')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'GV002', N'654321')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'SV001', N'123456')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'SV002', N'123456')
INSERT [dbo].[tblNguoiDung] ([fldTenDangNhap], [fldMatKhau]) VALUES (N'SV003', N'123456')
INSERT [dbo].[tblNguoiQuanLy] ([fldMaNQL], [fldTen]) VALUES (N'AD001', N'AD001')
INSERT [dbo].[tblPhieuDangKyDay] ([fldMaLHP], [fldMaGV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'GV001', N'2', N'2016', N'27-10-2016')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'SV001', N'2', N'2016', N'06-11-2016')
INSERT [dbo].[tblPhieuDangKyHoc] ([fldMaLHP], [fldMaSV], [fldHocKy], [fldNamHoc], [fldNgayDangKy]) VALUES (N'LHP001A', N'SV002', N'2', N'2016', N'26-10-2016')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV001', N'Nguyễn Duy Nguyên', N'KTPM10A', N'Cao Đẳng', N'16/09/1996', N'1', N'123 Nơ Trang Long', N'01663699279')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV002', N'Nguyễn Lương Thủy', N'KTPM10A', N'Đại Học', N'12/12/1997', N'0', N'Bình Quới', N'123123123123')
INSERT [dbo].[tblSinhVien] ([fldMaSV], [fldTenSV], [fldMaLop], [fldHeDaoTao], [fldNgaySinh], [fldGioiTinh], [fldDiaChi], [fldSDT]) VALUES (N'SV003', N'Nguyễn Văn A', N'KTPM10A', N'Đại Học', N'12/12/1996', N'1', N'123123123', N'123123123123')
ALTER TABLE [dbo].[tblChuyenNganh]  WITH CHECK ADD  CONSTRAINT [FK_tblChuyenNganh_tblKhoa] FOREIGN KEY([fldMaKhoa])
REFERENCES [dbo].[tblKhoa] ([fldMaKhoa])
GO
ALTER TABLE [dbo].[tblChuyenNganh] CHECK CONSTRAINT [FK_tblChuyenNganh_tblKhoa]
GO
ALTER TABLE [dbo].[tblDiem]  WITH CHECK ADD  CONSTRAINT [FK_tblDiem_tblSinhVien] FOREIGN KEY([fldMaSV])
REFERENCES [dbo].[tblSinhVien] ([fldMaSV])
GO
ALTER TABLE [dbo].[tblDiem] CHECK CONSTRAINT [FK_tblDiem_tblSinhVien]
GO
ALTER TABLE [dbo].[tblHocPhan]  WITH CHECK ADD  CONSTRAINT [FK_tblHocPhan_tblMonHoc] FOREIGN KEY([fldMaMH])
REFERENCES [dbo].[tblMonHoc] ([fldMaMH])
GO
ALTER TABLE [dbo].[tblHocPhan] CHECK CONSTRAINT [FK_tblHocPhan_tblMonHoc]
GO
ALTER TABLE [dbo].[tblLop]  WITH CHECK ADD  CONSTRAINT [FK_tblLop_tblChuyenNganh1] FOREIGN KEY([fldMaChuyenNganh])
REFERENCES [dbo].[tblChuyenNganh] ([fldMaChuyenNganh])
GO
ALTER TABLE [dbo].[tblLop] CHECK CONSTRAINT [FK_tblLop_tblChuyenNganh1]
GO
ALTER TABLE [dbo].[tblLopHP]  WITH CHECK ADD  CONSTRAINT [FK_tblLopHP_tblHocPhan] FOREIGN KEY([fldMaHP])
REFERENCES [dbo].[tblHocPhan] ([fldMaHP])
GO
ALTER TABLE [dbo].[tblLopHP] CHECK CONSTRAINT [FK_tblLopHP_tblHocPhan]
GO
ALTER TABLE [dbo].[tblSinhVien]  WITH CHECK ADD  CONSTRAINT [FK_tblSinhVien_tblLop1] FOREIGN KEY([fldMaLop])
REFERENCES [dbo].[tblLop] ([fldMaLop])
GO
ALTER TABLE [dbo].[tblSinhVien] CHECK CONSTRAINT [FK_tblSinhVien_tblLop1]
GO
USE [master]
GO
ALTER DATABASE [QLDKHP] SET  READ_WRITE 
GO
