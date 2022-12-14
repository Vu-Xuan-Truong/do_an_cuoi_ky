USE [HatGiongND]
GO
/****** Object:  Table [dbo].[Chitietdonhang]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Chitietdonhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Masp] [int] NOT NULL,
	[Soluong] [int] NULL,
	[Dongia] [decimal](18, 0) NULL,
	[Thanhtien] [decimal](18, 0) NULL,
	[Thanhtoan] [datetime] NULL,
 CONSTRAINT [PK_Chitietdonhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC,
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Danhmucsanpham]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Danhmucsanpham](
	[MaDM] [int] IDENTITY(1,1) NOT NULL,
	[TenDM] [nvarchar](50) NULL,
 CONSTRAINT [PK_Danhmucsanpham] PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Donhang]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Donhang](
	[Madon] [int] IDENTITY(1,1) NOT NULL,
	[Ngaydat] [datetime] NULL,
	[Tinhtrang] [int] NULL,
	[MaNguoidung] [int] NULL,
 CONSTRAINT [PK_Donhang] PRIMARY KEY CLUSTERED 
(
	[Madon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nguoidung]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nguoidung](
	[MaNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[Hoten] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Dienthoai] [nchar](10) NULL,
	[Matkhau] [varchar](50) NULL,
	[IDQuyen] [int] NULL,
	[Diachi] [nvarchar](100) NULL,
 CONSTRAINT [PK_Khachhang] PRIMARY KEY CLUSTERED 
(
	[MaNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhacungcap]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhacungcap](
	[MaNCC] [int] IDENTITY(1,1) NOT NULL,
	[TenNCC] [nvarchar](50) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[DienThoai] [nvarchar](10) NULL,
 CONSTRAINT [PK_Hangcungcap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[IDQuyen] [int] IDENTITY(1,1) NOT NULL,
	[TenQuyen] [nvarchar](20) NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[IDQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 12/4/2022 6:43:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[Masp] [int] IDENTITY(1,1) NOT NULL,
	[Tensp] [nvarchar](50) NULL,
	[Giatien] [decimal](18, 0) NULL,
	[Soluong] [int] NULL,
	[Mota] [ntext] NULL,
	[Sanphammoi] [bit] NULL,
	[Anhbia] [nvarchar](15) NULL,
	[MaNCC] [int] NULL,
	[MaDM] [int] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
 CONSTRAINT [PK_Sanpham] PRIMARY KEY CLUSTERED 
(
	[Masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Chitietdonhang] ON 

INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (1, 6, 6, CAST(300000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (2, 8, 2, CAST(900000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (3, 7, 2, CAST(1000000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (4, 9, 3, CAST(890000 AS Decimal(18, 0)), CAST(300000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (5, 6, 1, CAST(25000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (6, 6, 1, CAST(25000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (7, 12, 1, CAST(26000 AS Decimal(18, 0)), CAST(26000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (8, 2, 1, CAST(11000 AS Decimal(18, 0)), CAST(11000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (9, 12, 1, CAST(26000 AS Decimal(18, 0)), CAST(26000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (10, 13, 1, CAST(25000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (11, 13, 1, CAST(25000 AS Decimal(18, 0)), CAST(25000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (12, 12, 2, CAST(26000 AS Decimal(18, 0)), CAST(52000 AS Decimal(18, 0)), NULL)
INSERT [dbo].[Chitietdonhang] ([Madon], [Masp], [Soluong], [Dongia], [Thanhtien], [Thanhtoan]) VALUES (13, 13, 4, CAST(25000 AS Decimal(18, 0)), CAST(100000 AS Decimal(18, 0)), NULL)
SET IDENTITY_INSERT [dbo].[Chitietdonhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Danhmucsanpham] ON 

INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (1, N'Cây Cảnh')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (2, N'Hạt Giống Cây Ăn Trái')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (3, N'Hạt Giống Cây Dược Liệu')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (4, N'Hạt Giống Hoa')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (5, N'Hạt Giống Rau')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (6, N'Dụng Cụ Làm Vườn')
INSERT [dbo].[Danhmucsanpham] ([MaDM], [TenDM]) VALUES (7, N'Vật Tư Làm Vườn')
SET IDENTITY_INSERT [dbo].[Danhmucsanpham] OFF
GO
SET IDENTITY_INSERT [dbo].[Donhang] ON 

INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (1, CAST(N'2021-07-28T00:10:53.090' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (2, CAST(N'2021-07-28T00:11:27.207' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (3, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (4, CAST(N'2021-07-29T09:34:27.573' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (5, CAST(N'2022-11-18T09:39:34.813' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (6, CAST(N'2022-11-18T09:39:53.107' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (7, CAST(N'2022-11-18T10:45:04.943' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (8, CAST(N'2022-11-19T09:05:09.203' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (9, CAST(N'2022-11-21T14:46:07.290' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (10, CAST(N'2022-11-26T18:00:53.580' AS DateTime), NULL, 14)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (11, CAST(N'2022-12-02T21:12:37.033' AS DateTime), NULL, 14)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (12, CAST(N'2022-12-03T21:46:56.730' AS DateTime), NULL, 16)
INSERT [dbo].[Donhang] ([Madon], [Ngaydat], [Tinhtrang], [MaNguoidung]) VALUES (13, CAST(N'2022-12-04T17:43:28.513' AS DateTime), NULL, 16)
SET IDENTITY_INSERT [dbo].[Donhang] OFF
GO
SET IDENTITY_INSERT [dbo].[Nguoidung] ON 

INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (14, N'Vũ Xuân Trường', N'Admin@gmail.com', N'0912361281', N'12345678', 2, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (15, N'Nguyễn Văn Cường', N'cuongtest@gmail.com', N'0822123213', N'12345678', 1, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (16, N'Nguyễn Minh Tân', N'Khach@gmail.com', N'0987654312', N'12345678', 1, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (17, N'Lê Văn Tám', N'tamvl@gmail.com', N'0912876213', N'12345678', 1, NULL)
INSERT [dbo].[Nguoidung] ([MaNguoiDung], [Hoten], [Email], [Dienthoai], [Matkhau], [IDQuyen], [Diachi]) VALUES (18, N'Nguyễn Văn C', N'Cnv@gmail.com', N'0987262112', N'12345678', NULL, N'binh duong')
SET IDENTITY_INSERT [dbo].[Nguoidung] OFF
GO
SET IDENTITY_INSERT [dbo].[Nhacungcap] ON 

INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (2, N'Công ty GINO', N'146/6A Võ Thị Sáu, Quận 3, TP. Hồ Chí Minh', N'098722123')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (3, N'Công Ty TNHH Thương Mại - Dịch Vụ Sáng Tạo Xanh', N'Gg map nha', N'0909496199')
INSERT [dbo].[Nhacungcap] ([MaNCC], [TenNCC], [DiaChi], [DienThoai]) VALUES (4, N'Công Ty 1 thành viên Ăn Hàng Ở Không', N'Sao Hỏa', N'0999999999')
SET IDENTITY_INSERT [dbo].[Nhacungcap] OFF
GO
SET IDENTITY_INSERT [dbo].[PhanQuyen] ON 

INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (1, N'Member')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (2, N'Admin')
INSERT [dbo].[PhanQuyen] ([IDQuyen], [TenQuyen]) VALUES (3, N'Thành Viên Vip')
SET IDENTITY_INSERT [dbo].[PhanQuyen] OFF
GO
SET IDENTITY_INSERT [dbo].[Sanpham] ON 

INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (1, N'Cỏ Lan Chi', CAST(35000 AS Decimal(18, 0)), 1, N'Lan Chi là loài cây có tốc độ sinh trưởng nhanh. Cây chịu bóng bán phần, nhu cầu nước trung bình cho nên khá thích hợp để  làm cây trồng nội thất Ngoài ra, cỏ còn có tác dụng thanh lọc không khí, trừ tà. Trong phong thủy, cỏ Lan Chi được xếp vào loại cây cảnh may mắn, sự kiên trì đem lại tài lộc cho con người', NULL, N'CLC1.jpg', 4, 1, CAST(N'2022-10-25T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (2, N'Cây Sống Đời', CAST(11000 AS Decimal(18, 0)), 1, N'Hoa sống đời là một trong những loại cây để bàn phổ biến nhất hiện nay. Việc sử dụng cây giúp cho không gian nâng cao thẩm mỹ với màu sắc hoa giản dị, mộc mạc nhưng mang ý nghĩa của sự chân thành và tình yêu vĩnh cửu. Hoa cũng mang nhiều ý nghĩa khác nhau và thường được người sử dụng đặt ở nhiều vị trí khác nhau trong phòng làm việc, phòng khách. Loại cây này dễ dàng chăm sóc, không có yêu cầu có quá cao về môi trường sống.', NULL, N'SD1.jpg', 2, 1, CAST(N'2022-02-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (3, N'Vạn Niên Thanh Rủ', CAST(90000 AS Decimal(18, 0)), 1, N'Cây Vạn Niên Thanh sống lâu năm mà vẫn xanh tốt, vào mùa đông lá không héo úa nên được coi là loài cây cát tường, ưa chuộng và sử dụng rộng rãi, dùng Vạn Niên Thanh trong ngày lễ tết là ngụ ý sung túc tốt đẹp, trong việc hôn nhân là cầu chúc như ý, trong lễ mừng thọ là để chúc sống lâu. Những chậu cây vạn niên thanh treo giỏ tươi mát treo lên giàn hoa hay mái hiên sẽ làm không khí thêm thanh mát nhẹ nhàng, mát mẻ…', NULL, N'VNTR1.jpg', 2, 1, CAST(N'2022-03-29T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (4, N'Cây Vạn Lộc', CAST(89000 AS Decimal(18, 0)), 1, N'Cây Vạn Lộc hay còn gọi là cây Thiên Phú cây có ý nghĩa phong thủy mang đến tài lộc và may mắn cho gia chủ. Cây phù hợp làm cây để bàn, trang trí quán cà phê, để bàn uống nước, góc nhỏ trong nhà…', NULL, N'VL1.jpg', 3, 1, CAST(N'2022-01-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (5, N'Hạt Giống Cà Chua Bi Vàng', CAST(25000 AS Decimal(18, 0)), 1, N'Cà chua bi còn là nguồn cung cấp các loại vitamin A, C và K dồi dào. Lượng kali cao giúp hạ huyết áp và giảm nguy cơ đột quỵ. Ngoài ra trong thành phần dinh dưỡng của cà chua bi phải kể đến các loại vitamin B6, B9, B1 và các khoáng chất vi lượng như: magie, mangan, canxi, photpho và đồng.', NULL, N'CCBLV1.jpg', 3, 2, CAST(N'2022-04-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (6, N'Hạt Giống Bí Đỏ Lai', CAST(25000 AS Decimal(18, 0)), 1, N'Bí đỏ hay còn gọi là bí ngô là một loại quả chứa rất nhiều giá trị dinh dưỡng tốt cho sức khỏe, giàu vitamin, sắt, đạm, chất béo và các loại axít amin hữu cơ tốt cho cơ thể. Quả bí ngô được ưa chuộng trong chế biến các món như canh bí đỏ, đọt bí đỏ xào tỏi,… ngoài ra mọi người cũng thường dùng bí đỏ để chế biến sữa bí đỏ uống rất tốt, giúp tăng cân, đẹp da, tốt cho hệ tiêu hóa và ngăn ngừa các bệnh về tim mạch, xương khớp,…', NULL, N'BDL1.jpg', 3, 2, CAST(N'2022-01-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (7, N'Hạt Giống Dâu Tây Khổng Lồ', CAST(30000 AS Decimal(18, 0)), 1, N'Vitamin C có trong dâu tây làm tăng sản xuất collagen, có tác dụng làm săn chắc da và chống lão hóa hiệu quả. Ngoài ra, một nghiên cứu cho thấy rằng chiết xuất của nó có tác dụng bảo vệ và chống lại các bức xạ cực tím cho da. Sử dụng dâu tây thường xuyên có thể giữ cho làn da tươi mới và sạch sẽ.  ', NULL, N'DTKL1.jpg', 2, 2, CAST(N'2022-09-09T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (8, N'Hạt Giống Bí Dao', CAST(25000 AS Decimal(18, 0)), 1, N'Bí đao là loại rau xanh thường dùng phổ biến trong các bữa ăn của mọi người cũng tương tự như dưa chuột. Có thể dùng bí đao ăn luộc hoặc nấu canh tôm, canh cua, làm nộm, xào thịt gà, thịt lợn. Bí đao còn dùng làm mứt, mứt bí đao thường dùng trong dịp Tết Nguyên đán. Ăn bí đao có tác dụng thông tiểu, tiêu phù, giải khát, mát tim, giảm phiền muộn, bớt mụn nhọt, vỏ quả dùng chữa đái dắt do bàng quang nhiệt hoặc đái đục ra chất nhầy. Hạt bí đao cũng dùng rang ăn và dùng chữa ho, giải độc và trị rắn cắn. Lá bí đao giã nát trộn với giấm bôi đắp chữa các đầu ngón tay sưng đau (chín mé), ở Campuchia, người ta dùng rễ nấu nước tắm để trị bệnh đậu mùa.', NULL, N'BD1.jpg', 3, 2, CAST(N'2022-09-08T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (9, N'Hạt Giống ATISO', CAST(600000 AS Decimal(18, 0)), 1, N'Chất chống oxy hóa cynarin và silymarin có trong atiso rất có ích cho gan. Một số thí nghiệm cho thấy chúng còn có tác dụng phục hồi chức năng của gan. Trước đây, atiso thường được sử dụng trong khoảng thời gian dài như là thảo dược thay thế cho thuốc trong việc điều trị một số bệnh về gan.', NULL, N'ATISO1.jpg', 2, 3, CAST(N'2022-08-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (10, N'Sâm Hàn Quốc', CAST(25000 AS Decimal(18, 0)), 1, N'Hàn Quốc không chỉ được biết đến với tên gọi “xứ sở kimchi” và còn nổi tiếng là vùng đất của nhân sâm. Nhân sâm Hàn Quốc có những giá trị to lớn cả về mặt y học lẫn kinh tế và văn hóa.', NULL, N'SHQ1.jpg', 3, 3, CAST(N'2022-02-21T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (11, N'Hạt Giống Bạc Hàn Mèo CATNIP', CAST(100000 AS Decimal(18, 0)), 1, N'Hạt giống bạc hà mèo Catnip hay CatMint có danh pháp khoa học là Nepeta cataria. Đây được biết đến là một loài thực vật có hoa trong họ Hoa môi. Loài này được L. mô tả khoa học đầu tiên năm 1753, là một loại cây thân thảo dài ngày ngắn, phát triển từ 50-100 cm (20-39 inch ) và rộng, nở từ cuối mùa xuân đến mùa thu, thuộc họ bạc hà, có tác dụng kích thích hưng phấn đối với họ nhà mèo, chính vì vậy bạc hà này được dùng để huấn luyện sư tử, cọp ở các rạp xiếc. Được trồng như là một cây cảnh để sử dụng trong vườn. Nó cũng được trồng với chất lượng hấp dẫn của nó để nuôi mèo.  Cây chịu được hạn hán và chống sâu bọ. Nó có thể là chất chống côn trùng cho một số loại côn trùng nhất định, bao gồm rệp vừng và bọ xít . Catnip được trồng tốt nhất trong ánh sáng mặt trời và phát triển như một nhánh cây lâu năm. Nhiều người đang rất muốn tìm mua hạt giống bạc hà mèo Catnip vì sự đặc biệt của nó. Không chỉ người yêu mèo mà nhiều người cũng yêu thích dùng nó để trồng làm cảnh. Cây bạc hà mèo catnip được coi như là cây thuốc cho loài mèo.

– Có tác dụng ổn định dạ dày, an thần, kích thích tiết mồ hôi làm giảm sốt. Hương thơm và đặc tính tác dụng nhẹ của cây rất thích hợp dùng để chữa bệnh cảm lạnh, cảm cúm và bệnh sốt ở trẻ, đặc biệt là khi được trộn với hoa cơm cháy và làm ngọt bằng mật. Cây bạc hà mèo chủ yếu chống đầy hơi, chữa khó tiêu và đau bụng. Nó cũng được dùng để chữa đau đầu có liên quan đến các bệnh về tiêu hoá.', NULL, N'Meo1.jpg', 2, 3, CAST(N'2022-05-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (12, N'Hạt Giống Hoa Hướng Dương Lùn', CAST(26000 AS Decimal(18, 0)), 1, N'Có các đặc tính gần giống như hoa hướng dương thông thường, hướng dương lùn có chiều cao thấp hơn một chút và thường được trồng vào chậu nhỏ làm đẹp cho bàn làm việc, góc học tập, cửa sổ, ban-công…', NULL, N'HHD1.jpg', 3, 4, CAST(N'2022-02-22T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (13, N'Củ Hoa TULIP', CAST(25000 AS Decimal(18, 0)), 1, N'Hoa tulip có nguồn gốc từ Châu Âu, được trồng nhiều ở Hà Lan. Ở Việt Nam, tulip được trồng chủ yếu ở Đà Lạt. Đây là một trong những loài hoa có hình dáng, màu sắc đẹp, được nhiều người ưa thích nên hiện nay rất nhiều người muốn trồng tại nhà, nhất là trong những ngày Tết. Nói tới kỹ thuật trồng cây hoa tulip ngay tại nhà nhiều người nghĩ rằng nó phức tạp và khó sống nhưng thực chất trồng hoa tulip rất đơn giản và dễ chăm sóc lại cho hoa nở như ý muốn trong những ngày Tết đến Xuân về.', NULL, N'TULIP1.jpg', 2, 4, CAST(N'2022-08-08T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (14, N'Hạt Giống Hoa Mai Địa Thảo', CAST(25000 AS Decimal(18, 0)), 1, N'Có xuất xứ từ các nước Đông Phi xa xôi, mai địa thảo là loài hoa có màu sắc sặc sỡ, vui mắt, dễ trồng, sức đề kháng tốt, hoa nở quanh năm. Đây là loài thích hợp trồng trong chậu, giỏ treo để làm đẹp cho sân vườn, ban-công, hiên nha, được các gia đình Việt rất ưa chuộng', NULL, N'Mai1.jpg', 3, 4, CAST(N'2022-02-27T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (17, N'Hạt Giống Cải Bắp Babi', CAST(20000 AS Decimal(18, 0)), 1, N'Theo Đông y, bắp cải vị ngọt, tính hàn, không độc, có tác dụng hòa huyết, thanh nhiệt, thanh phế, mát dạ dày, giải độc, lợi tiểu. Bắp cải cũng giúp chống suy nhược thần kinh, giảm đau nhức phòng chống các bệnh ung thư, tim mạch và nhiều loại bệnh khác.', NULL, N'CB1.jpg', 2, 5, CAST(N'2022-04-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (18, N'Hạt Giống Rau Dền Xanh', CAST(25000 AS Decimal(18, 0)), 1, N'Các nghiên cứu đã chỉ ra rằng ăn rau dền thường xuyên sẽ giúp ổn định đường huyết, điều này rất tốt cho bệnh nhân tiểu đường túyp 2. Rau dền còn giúp làm giảm nguy cơ mắc các bệnh liên quan đến tình trạng tăng lượng đường trong máu như béo phì.', NULL, N'RDX1.jpg', 3, 5, CAST(N'2022-07-07T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (19, N'Hạt Giống Cải Thìa Trắng', CAST(20000 AS Decimal(18, 0)), 1, N'Cải thìa chứa nhiều vitamin và khoáng chất, bổ sung nhiều dưỡng chất cho cơ thể, ngăn ngừa một số bệnh ung thư và bảo vệ tim mạch. Không những vậy, loại rau này còn được dùng làm vị thuốc chữa bệnh khi kết hợp cùng một số dược liệu khác.', NULL, N'CTT1.jpg', 2, 5, CAST(N'2022-12-02T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (20, N'Hạt Giống Mồng Tơi Đỏ', CAST(20000 AS Decimal(18, 0)), 1, N'Nhờ màu sắc lạ mắt, dễ trồng, dễ chăm sóc, mùi vị thơm ngon và có thể làm cảnh, giống mồng tơi tím đỏ đang được nhiều chị em lựa chọn để trồng trên sân thượng, ban công nhà phố. Mặc dù có cách trồng và hương vị không khác giống mồng tơi thường nhưng mồng tơi tím đang được nhiều chị em săn lùng về trồng thử trong vườn.', NULL, N'MTD1.jpg', 2, 5, CAST(N'2022-11-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (21, N'Chậu Đất Nung', CAST(20000 AS Decimal(18, 0)), 1, N'Chậu được làm từ đất nung có màu nâu đỏ với nhiều kiểu dáng và kích thước.

Chậu đất nung trồng lan có hình nón cụt với miệng chậu lớn hơn đáy. Quanh thân chậu, dưới đáy chậu có các lỗ thoát nước và thoáng khí, sát miệng chậu có 3 lỗ nhỏ với khoảng cánh bằng nhau dùng để gắn móc treo giúp chậu thăng bằng trên không. Miệng chậu có dạng lượn sóng, có gờ trang trí, cũng có loại dạng đơn giản', NULL, N'CDN1.jpg', 4, 6, CAST(N'2022-11-26T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (22, N'Đất Sạch Trồng Cây ', CAST(25000 AS Decimal(18, 0)), 1, N'Đất trồng rất quan trọng trong quá trình sinh trưởng và phát triển của cây. Để đảm bảo cây sinh trưởng và phát triển tốt, đất trồng phải sạch bệnh, tơi xốp và đầy đủ hàm lượng dinh dưỡng thiết yếu cung cấp cho cây.

Đất minh đức là loại đất  sạch chứa đầy đủ các chất dinh dưỡng cần thiết cho cây trồng sinh trưởng và phát triển. Đất minh đức được làm từ đất phù sa sông Hồng xử lý sạch và loại bỏ tạp chất, diệt vi khuẩn có hại sau đó  được xay và trộn ủ với các chất dinh dưỡng  từ nguồn hữu cơ vi sinh nhằm tăng thêm những vi sinh vật có lợi cho phát triển cây trồng', NULL, N'DSTC1.jpg', 4, 6, CAST(N'2022-12-11T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (23, N'Bình Phun 1lit', CAST(25000 AS Decimal(18, 0)), 1, N'Bình phun tưới cây được làm bằng nhựa PP, PE cao cấp, siêu bền,an toàn, chống được tia UV và ảnh hưởng của môi trường, sử dụng thời gian dài không bị nứt vỡ. Thiết kế nhỏ gọn, kích thước nhẹ, có thể cầm tay hoặc đeo vai rất tiện sử dụng.

Khu vườn nhỏ với những chậu rau, chậu hoa hay cây cảnh xinh xinh nhà bạn là nơi bạn thường thư giãn chăm sóc cho cây vào mỗi buổi sáng, buổi chiều hay những lúc rảnh. Hàng ngày bạn thường tưới nước cho cây giúp cây xanh tươi mát, mang thiên nhiên đến ngôi nhà bạn. Bình xịt tưới cây là dụng cụ không thể thiếu khi chăm sóc khu vườn, với thiết kế chắc chắn, nhỏ gọn, nhẹ nhàng tiện lợi sẽ giúp bạn thoải mái khi tưới cây.', NULL, N'BP1.jpg', 4, 6, CAST(N'2022-03-28T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (24, N'Phân Trùn Quế Dạng Viên ', CAST(50000 AS Decimal(18, 0)), 1, N'Phân trùn quế dạng viên  là phân dinh dưỡng vi sinh cao cấp, cho cây trồng tươi tốt đạt năng suất cao và được nhiều người tin dùng. Được đóng gói dưới dạng bịch có khối lượng 1kg nhỏ gọn, tiện dụng thích hợp cho bón rau, bón cây, bón cho hoa với quy mô nhỏ tại nhà, làm vườn nơi ban công sân thượng…

Là giải pháp tối ưu để thay thế các loại phân hữu cơ như: phân dơi, phân gà, phân bò… nhờ các ưu điểm vượt trội:', NULL, N'PTQ1.jpg', 4, 7, CAST(N'2022-02-20T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (25, N'THUỐC TRỪ SÂU SINH HỌC RADIANT', CAST(50000 AS Decimal(18, 0)), 1, N'Radiant là thuốc trừ sâu sinh học được chiết xuất từ thiên nhiên qua quá trình lên men và bán tổng hợp hiện đại nhất dùng để phòng ngừa và điều trị bệnh bọ trĩ trên hoa hồng leo.', NULL, N'TTS1.jpg', 4, 7, CAST(N'2022-12-12T00:00:00' AS SmallDateTime))
INSERT [dbo].[Sanpham] ([Masp], [Tensp], [Giatien], [Soluong], [Mota], [Sanphammoi], [Anhbia], [MaNCC], [MaDM], [NgayCapNhat]) VALUES (26, N'Hạt Giống Hoa Anh Đào', CAST(25000 AS Decimal(18, 0)), 1, N'Có nguồn gốc từ đất nước mặt trời mọc Nhật Bản, hoa anh đào là loài hoa tượng trưng cho sự mong manh, trong trắng, cho sắc đẹp kiêu sa của người phụ nữ. Hoa anh đào nở nhiều vào mùa xuân từ tháng 1 đến tháng 5 hàng năm, nên nghĩ tới hoa anh đào là người ta nghĩ tới sự tươi mới, rực rỡ, rạo rực của sắc xuân.

Vài năm trở lại đây, hoa anh đào đã được trồng nhiều tại Đà Lạt, Đà Nẵng, TP Hồ Chí Minh, Hà Nội… để phục vụ cho thú chơi hoa, ngắm hoa ngày Tết.', NULL, N'AD1.jpg', 2, 4, CAST(N'2022-04-25T00:00:00' AS SmallDateTime))
SET IDENTITY_INSERT [dbo].[Sanpham] OFF
GO
ALTER TABLE [dbo].[Nguoidung] ADD  CONSTRAINT [DF_Nguoidung_IDQuyen]  DEFAULT ((0)) FOR [IDQuyen]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Donhang] FOREIGN KEY([Madon])
REFERENCES [dbo].[Donhang] ([Madon])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Donhang]
GO
ALTER TABLE [dbo].[Chitietdonhang]  WITH CHECK ADD  CONSTRAINT [FK_Chitietdonhang_Sanpham] FOREIGN KEY([Masp])
REFERENCES [dbo].[Sanpham] ([Masp])
GO
ALTER TABLE [dbo].[Chitietdonhang] CHECK CONSTRAINT [FK_Chitietdonhang_Sanpham]
GO
ALTER TABLE [dbo].[Donhang]  WITH CHECK ADD  CONSTRAINT [FK_Donhang_Khachhang] FOREIGN KEY([MaNguoidung])
REFERENCES [dbo].[Nguoidung] ([MaNguoiDung])
GO
ALTER TABLE [dbo].[Donhang] CHECK CONSTRAINT [FK_Donhang_Khachhang]
GO
ALTER TABLE [dbo].[Nguoidung]  WITH CHECK ADD  CONSTRAINT [FK_Nguoidung_Nguoidung] FOREIGN KEY([IDQuyen])
REFERENCES [dbo].[PhanQuyen] ([IDQuyen])
GO
ALTER TABLE [dbo].[Nguoidung] CHECK CONSTRAINT [FK_Nguoidung_Nguoidung]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Danhmucsanpham] FOREIGN KEY([MaDM])
REFERENCES [dbo].[Danhmucsanpham] ([MaDM])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Danhmucsanpham]
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Nhacungcap] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[Nhacungcap] ([MaNCC])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Nhacungcap]
GO
