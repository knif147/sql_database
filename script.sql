USE [master]
GO
/****** Object:  Database [QUANLY_DAILY]    Script Date: 3/31/2016 12:06:45 AM ******/
CREATE DATABASE [QUANLY_DAILY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QUANLY_DAILY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QUANLY_DAILY.mdf' , SIZE = 3328KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QUANLY_DAILY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.MSSQLSERVER\MSSQL\DATA\QUANLY_DAILY_log.LDF' , SIZE = 5248KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [QUANLY_DAILY] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QUANLY_DAILY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QUANLY_DAILY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET ARITHABORT OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLY_DAILY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QUANLY_DAILY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QUANLY_DAILY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [QUANLY_DAILY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QUANLY_DAILY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET RECOVERY FULL 
GO
ALTER DATABASE [QUANLY_DAILY] SET  MULTI_USER 
GO
ALTER DATABASE [QUANLY_DAILY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QUANLY_DAILY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QUANLY_DAILY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QUANLY_DAILY] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'QUANLY_DAILY', N'ON'
GO
USE [QUANLY_DAILY]
GO
/****** Object:  Table [dbo].[DAILY]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DAILY](
	[MaDaiLy] [nchar](10) NOT NULL,
	[TenDaiLy] [nvarchar](50) NULL,
	[Loai] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NULL,
	[DienThoai] [int] NULL,
	[Quan] [nvarchar](50) NULL,
	[NgayTiepNhan] [datetime] NULL,
	[tiền nợ] [int] NULL,
 CONSTRAINT [PK_DAILY] PRIMARY KEY CLUSTERED 
(
	[MaDaiLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HoaDonThuTien]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDonThuTien](
	[Mã_Thu_Tien] [nchar](10) NOT NULL,
	[Tên Đại Lí] [nchar](10) NOT NULL,
	[Số Tiền thu (đơn vị : Vnd)
Số Tien] [int] NULL,
	[[Số Tiền Nợ]](đơn vị : Vnd)] [int] NULL,
	[Ngày Thu tiên] [datetime] NOT NULL,
 CONSTRAINT [PK_HoaDonThuTien] PRIMARY KEY CLUSTERED 
(
	[Mã_Thu_Tien] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiDaiLy]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiDaiLy](
	[Id_LoaiDaiLy] [nvarchar](10) NOT NULL,
	[Tên_LoaiDaily] [nchar](10) NOT NULL,
	[tiền nợ] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiDaiLy] PRIMARY KEY CLUSTERED 
(
	[Id_LoaiDaiLy] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LoaiSP]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSP](
	[MaLoaiSP] [int] NOT NULL,
	[TenLoaiSP] [nvarchar](20) NULL,
	[Đơn Vị Tính] [nchar](10) NULL,
 CONSTRAINT [PK_LoaiSP] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUNHAP]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUNHAP](
	[MaPN] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[Soluong] [smallint] NULL,
	[Thanhtien] [float] NULL,
	[Ngaynhap] [datetime] NULL,
	[Dai_ly] [nchar](10) NULL,
 CONSTRAINT [PK_PHIEUNHAP] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PHIEUXUAT]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PHIEUXUAT](
	[MaPX] [nvarchar](10) NOT NULL,
	[MaSP] [nvarchar](10) NOT NULL,
	[Soluong] [smallint] NULL,
	[Giamgia] [real] NULL,
	[Thanhtien] [float] NULL,
	[Ngaynhap] [datetime] NULL,
 CONSTRAINT [PK_PHIEUXUAT] PRIMARY KEY CLUSTERED 
(
	[MaPX] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Quận]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quận](
	[Id_Quận] [nvarchar](50) NOT NULL,
	[Tên_Quận] [nchar](10) NOT NULL,
 CONSTRAINT [PK_Quận] PRIMARY KEY CLUSTERED 
(
	[Id_Quận] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SANPHAM]    Script Date: 3/31/2016 12:06:45 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SANPHAM](
	[MaSP] [nvarchar](10) NOT NULL,
	[TenSP] [nvarchar](50) NULL,
	[DonGia] [float] NULL,
	[Hinh] [nvarchar](max) NULL,
	[MaLoaiSP] [int] NULL,
 CONSTRAINT [PK_SANPHAM] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'1         ', N'Nguyễn Văn Triều', N'01', N'150,Điện Biên Phủ, Quận 3, tp HCM', 1636507052, N'3', CAST(0x0000A11E00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'10        ', N'Lê Thị Thanh	Năng', N'02', N'100, BÀu cát, tân Bình', 1554030110, N'13', CAST(0x000094DF00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'11        ', N'Nguyễn Thanh	Ngân', N'02', N'100, Đồng Đen, Tân Bình', 1554030119, N'13', CAST(0x0000A17E00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'12        ', N'Hoàng Hà Quỳnh	Như', N'01', N'67,Hàm Nghi, Quận 1', 1554030151, N'1', CAST(0x000081CE00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'13        ', N'Phan Anh	Quốc', N'02', N'69,Lê Lợi, Quận 1', 1554030170, N'1', CAST(0x0000A35C00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'14        ', N'Chu Thanh	Thảo', N'01', N'10, Thảo Điền, Quận 2', 1554030188, N'2', CAST(0x0000A34400000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'15        ', N'Trần Thị Thùy	Trân', N'01', N'2, Nguyễn Thái Bình, Quận 4', 1554030222, N'4', CAST(0x00009FEB00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'16        ', N'Nguyễn Vũ Tường	Vy', N'02', N'3,Cống Quỳnh, Quân 5', 1554030254, N'5', CAST(0x0000A25D00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'17        ', N'Phạm Quốc	Bảo', N'01', N'3,Bành Văn Trân, quận 8', 1454032173, N'8', CAST(0x00009E0B00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'18        ', N'Nguyễn Tiến	Đạt', N'01', N'30.Đường số 3, Quận 9', 1454032192, N'9', CAST(0x00009EE400000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'19        ', N'Phạm Thị Thu	Huệ', N'02', N'10,Đường Số 8, quạn 10', 1454032211, N'10', CAST(0x00009EEB00000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'2         ', N'Trần Trung Kiên', N'02', N'106, Dương Quảng Hàm, Gò Vấp', 913131331, N'14', CAST(0x0000A26900000000 AS DateTime), 10)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'20        ', N'Nguyễn Hoàng Yến	Ngọc	', N'01', N'10, BA lơi, Quận 11', 1454032239, N'11', CAST(0x0000863000000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'3         ', N'Bạch Thị Thu An', N'02', N'10, Bạch Đằng , Gò Vấp', 154141519, N'14', CAST(0x0000A3F400000000 AS DateTime), 10)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'4         ', N'Nguyễn Thị Thùy	Diễm', N'01', N'20,Nguyên Thái Sơn , Gò Vấp', 1554030033, N'14', CAST(0x00008B2800000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'5         ', N'Thới Thị Mỹ	Duyên', N'02', N'98,Nguyễn Biểu, bình thạnh', 1554030041, N'19', CAST(0x0000A37200000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'6         ', N'	Phạm Huỳnh	Đức	', N'01', N'92/4/nguyễn Biểu, Bình thạnh', 1554030047, N'19', CAST(0x00008D6F00000000 AS DateTime), 10)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'7         ', N'Đặng Thị Ngọc	Linh', N'01', N'123,Võ Văn Ngân, Thủ Đức', 1554030088, N'17', CAST(0x00009FE200000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'8         ', N'	Tô Hoàng	Linh', N'02', N'198,Võ văn Ngân, Thủ Đức', 1554030094, N'17', CAST(0x0000A2C000000000 AS DateTime), NULL)
INSERT [dbo].[DAILY] ([MaDaiLy], [TenDaiLy], [Loai], [DiaChi], [DienThoai], [Quan], [NgayTiepNhan], [tiền nợ]) VALUES (N'9         ', N'Phạm Thị Kim	Loan', N'01', N'200,Võ Văn Tần, quận 3', 1554030098, N'3', CAST(0x000098E100000000 AS DateTime), NULL)
