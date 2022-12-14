USE [master]
GO
/****** Object:  Database [BKC_Management]    Script Date: 04/02/2022 10:40:39 ******/
CREATE DATABASE [BKC_Management] ON  PRIMARY 
( NAME = N'BKC_Management', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BKC_Management.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BKC_Management_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\BKC_Management_log.LDF' , SIZE = 504KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BKC_Management] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BKC_Management].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BKC_Management] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BKC_Management] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BKC_Management] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BKC_Management] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BKC_Management] SET ARITHABORT OFF
GO
ALTER DATABASE [BKC_Management] SET AUTO_CLOSE ON
GO
ALTER DATABASE [BKC_Management] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BKC_Management] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BKC_Management] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BKC_Management] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BKC_Management] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BKC_Management] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BKC_Management] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BKC_Management] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BKC_Management] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BKC_Management] SET  DISABLE_BROKER
GO
ALTER DATABASE [BKC_Management] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BKC_Management] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BKC_Management] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BKC_Management] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BKC_Management] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BKC_Management] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BKC_Management] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BKC_Management] SET  READ_WRITE
GO
ALTER DATABASE [BKC_Management] SET RECOVERY SIMPLE
GO
ALTER DATABASE [BKC_Management] SET  MULTI_USER
GO
ALTER DATABASE [BKC_Management] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BKC_Management] SET DB_CHAINING OFF
GO
USE [BKC_Management]
GO
/****** Object:  User [test1]    Script Date: 04/02/2022 10:40:39 ******/
CREATE USER [test1] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [student]    Script Date: 04/02/2022 10:40:39 ******/
CREATE USER [student] FOR LOGIN [student] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [bkacad1]    Script Date: 04/02/2022 10:40:39 ******/
CREATE USER [bkacad1] FOR LOGIN [bkacad1] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Schema [sales]    Script Date: 04/02/2022 10:40:39 ******/
CREATE SCHEMA [sales] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [product]    Script Date: 04/02/2022 10:40:39 ******/
CREATE SCHEMA [product] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [orders]    Script Date: 04/02/2022 10:40:39 ******/
CREATE SCHEMA [orders] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [accounts]    Script Date: 04/02/2022 10:40:39 ******/
CREATE SCHEMA [accounts] AUTHORIZATION [dbo]
GO
/****** Object:  Schema [account]    Script Date: 04/02/2022 10:40:39 ******/
CREATE SCHEMA [account] AUTHORIZATION [dbo]
GO
/****** Object:  Table [dbo].[users]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[users](
	[username] [nvarchar](25) NULL,
	[pasword] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [product].[SUPPLIER]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [product].[SUPPLIER](
	[idsupplier] [int] NOT NULL,
	[companyname] [nvarchar](25) NULL,
	[contactname] [nvarchar](50) NULL,
	[adress] [nvarchar](50) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[fax] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idsupplier] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[SHIPPER]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[SHIPPER](
	[idshipper] [int] NOT NULL,
	[company] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idshipper] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [accounts].[SALES]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [accounts].[SALES](
	[idsale] [int] NOT NULL,
	[fname] [nvarchar](50) NULL,
	[lname] [nvarchar](50) NULL,
	[birthdate] [datetime] NULL,
	[adress] [nvarchar](100) NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[mgird] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[idsale] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [accounts].[CUSTOMERS]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [accounts].[CUSTOMERS](
	[idcus] [int] NOT NULL,
	[companyname] [nvarchar](25) NULL,
	[contactname] [nvarchar](25) NULL,
	[adress] [nvarchar](25) NULL,
	[city] [nvarchar](25) NULL,
	[country] [nvarchar](25) NULL,
	[phone] [nvarchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcus] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [product].[CATEGORIES]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [product].[CATEGORIES](
	[idcategory] [int] NOT NULL,
	[categoryname] [nvarchar](50) NULL,
	[descriptions] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[idcategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admins]    Script Date: 04/02/2022 10:40:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admins](
	[username] [nvarchar](25) NULL,
	[pass] [nvarchar](25) NULL
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[view1]    Script Date: 04/02/2022 10:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[view1]
AS
SELECT     companyname, contactname
FROM         product.SUPPLIER
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[21] 2[3] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "SUPPLIER (product)"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 125
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 1
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
      Begin ColumnWidths = 9
         Width = 284
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
         Width = 1500
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'view1'
GO
/****** Object:  Table [product].[PRODUCTS]    Script Date: 04/02/2022 10:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [product].[PRODUCTS](
	[idproduct] [int] NOT NULL,
	[productname] [nvarchar](50) NULL,
	[unitprice] [numeric](10, 0) NULL,
	[idsupplier] [int] NULL,
	[idcategory] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idproduct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[ORDERS]    Script Date: 04/02/2022 10:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[ORDERS](
	[idorder] [int] NOT NULL,
	[orderdate] [date] NULL,
	[shiperdate] [date] NULL,
	[shipname] [nvarchar](50) NULL,
	[adressship] [nvarchar](50) NULL,
	[shipcity] [nvarchar](50) NULL,
	[shipcode] [nvarchar](50) NULL,
	[idshipper] [int] NULL,
	[idcus] [int] NULL,
	[idsale] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idorder] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [sales].[ORDERDETAIL]    Script Date: 04/02/2022 10:40:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [sales].[ORDERDETAIL](
	[idorder] [int] NOT NULL,
	[idproduct] [int] NOT NULL,
	[unitprice] [money] NULL,
	[quantity] [int] NULL,
	[discount] [numeric](4, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Check [CHK_birhdate]    Script Date: 04/02/2022 10:40:41 ******/
