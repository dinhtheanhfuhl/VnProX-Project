USE [master]
GO
/****** Object:  Database [vnprox03]    Script Date: 18/10/2022 10:29:56 PM ******/
CREATE DATABASE [vnprox03]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'vnprox03', FILENAME = N'E:\SQL_2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\vnprox03.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'vnprox03_log', FILENAME = N'E:\SQL_2019\MSSQL15.SQLEXPRESS\MSSQL\DATA\vnprox03_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [vnprox03] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [vnprox03].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [vnprox03] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [vnprox03] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [vnprox03] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [vnprox03] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [vnprox03] SET ARITHABORT OFF 
GO
ALTER DATABASE [vnprox03] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [vnprox03] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [vnprox03] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [vnprox03] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [vnprox03] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [vnprox03] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [vnprox03] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [vnprox03] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [vnprox03] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [vnprox03] SET  ENABLE_BROKER 
GO
ALTER DATABASE [vnprox03] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [vnprox03] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [vnprox03] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [vnprox03] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [vnprox03] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [vnprox03] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [vnprox03] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [vnprox03] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [vnprox03] SET  MULTI_USER 
GO
ALTER DATABASE [vnprox03] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [vnprox03] SET DB_CHAINING OFF 
GO
ALTER DATABASE [vnprox03] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [vnprox03] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [vnprox03] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [vnprox03] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [vnprox03] SET QUERY_STORE = OFF
GO
USE [vnprox03]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccID] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[RoleID] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[AccID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CateID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerName] [nvarchar](255) NULL,
	[AccID] [int] NULL,
	[DateBirth] [date] NULL,
	[Gender] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[ShopName] [nvarchar](255) NULL,
	[MainAddress] [nvarchar](255) NULL,
	[CityID] [int] NULL,
	[BusinessLicense] [nvarchar](255) NULL,
	[AvartarImg] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeliveryArea]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeliveryArea](
	[ProductID] [int] NULL,
	[CityID] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierID] [int] NULL,
	[SubCateID] [int] NULL,
	[CreatedDate] [datetime] NULL,
	[RequestCode] [nvarchar](255) NULL,
	[ProductName] [nvarchar](255) NULL,
	[BarCode] [nvarchar](255) NULL,
	[ProductCertificate] [nvarchar](255) NULL,
	[Trademark] [nvarchar](255) NULL,
	[Smell] [nvarchar](255) NULL,
	[Color] [nvarchar](255) NULL,
	[Weight] [int] NULL,
	[Packing] [nvarchar](255) NULL,
	[Element] [nvarchar](255) NULL,
	[HarvestDay] [date] NULL,
	[ExpirationDate] [date] NULL,
	[StatusID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductHierarchy]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductHierarchy](
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[Quantity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductImage]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductImage](
	[ProductID] [int] NOT NULL,
	[ImgPath] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[ImgPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductStatus]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductStatus](
	[StatusID] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[StatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductVideo]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductVideo](
	[ProductID] [int] NOT NULL,
	[VideoPath] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[VideoPath] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[RoleID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategory](
	[SubCateID] [int] IDENTITY(1,1) NOT NULL,
	[SubCateName] [nvarchar](255) NULL,
	[CateID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[SubCateID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Supplier]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Supplier](
	[SupplierID] [int] IDENTITY(1,1) NOT NULL,
	[SupplierName] [nvarchar](255) NULL,
	[AccID] [int] NULL,
	[DateBirth] [date] NULL,
	[Gender] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[ShopName] [nvarchar](255) NULL,
	[MainAddress] [nvarchar](255) NULL,
	[CityID] [int] NULL,
	[BusinessLicense] [nvarchar](255) NULL,
	[AvartarImg] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[SupplierID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SystemManager]    Script Date: 18/10/2022 10:29:56 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SystemManager](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[AccID] [int] NULL,
	[DateBirth] [date] NULL,
	[Gender] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[AvartarImg] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (1, N'adminz@vnprox.vn', N'123', 1, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (2, N'trandanz@vnprox.vn', N'123', 2, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (3, N'tranducbo@vnprox.vn', N'123', 2, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (4, N'ducboy@vnprox.vn', N'123', 3, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (5, N'anhab@gmail.com', N'123', 3, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (6, N'theanhdinhfpt@gmail.com', N'123', 4, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (7, N'anhdthe141129@fpt.edu.vn', N'123', 3, 1)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (8, N'truongmc@gmail.com', N'123', 4, 0)
INSERT [dbo].[Account] ([AccID], [Email], [Password], [RoleID], [Status]) VALUES (10, N'anhdhh@gmail.com', N'123', 4, 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (1, N'Trái cây')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (2, N'Rau củ')
INSERT [dbo].[Category] ([CateID], [CateName]) VALUES (3, N'Các loại hạt')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 

INSERT [dbo].[City] ([CityID], [CityName]) VALUES (1, N'An Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (2, N'Bà Rịa - Vũng Tàu')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (3, N'Bắc Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (4, N'Bắc Cạn')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (5, N'Bạc Liêu')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (6, N'Bắc Ninh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (7, N'Bến Tre')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (8, N'Bình Định')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (9, N'Bình Dương')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (10, N'Bình Phước')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (11, N'Bình Thuận')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (12, N'Cà Mau')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (13, N'Cần Thơ')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (14, N'Cao Bằng')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (15, N'Đà Nẵng')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (16, N'Đắk Lắk')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (17, N'Đắk Nông')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (18, N'Đồng Nai')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (19, N'Đồng Tháp')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (20, N'Gia Lai')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (21, N'Hà Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (22, N'Hà Nam')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (23, N'Hà Nội')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (24, N'Hà Tĩnh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (25, N'Hải Dương')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (26, N'Hải Phòng')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (27, N'Hậu Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (28, N'Hòa Bình')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (29, N'Hưng Yên')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (30, N'Khánh Hòa')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (31, N'Kiên Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (32, N'Kon Tum')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (33, N'Lai Châu')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (34, N'Lâm Đồng')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (35, N'Lạng Sơn')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (36, N'Lào Cai')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (37, N'Long An')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (38, N'Nam Định')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (39, N'Nghệ An')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (40, N'Ninh Bình')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (41, N'Ninh Thuận')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (42, N'Phú Thọ')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (43, N'Phú Yên')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (44, N'Quảng Bình')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (45, N'Quảng Nam')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (46, N'Quảng Ngãi')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (47, N'Quảng Ninh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (48, N'Quảng Trị')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (49, N'Sóc Trăng')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (50, N'Sơn La')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (51, N'Tây Ninh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (52, N'Thái Bình')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (53, N'Thái Nguyên')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (54, N'Thanh Hóa')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (55, N'Thừa Thiên Huế')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (56, N'Tiền Giang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (57, N'TP Hồ Chí Minh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (58, N'Trà Vinh')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (59, N'Tuyên Quang')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (60, N'Vĩnh Long ')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (61, N'Vĩnh Phúc')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (62, N'Yên Bái')
INSERT [dbo].[City] ([CityID], [CityName]) VALUES (63, N'Điện Biên')
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([CustomerID], [CustomerName], [AccID], [DateBirth], [Gender], [Email], [Phone], [ShopName], [MainAddress], [CityID], [BusinessLicense], [AvartarImg]) VALUES (1, N'Tran Hong Binh', 6, CAST(N'2000-03-20' AS Date), N'Nu', N'theanhdinhfpt@gmail.com', N'0404040404', N'Siêu thị Hoa quả việt', N'đông anh hà nội', 43, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (4, 1)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (4, 23)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (4, 12)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (6, 34)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (6, 1)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (8, 24)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (8, 1)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 1)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 12)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 13)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 14)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 15)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (9, 16)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (12, 63)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (12, 62)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (12, 61)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (10, 31)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (10, 32)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (10, 33)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (10, 34)
INSERT [dbo].[DeliveryArea] ([ProductID], [CityID]) VALUES (10, 35)
GO
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (4, 1, 4, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Vải Thiều tươi ngon thơm nức mũi hải dương', N'892438724', NULL, N'Vải thiều hải dương', N'ngọt', N'hồng đào', 10300, N'hộp', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (6, 2, 5, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Dưa hấu bắc cạn ngọt thơm ngon', N'5242379', NULL, N'Dưa hấu bắc cạn', N'ngọt', N'hồng đào', 200, N'hộp', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 2)
INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (8, 1, 5, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Vải Thiều tươi ngon thơm nức mũi hải dương', N'23456788765', NULL, N'Vải thiều hải dương', N'ngọt', N'hồng đào', 10300, N'thùng', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (9, 2, 1, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Rau muống hữu cơ', N'876543456', NULL, N'Dưa hấu bắc cạn', N'ngọt', N'xanh ', 1000, N'thùng', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 3)
INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (10, 3, 6, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Hạt điều gia lai tươi ngon mời', N'009999878', NULL, N'Hạt điều gia lai', N'ngọt', N'nâu', 8560, N'hộp', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 1)
INSERT [dbo].[Product] ([ProductID], [SupplierID], [SubCateID], [CreatedDate], [RequestCode], [ProductName], [BarCode], [ProductCertificate], [Trademark], [Smell], [Color], [Weight], [Packing], [Element], [HarvestDay], [ExpirationDate], [StatusID]) VALUES (12, 3, 1, CAST(N'2021-12-18T00:00:00.000' AS DateTime), N'2021121800001', N'Rau khoai lang', N'11212123', NULL, N'Rau HTX đông anh', N'ngọt', N'xanh tươi', 4000, N'thùng', N'80% glucozo, 5% axit hãi hùng', NULL, NULL, 4)
SET IDENTITY_INSERT [dbo].[Product] OFF
GO
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (4, 10, 10000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (4, 50, 90000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (4, 100, 80000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (6, 10, 20000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (6, 50, 18000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (8, 10, 35000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (8, 70, 25800.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (9, 10, 90000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (9, 90, 70000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (9, 120, 65000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (10, 15, 40000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (10, 30, 35900.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (12, 10, 100900.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (12, 40, 100000.0000)
INSERT [dbo].[ProductHierarchy] ([ProductID], [Quantity], [Price]) VALUES (12, 80, 90500.0000)
GO
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (4, N'.image/abc')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (6, N'.video/kfdk')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (8, N'.video/kfdj')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (8, N'.video/lkk')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (9, N'.video/jds')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (9, N'.video/kjdk')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (10, N'.video/kjgdkj')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (10, N'.video/kkkk')
INSERT [dbo].[ProductImage] ([ProductID], [ImgPath]) VALUES (12, N'.video/lfdl')
GO
SET IDENTITY_INSERT [dbo].[ProductStatus] ON 

INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (1, N'Chờ phê duyệt')
INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (2, N'Đã phê duyệt')
INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (3, N'Đã từ chối')
INSERT [dbo].[ProductStatus] ([StatusID], [StatusName]) VALUES (4, N'Đã ẩn')
SET IDENTITY_INSERT [dbo].[ProductStatus] OFF
GO
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (4, N'.video/abc')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (6, N'.video/abcc')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (8, N'.video/abdd')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (8, N'.video/dfff')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (9, N'.video/khgf')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (10, N'.video/gfgfd')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (10, N'.video/kfkdj')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (12, N'.video/kgkfj')
INSERT [dbo].[ProductVideo] ([ProductID], [VideoPath]) VALUES (12, N'.video/kjgjf')
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (1, N'Admin')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (2, N'Moderator')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (3, N'Supplier')
INSERT [dbo].[Role] ([RoleID], [RoleName]) VALUES (4, N'Minimart')
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
SET IDENTITY_INSERT [dbo].[SubCategory] ON 

INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (1, N'Rau ăn lá', 2)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (2, N'Rau ăn thân', 2)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (3, N'Rau ăn củ', 2)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (4, N'Trái cây theo mùa', 1)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (5, N'Trái cây sấy', 1)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (6, N'Hạt giàu vitamin và khoáng chất', 3)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (7, N'Hạt giàu chất béo và omega 3', 3)
INSERT [dbo].[SubCategory] ([SubCateID], [SubCateName], [CateID]) VALUES (8, N'Hạt có tính dẻo và sánh', 3)
SET IDENTITY_INSERT [dbo].[SubCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Supplier] ON 

INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [AccID], [DateBirth], [Gender], [Email], [Phone], [ShopName], [MainAddress], [CityID], [BusinessLicense], [AvartarImg]) VALUES (1, N'Dinh The Nam', 4, CAST(N'2000-03-10' AS Date), N'nam', N'ducboy@vnprox.vn', N'0987654321', N'Nông sản đông anh', N'đông anh thủ đô', 1, NULL, NULL)
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [AccID], [DateBirth], [Gender], [Email], [Phone], [ShopName], [MainAddress], [CityID], [BusinessLicense], [AvartarImg]) VALUES (2, N'Anh Nam The', 5, CAST(N'2000-03-10' AS Date), N'nam', N'anhab@gmail.com', N'0987654321', N'nông sản bắc hà', N'hà tây hà nội', 32, NULL, NULL)
INSERT [dbo].[Supplier] ([SupplierID], [SupplierName], [AccID], [DateBirth], [Gender], [Email], [Phone], [ShopName], [MainAddress], [CityID], [BusinessLicense], [AvartarImg]) VALUES (3, N'Dinh Duc Anh', 7, CAST(N'2000-03-10' AS Date), N'nam', N'anhdthe141129@fpt.edu.vn', N'0987654321', N'hợp tác xã đông anh', N'đông anh hà nội', 4, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Supplier] OFF
GO
SET IDENTITY_INSERT [dbo].[SystemManager] ON 

INSERT [dbo].[SystemManager] ([ID], [Name], [AccID], [DateBirth], [Gender], [Email], [Phone], [AvartarImg]) VALUES (2, N'Tran Duc Bo', 1, CAST(N'2000-03-12' AS Date), N'Nam', N'adminz@vnprox.vn', N'0909090909', NULL)
INSERT [dbo].[SystemManager] ([ID], [Name], [AccID], [DateBirth], [Gender], [Email], [Phone], [AvartarImg]) VALUES (4, N'Tran Hy Duc', 2, CAST(N'2000-03-12' AS Date), N'Nam', N'trandanz@vnprox.vn', N'0909090909', NULL)
INSERT [dbo].[SystemManager] ([ID], [Name], [AccID], [DateBirth], [Gender], [Email], [Phone], [AvartarImg]) VALUES (5, N'Tran Duc Hy', 3, CAST(N'2000-03-12' AS Date), N'Nam', N'tranducbo@vnprox.vn', N'0909090909', NULL)
SET IDENTITY_INSERT [dbo].[SystemManager] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Account__A9D1053424EF7348]    Script Date: 18/10/2022 10:29:56 PM ******/
ALTER TABLE [dbo].[Account] ADD UNIQUE NONCLUSTERED 
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__Product__8A2ACA9B4F3E519B]    Script Date: 18/10/2022 10:29:56 PM ******/
ALTER TABLE [dbo].[Product] ADD UNIQUE NONCLUSTERED 
(
	[BarCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([RoleID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[DeliveryArea]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[DeliveryArea]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([StatusID])
REFERENCES [dbo].[ProductStatus] ([StatusID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([SubCateID])
REFERENCES [dbo].[SubCategory] ([SubCateID])
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD FOREIGN KEY([SupplierID])
REFERENCES [dbo].[Supplier] ([SupplierID])
GO
ALTER TABLE [dbo].[ProductHierarchy]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductImage]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductVideo]  WITH CHECK ADD FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD FOREIGN KEY([CateID])
REFERENCES [dbo].[Category] ([CateID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
ALTER TABLE [dbo].[Supplier]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[City] ([CityID])
GO
ALTER TABLE [dbo].[SystemManager]  WITH CHECK ADD FOREIGN KEY([AccID])
REFERENCES [dbo].[Account] ([AccID])
GO
USE [master]
GO
ALTER DATABASE [vnprox03] SET  READ_WRITE 
GO
