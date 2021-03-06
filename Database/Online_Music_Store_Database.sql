USE [Online_Music_Store_FIT]
GO
/****** Object:  Table [dbo].[Albums]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Albums](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[ArtistID] [int] NOT NULL,
	[LabelID] [int] NOT NULL,
 CONSTRAINT [PK_Albums] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artists]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artists](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[ArtistName] [nvarchar](50) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NULL,
	[Gender] [nvarchar](1) NULL,
	[CityID] [int] NOT NULL,
	[About] [nvarchar](max) NULL,
 CONSTRAINT [PK_Artists] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](50) NOT NULL,
	[RegionID] [int] NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CreditCards]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCards](
	[CreditCardID] [int] IDENTITY(1,1) NOT NULL,
	[CreditCardType] [nvarchar](50) NOT NULL,
	[CreditCardNumber] [nvarchar](25) NOT NULL,
	[ExpDate] [date] NOT NULL,
 CONSTRAINT [PK_CreditCards] PRIMARY KEY CLUSTERED 
(
	[CreditCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerCreditCard]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerCreditCard](
	[CustomerID] [int] NOT NULL,
	[CreditCardID] [int] NOT NULL,
 CONSTRAINT [PK_CustomerCreditCard] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[CreditCardID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customers]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[BirthDate] [date] NOT NULL,
	[Gender] [nvarchar](1) NULL,
	[CityID] [int] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nvarchar](25) NULL,
	[E-mail] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genres]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genres](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[GenreName] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_Genres] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Labels]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Labels](
	[LabelID] [int] IDENTITY(1,1) NOT NULL,
	[LabelName] [nvarchar](50) NOT NULL,
	[Founded] [date] NOT NULL,
	[Status] [bit] NOT NULL,
	[CityID] [int] NOT NULL,
	[Address] [nvarchar](100) NULL,
	[Phone] [nvarchar](25) NULL,
	[E-mail] [nvarchar](100) NOT NULL,
	[About] [nvarchar](max) NULL,
 CONSTRAINT [PK_Labels] PRIMARY KEY CLUSTERED 
(
	[LabelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regions]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regions](
	[RegionID] [int] IDENTITY(1,1) NOT NULL,
	[RegionName] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED 
(
	[RegionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reviews](
	[CustomerID] [int] NOT NULL,
	[SongID] [int] NOT NULL,
	[Rating] [int] NOT NULL,
	[Review] [nvarchar](160) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[SongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrder]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrder](
	[SalesOrderID] [int] IDENTITY(1,1) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[OrderDate] [date] NOT NULL,
	[CreditCardID] [int] NULL,
	[Total] [decimal](10, 2) NULL,
 CONSTRAINT [PK_SalesOrder] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[SalesOrderDetailID] [int] IDENTITY(1,1) NOT NULL,
	[SalesOrderID] [int] NOT NULL,
	[SongID] [int] NOT NULL,
	[SongPrice] [decimal](10, 2) NULL,
 CONSTRAINT [PK_SalesOrderDetail] PRIMARY KEY CLUSTERED 
(
	[SalesOrderDetailID] ASC,
	[SalesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Songs]    Script Date: 03-Oct-18 1:25:27 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Songs](
	[SongID] [int] IDENTITY(1,1) NOT NULL,
	[SongName] [nvarchar](50) NOT NULL,
	[Duration] [int] NOT NULL,
	[ReleaseDate] [date] NOT NULL,
	[AlbumID] [int] NOT NULL,
	[GenreID] [int] NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
 CONSTRAINT [PK_Songs] PRIMARY KEY CLUSTERED 
(
	[SongID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_Artists_Albums] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artists] ([ArtistID])
GO
ALTER TABLE [dbo].[Albums] CHECK CONSTRAINT [FK_Artists_Albums]
GO
ALTER TABLE [dbo].[Albums]  WITH CHECK ADD  CONSTRAINT [FK_Labels_Albums] FOREIGN KEY([LabelID])
REFERENCES [dbo].[Labels] ([LabelID])
GO
ALTER TABLE [dbo].[Albums] CHECK CONSTRAINT [FK_Labels_Albums]
GO
ALTER TABLE [dbo].[Artists]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Artists] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Artists] CHECK CONSTRAINT [FK_Cities_Artists]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Cities] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([CountryID])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Countries_Cities]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Regions_Countries] FOREIGN KEY([RegionID])
REFERENCES [dbo].[Regions] ([RegionID])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Regions_Countries]
GO
ALTER TABLE [dbo].[CustomerCreditCard]  WITH CHECK ADD  CONSTRAINT [FK_CreditCards_CustomerCreditCard] FOREIGN KEY([CreditCardID])
REFERENCES [dbo].[CreditCards] ([CreditCardID])
GO
ALTER TABLE [dbo].[CustomerCreditCard] CHECK CONSTRAINT [FK_CreditCards_CustomerCreditCard]
GO
ALTER TABLE [dbo].[CustomerCreditCard]  WITH CHECK ADD  CONSTRAINT [FK_Customers_CustomerCreditCard] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerCreditCard] CHECK CONSTRAINT [FK_Customers_CustomerCreditCard]
GO
ALTER TABLE [dbo].[Customers]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Customers] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Customers] CHECK CONSTRAINT [FK_Cities_Customers]
GO
ALTER TABLE [dbo].[Labels]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Labels] FOREIGN KEY([CityID])
REFERENCES [dbo].[Cities] ([CityID])
GO
ALTER TABLE [dbo].[Labels] CHECK CONSTRAINT [FK_Cities_Labels]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Customers_Reviews] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Customers_Reviews]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Songs_Reviews] FOREIGN KEY([SongID])
REFERENCES [dbo].[Songs] ([SongID])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Songs_Reviews]
GO
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_CreditCards_SalesOrder] FOREIGN KEY([CreditCardID])
REFERENCES [dbo].[CreditCards] ([CreditCardID])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [FK_CreditCards_SalesOrder]
GO
ALTER TABLE [dbo].[SalesOrder]  WITH CHECK ADD  CONSTRAINT [FK_Customers_SalesOrder] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customers] ([CustomerID])
GO
ALTER TABLE [dbo].[SalesOrder] CHECK CONSTRAINT [FK_Customers_SalesOrder]
GO
ALTER TABLE [dbo].[SalesOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_SalesOrder_SalesOrderDetail] FOREIGN KEY([SalesOrderID])
REFERENCES [dbo].[SalesOrder] ([SalesOrderID])
GO
ALTER TABLE [dbo].[SalesOrderDetail] CHECK CONSTRAINT [FK_SalesOrder_SalesOrderDetail]
GO
ALTER TABLE [dbo].[SalesOrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_Songs_SalesOrderDetail] FOREIGN KEY([SongID])
REFERENCES [dbo].[Songs] ([SongID])
GO
ALTER TABLE [dbo].[SalesOrderDetail] CHECK CONSTRAINT [FK_Songs_SalesOrderDetail]
GO
ALTER TABLE [dbo].[Songs]  WITH CHECK ADD  CONSTRAINT [FK_Albums_Songs] FOREIGN KEY([AlbumID])
REFERENCES [dbo].[Albums] ([AlbumID])
GO
ALTER TABLE [dbo].[Songs] CHECK CONSTRAINT [FK_Albums_Songs]
GO
ALTER TABLE [dbo].[Songs]  WITH CHECK ADD  CONSTRAINT [FK_Genres_Songs] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genres] ([GenreID])
GO
ALTER TABLE [dbo].[Songs] CHECK CONSTRAINT [FK_Genres_Songs]
GO