ALTER TABLE [accounts].[SALES]  WITH CHECK ADD  CONSTRAINT [CHK_birhdate] CHECK  (([birthdate]<=getdate()))
GO
ALTER TABLE [accounts].[SALES] CHECK CONSTRAINT [CHK_birhdate]
GO
/****** Object:  Check [CHK_dateship]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERS]  WITH CHECK ADD  CONSTRAINT [CHK_dateship] CHECK  (([orderdate]<=[shiperdate]))
GO
ALTER TABLE [sales].[ORDERS] CHECK CONSTRAINT [CHK_dateship]
GO
/****** Object:  Check [CHK_quantity]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERDETAIL]  WITH CHECK ADD  CONSTRAINT [CHK_quantity] CHECK  (([quantity]>(0)))
GO
ALTER TABLE [sales].[ORDERDETAIL] CHECK CONSTRAINT [CHK_quantity]
GO
/****** Object:  ForeignKey [FK_SALE_SALE]    Script Date: 04/02/2022 10:40:41 ******/
ALTER TABLE [accounts].[SALES]  WITH CHECK ADD  CONSTRAINT [FK_SALE_SALE] FOREIGN KEY([mgird])
REFERENCES [accounts].[SALES] ([idsale])
GO
ALTER TABLE [accounts].[SALES] CHECK CONSTRAINT [FK_SALE_SALE]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_CATEGORIES]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [product].[PRODUCTS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_CATEGORIES] FOREIGN KEY([idcategory])
REFERENCES [product].[CATEGORIES] ([idcategory])
GO
ALTER TABLE [product].[PRODUCTS] CHECK CONSTRAINT [FK_PRODUCTS_CATEGORIES]
GO
/****** Object:  ForeignKey [FK_PRODUCTS_SUPPLIER]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [product].[PRODUCTS]  WITH CHECK ADD  CONSTRAINT [FK_PRODUCTS_SUPPLIER] FOREIGN KEY([idsupplier])
REFERENCES [product].[SUPPLIER] ([idsupplier])
GO
ALTER TABLE [product].[PRODUCTS] CHECK CONSTRAINT [FK_PRODUCTS_SUPPLIER]
GO
/****** Object:  ForeignKey [FK_ORDERS_CUSTOMERS]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_CUSTOMERS] FOREIGN KEY([idcus])
REFERENCES [accounts].[CUSTOMERS] ([idcus])
GO
ALTER TABLE [sales].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_CUSTOMERS]
GO
/****** Object:  ForeignKey [FK_ORDERS_SALES]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_SALES] FOREIGN KEY([idsale])
REFERENCES [accounts].[SALES] ([idsale])
GO
ALTER TABLE [sales].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_SALES]
GO
/****** Object:  ForeignKey [FK_ORDERS_SHIPPER]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERS]  WITH CHECK ADD  CONSTRAINT [FK_ORDERS_SHIPPER] FOREIGN KEY([idshipper])
REFERENCES [sales].[SHIPPER] ([idshipper])
GO
ALTER TABLE [sales].[ORDERS] CHECK CONSTRAINT [FK_ORDERS_SHIPPER]
GO
/****** Object:  ForeignKey [FK_ORDERDETAIL_ORDERS]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERDETAIL]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAIL_ORDERS] FOREIGN KEY([idorder])
REFERENCES [sales].[ORDERS] ([idorder])
GO
ALTER TABLE [sales].[ORDERDETAIL] CHECK CONSTRAINT [FK_ORDERDETAIL_ORDERS]
GO
/****** Object:  ForeignKey [FK_ORDERDETAIL_PRODUCTS]    Script Date: 04/02/2022 10:40:42 ******/
ALTER TABLE [sales].[ORDERDETAIL]  WITH CHECK ADD  CONSTRAINT [FK_ORDERDETAIL_PRODUCTS] FOREIGN KEY([idproduct])
REFERENCES [product].[PRODUCTS] ([idproduct])
GO
ALTER TABLE [sales].[ORDERDETAIL] CHECK CONSTRAINT [FK_ORDERDETAIL_PRODUCTS]
GO
