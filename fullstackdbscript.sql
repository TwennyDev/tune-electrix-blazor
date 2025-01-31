USE [F201_Sam_Project]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 27/07/2020 7:51:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeviceCodes]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeviceCodes](
	[UserCode] [nvarchar](200) NOT NULL,
	[DeviceCode] [nvarchar](200) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NOT NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_DeviceCodes] PRIMARY KEY CLUSTERED 
(
	[UserCode] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FuelType]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FuelType](
	[FuelTypeId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_FuelType] PRIMARY KEY CLUSTERED 
(
	[FuelTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Invoice]    Script Date: 27/07/2020 7:51:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invoice](
	[InvoiceId] [int] IDENTITY(1000,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[TransactionId] [nvarchar](20) NOT NULL,
	[TotalPaid] [money] NOT NULL,
	[InvoiceDate] [datetime] NULL,
	[ShippingName] [nvarchar](50) NULL,
	[ShippingStreet] [nvarchar](50) NULL,
	[ShippingCity] [nvarchar](50) NULL,
	[ShippingPostcode] [nvarchar](10) NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[InvoiceId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvoiceProduct]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvoiceProduct](
	[InvoiceProductId] [int] IDENTITY(1,1) NOT NULL,
	[InvoiceId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[PriceAtTime] [money] NOT NULL,
	[Quantity] [int] NOT NULL,
 CONSTRAINT [PK_InvoiceProduct] PRIMARY KEY CLUSTERED 
(
	[InvoiceProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersistedGrants]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersistedGrants](
	[Key] [nvarchar](200) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[SubjectId] [nvarchar](200) NULL,
	[ClientId] [nvarchar](200) NOT NULL,
	[CreationTime] [datetime2](7) NOT NULL,
	[Expiration] [datetime2](7) NULL,
	[Data] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_PersistedGrants] PRIMARY KEY CLUSTERED 
(
	[Key] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[ProductName] [nvarchar](30) NOT NULL,
	[ProductDesc] [nvarchar](750) NOT NULL,
	[IsPhysical] [bit] NOT NULL,
	[StockLevel] [int] NOT NULL,
	[CurrentPrice] [money] NOT NULL,
	[ImageName] [nvarchar](25) NULL,
	[ProductCategoryId] [int] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductCategoryId] [int] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductCategoryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserCart]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserCart](
	[UserId] [nvarchar](450) NOT NULL,
	[CartData] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_UserCart] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleId] [int] IDENTITY(1,1) NOT NULL,
	[Engine] [nvarchar](25) NOT NULL,
	[FactoryHp] [int] NOT NULL,
	[TunedHp] [int] NOT NULL,
	[FactoryNm] [int] NOT NULL,
	[TunedNm] [int] NOT NULL,
	[ModelId] [int] NOT NULL,
	[FuelTypeId] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle] PRIMARY KEY CLUSTERED 
(
	[VehicleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleMake]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleMake](
	[MakeId] [int] IDENTITY(1,1) NOT NULL,
	[MakeName] [nvarchar](25) NOT NULL,
 CONSTRAINT [PK_VehicleMake] PRIMARY KEY CLUSTERED 
(
	[MakeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleModel]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleModel](
	[ModelId] [int] IDENTITY(1,1) NOT NULL,
	[ModelName] [nvarchar](25) NOT NULL,
	[MakeId] [int] NOT NULL,
 CONSTRAINT [PK_VehicleModel] PRIMARY KEY CLUSTERED 
(
	[ModelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VehicleProduct]    Script Date: 27/07/2020 7:51:19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleProduct](
	[VehicleProductId] [int] IDENTITY(1,1) NOT NULL,
	[VehicleId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
 CONSTRAINT [PK_VehicleProduct] PRIMARY KEY CLUSTERED 
(
	[VehicleProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'056f12d3-6e7e-451b-a482-6272ae4a4a75', N'buyer3@tunelab.com', N'BUYER3@TUNELAB.COM', N'buyer3@tunelab.com', N'BUYER3@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAEIcg1sQ37VjiOKYKhBw0ZI2SdKMJKA52KDuSz1zx26IwBx26zjlSQDJ9UT5rVjY3bQ==', N'33JRLAIX64X6LORGWMW45B6JGNVGDCUL', N'236d4557-69df-4b02-af51-64216a53909d', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'101fd726-1943-4e3a-aa3b-23bc4efdb486', N'buyer2@tunelab.com', N'BUYER2@TUNELAB.COM', N'buyer2@tunelab.com', N'BUYER2@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAELt7z9P6sxF6bg/eq1MSofrXKwn/Mk/LfjPNV8LczV4Wa87Ha+gukc2SHaWnjXdsxg==', N'PMCYMXAJDL6XWHH3W6IZOMYEIG7BQLUG', N'2164aad7-71a8-4ca0-8e6a-c824e232fed3', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'sam@tunelab.com', N'SAM@TUNELAB.COM', N'sam@tunelab.com', N'SAM@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAEOBDJtjQUT03QeitZryx3+ep0Th0BaIxBHaF5VHMIpgB1Iv4OoMfILCfgClmu3ahiA==', N'MYI64PVSS457CEREC27BN33EMA3N4VMA', N'c4a6897d-7f58-4331-ba3d-b854034a0d48', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'buyer1@tunelab.com', N'BUYER1@TUNELAB.COM', N'buyer1@tunelab.com', N'BUYER1@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAEMOTqASU9sMDU6P6sSAA1GcIcRJRwRxp9x0fccRBF9tbz2wcqRahlYHfgkRRIGAQig==', N'YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF', N'362c1b7e-99e2-4306-85da-33d862c19fff', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'46a6f239-17b8-41bb-89f8-9c3a84991286', N'test@test.com', N'TEST@TEST.COM', N'test@test.com', N'TEST@TEST.COM', 1, N'AQAAAAEAACcQAAAAEO/y+eWOFMj7YXMAW0YgTCU8a+xfo1V7azsBW/Udx3whmiIRzkAlpXWjdStp6s/xqQ==', N'WUC3HJIURJQGHZFAVCBK3UHD5RBHW2FF', N'0db02432-ec8c-4b63-aede-ba3f9aeece0c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'598a5f58-b651-4863-aa5c-f5f55ac4057c', N'buyer5@tunelab.com', N'BUYER5@TUNELAB.COM', N'buyer5@tunelab.com', N'BUYER5@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAEO6TtUSwiEQgJvQ+R8Q3r4CqGvYhxmECYM4gNBZlSZBY4k/ZBmer8ZyFvPhOTbPjMw==', N'LFGSWTXDABL5U6666HRZ3PSGZLUS7JWV', N'075ae329-145a-4a59-9853-bfcf52b03782', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'64b3665a-c750-4008-aa77-64ba0e722d58', N'buyer4@tunelab.com', N'BUYER4@TUNELAB.COM', N'buyer4@tunelab.com', N'BUYER4@TUNELAB.COM', 1, N'AQAAAAEAACcQAAAAEKFMbYIKW289XEhU2qHf3yK1cBwkEdYo29ijy0fv25jtMl6YCfYI5+LliZzSu6Z39w==', N'74MRMY3SYQITSQ3EH524SW35XLRHVBDU', N'f0798261-b555-4a17-a14e-3b6ce24d657b', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'eaad3230-a866-4dd3-a389-041b2de06c25', N'johntesting@example.com', N'JOHNTESTING@EXAMPLE.COM', N'johntesting@example.com', N'JOHNTESTING@EXAMPLE.COM', 1, N'AQAAAAEAACcQAAAAEHXcUX7aPvC+nIdREaCIQPeUqecaU5+NVRX7uMRDukCqDfRddnOCw9Oc+yc4QRsK7A==', N'US4TMVRW2XDXAGCFYOUCLDETBQNZLAEK', N'fb5f2572-769c-4983-89e5-affe8995b6a6', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[FuelType] ON 

INSERT [dbo].[FuelType] ([FuelTypeId], [Name]) VALUES (1, N'Petrol')
INSERT [dbo].[FuelType] ([FuelTypeId], [Name]) VALUES (2, N'Diesel')
INSERT [dbo].[FuelType] ([FuelTypeId], [Name]) VALUES (3, N'Hybrid')
INSERT [dbo].[FuelType] ([FuelTypeId], [Name]) VALUES (4, N'Electric')
SET IDENTITY_INSERT [dbo].[FuelType] OFF
SET IDENTITY_INSERT [dbo].[Invoice] ON 

INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1000, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'66303319GR442141L', 263.3500, CAST(N'2020-04-06T08:00:00.000' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1001, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'7UA961474F1539334', 345.0000, CAST(N'2020-04-07T12:00:00.000' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1002, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'6R2968333W705063M', 113.8500, CAST(N'2020-04-07T13:00:00.000' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1003, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'0TS63788ST5732003', 1161.5000, CAST(N'2020-04-09T17:55:00.000' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1004, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'7MV27917M5765791M', 113.8500, CAST(N'2020-04-10T16:00:00.000' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1005, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'3JS56719W4133635A', 460.0000, CAST(N'2020-04-12T18:37:20.087' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1006, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'2359095895175381G', 86.2500, CAST(N'2020-04-13T17:24:10.250' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1007, N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'3TT1875301031652W', 149.5000, CAST(N'2020-04-13T17:32:46.160' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1008, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'7U775123CR8846848', 1035.0000, CAST(N'2020-04-19T11:23:25.247' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1009, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'5JS66771FJ1623428', 460.0000, CAST(N'2020-04-19T11:24:02.410' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1010, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'6R5276135U599723H', 92.0000, CAST(N'2020-04-19T11:24:35.703' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1011, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'7XM75033T4184633C', 218.5000, CAST(N'2020-04-19T11:25:32.773' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1012, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'0LY35284Y64976051', 1378.8500, CAST(N'2020-04-19T11:26:05.897' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1013, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'91T1965593230450J', 200.1000, CAST(N'2020-04-19T11:26:59.703' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1014, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'2BR20841XW6313314', 1150.0000, CAST(N'2020-04-19T11:27:37.190' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1015, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'2KS235225R327513R', 11.5000, CAST(N'2020-04-19T11:28:25.940' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1016, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'9A778485SN067560M', 184.0000, CAST(N'2020-04-23T21:48:30.953' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1017, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'16C60176NL856115M', 460.0000, CAST(N'2020-04-23T21:58:45.527' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1018, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'2C9330839U072751H', 218.5000, CAST(N'2020-04-24T13:27:03.873' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1019, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'3PV0673717548302Y', 632.5000, CAST(N'2020-04-27T09:55:53.277' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1020, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'7MJ14251MM1545211', 86.2500, CAST(N'2020-04-27T10:04:14.863' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1021, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'91T64121E4958802F', 92.0000, CAST(N'2020-04-26T22:21:48.823' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1022, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'5WU37903CV359090J', 136.8500, CAST(N'2020-04-27T00:03:03.350' AS DateTime), N'John Smith', N'12 Queen Street', N'Auckland', N'2670')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1023, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'3V491385V1408350J', 253.0000, CAST(N'2020-04-29T10:53:56.980' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1024, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'51N71294GK393553D', 109.2500, CAST(N'2020-04-29T10:55:18.317' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1025, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'93R2913622878391N', 11.5000, CAST(N'2020-04-29T10:56:36.027' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1026, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'44X206007K907915C', 109.2500, CAST(N'2020-04-29T11:01:11.123' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1027, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'2M454638W9995305T', 11.5000, CAST(N'2020-04-29T11:24:28.603' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1028, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'87G9118111435380U', 69.0000, CAST(N'2020-04-29T11:39:53.387' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1029, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'7F107971R94739043', 69.0000, CAST(N'2020-04-29T11:43:03.410' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1030, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'1T017296BN718890C', 109.2500, CAST(N'2020-04-29T11:51:02.783' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1031, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'9V916999KB759484R', 113.8500, CAST(N'2020-04-29T00:05:01.703' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1032, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'1LM49998XP821622U', 172.5000, CAST(N'2020-04-29T18:37:53.347' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1033, N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'8JK200191V885290F', 92.0000, CAST(N'2020-04-29T20:26:49.647' AS DateTime), N'John Doe', N'123 Sample St', N'Wellington', N'6004')
INSERT [dbo].[Invoice] ([InvoiceId], [UserId], [TransactionId], [TotalPaid], [InvoiceDate], [ShippingName], [ShippingStreet], [ShippingCity], [ShippingPostcode]) VALUES (1034, N'eaad3230-a866-4dd3-a389-041b2de06c25', N'5HM52342X1001802C', 1782.5000, CAST(N'2020-05-04T02:05:41.217' AS DateTime), N'Tester Tech', N'555 Imaginary Rd', N'Auckland', N'0612')
SET IDENTITY_INSERT [dbo].[Invoice] OFF
SET IDENTITY_INSERT [dbo].[InvoiceProduct] ON 

INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (1, 1000, 1, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (2, 1000, 3, 10.0000, 3)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (3, 1000, 4, 100.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (4, 1001, 15, 100.0000, 3)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (5, 1002, 1, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (6, 1003, 3, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (7, 1003, 5, 500.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (8, 1004, 1, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (9, 1005, 1, 400.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (10, 1006, 12, 75.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (11, 1007, 17, 60.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (12, 1007, 16, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (13, 1008, 4, 900.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (14, 1009, 1, 400.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (15, 1010, 16, 10.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (16, 1010, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (17, 1011, 6, 95.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (18, 1012, 15, 1100.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (19, 1012, 14, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (20, 1013, 12, 75.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (21, 1013, 14, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (22, 1014, 13, 1000.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (23, 1015, 16, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (24, 1016, 16, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (25, 1016, 12, 75.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (26, 1017, 1, 400.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (27, 1018, 6, 95.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (28, 1019, 2, 550.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (29, 1020, 12, 75.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (30, 1021, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (31, 1021, 16, 10.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (32, 1022, 14, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (33, 1022, 16, 10.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (34, 1023, 7, 80.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (35, 1023, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (36, 1024, 6, 95.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (37, 1025, 16, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (38, 1026, 6, 95.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (39, 1027, 16, 10.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (40, 1028, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (41, 1029, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (42, 1030, 6, 95.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (43, 1031, 14, 99.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (44, 1032, 12, 75.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (45, 1033, 17, 60.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (46, 1033, 16, 10.0000, 2)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (47, 1034, 3, 650.0000, 1)
INSERT [dbo].[InvoiceProduct] ([InvoiceProductId], [InvoiceId], [ProductId], [PriceAtTime], [Quantity]) VALUES (48, 1034, 4, 900.0000, 1)
SET IDENTITY_INSERT [dbo].[InvoiceProduct] OFF
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'+ZfeVnYiOK41ytIdi5wg4f+r353uQjHdMlvl/TT+KoM=', N'authorization_code', N'056f12d3-6e7e-451b-a482-6272ae4a4a75', N'TuneLabProject.Client', CAST(N'2020-04-18T23:52:40.0000000' AS DateTime2), CAST(N'2020-04-18T23:57:40.0000000' AS DateTime2), N'{"CreationTime":"2020-04-18T23:52:40Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"056f12d3-6e7e-451b-a482-6272ae4a4a75","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"33JRLAIX64X6LORGWMW45B6JGNVGDCUL","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer3@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer3@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer3@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587253921","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://localhost:44397/authentication/login-callback","Nonce":null,"StateHash":"-i7Mn2OJuGGaDaobtRrBCA","WasConsentShown":false,"SessionId":"FIRdh6GvZcfre3yhLwa1mA","CodeChallenge":"gBWFSK2MTFJ6P679xL+nc1evMTWilokF2XS+Ysu4U14=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'4Xm6AOjqFeHu3x0HmoVglrKmn9mVfjG3ZcP+oQgk2LQ=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-23T23:02:02.0000000' AS DateTime2), CAST(N'2020-04-23T23:07:02.0000000' AS DateTime2), N'{"CreationTime":"2020-04-23T23:02:02Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587679097","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://tunelab.azurewebsites.net/authentication/login-callback","Nonce":null,"StateHash":"tt68hZEw94uKfxuT4H6jyQ","WasConsentShown":false,"SessionId":"jmSeaL33gzb71v__mEy1YA","CodeChallenge":"HPPMxAIoPSTvoUaPIOiGH6QyofVj24JKOhI54rOp6TY=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'CQLLkD2nUA3+++uBukBJrMcWI2cBR4gZR7FwHU8UEVE=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-23T23:02:22.0000000' AS DateTime2), CAST(N'2020-04-23T23:07:22.0000000' AS DateTime2), N'{"CreationTime":"2020-04-23T23:02:22Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587679097","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://tunelab.azurewebsites.net/authentication/login-callback","Nonce":null,"StateHash":"ZAP71uOfswyffgfeMvJehQ","WasConsentShown":false,"SessionId":"jmSeaL33gzb71v__mEy1YA","CodeChallenge":"C0PJAcgyvIRCUBswSWHRgkZQvHvILD2Q6ontwG4AfJs=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'JA2ggL72OuWuwVfZR4nmScwGldGcuayLzWzr9LPR1bE=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-23T23:02:22.0000000' AS DateTime2), CAST(N'2020-04-23T23:07:22.0000000' AS DateTime2), N'{"CreationTime":"2020-04-23T23:02:22Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587679097","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://tunelab.azurewebsites.net/authentication/login-callback","Nonce":null,"StateHash":"3VAaMIcP180b6q9zjg4iAA","WasConsentShown":false,"SessionId":"jmSeaL33gzb71v__mEy1YA","CodeChallenge":"6c1OUM/Yuhl/EPl0WnM/SPLX7MGDE8m3CzfQbDE5djE=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'P3fcvLc9VMylRvkbnhHUxk/AqyLoDgh2+0TPrQVZM90=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-23T22:57:20.0000000' AS DateTime2), CAST(N'2020-04-23T23:02:20.0000000' AS DateTime2), N'{"CreationTime":"2020-04-23T22:57:20Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587679097","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://tunelab.azurewebsites.net/authentication/login-callback","Nonce":null,"StateHash":"pNj6oAoYLbsPxP_xXRBMZA","WasConsentShown":false,"SessionId":"jmSeaL33gzb71v__mEy1YA","CodeChallenge":"yj0AlNvBDhFu3kqj2ziHEPf7DQXZRgXBt8DBwtlPwIY=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'sWr003lqIRoXBfe89+MDELTIKA/vJVDG7VDUPZFnpbg=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-23T23:02:11.0000000' AS DateTime2), CAST(N'2020-04-23T23:07:11.0000000' AS DateTime2), N'{"CreationTime":"2020-04-23T23:02:11Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587679097","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://tunelab.azurewebsites.net/authentication/login-callback","Nonce":null,"StateHash":"-YpkKtcTxG7-YrYd8kOiBA","WasConsentShown":false,"SessionId":"jmSeaL33gzb71v__mEy1YA","CodeChallenge":"A6esaASNhgpiRqjKW692fTd6obKk9/E/CR5eccAI0g4=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'TOe5TVIDkw/qkwnCo9dua9tJSQa5nuqSsDIgmbsV1T8=', N'authorization_code', N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'TuneLabProject.Client', CAST(N'2020-04-18T23:20:55.0000000' AS DateTime2), CAST(N'2020-04-18T23:25:55.0000000' AS DateTime2), N'{"CreationTime":"2020-04-18T23:20:55Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"41be050e-685b-4dbb-8204-f0fac5ad7c74","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"YYKFGFWLCXBXAV3KBWP2XHEK2T6FL7WF","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer1@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587252039","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://localhost:44397/authentication/login-callback","Nonce":null,"StateHash":"flrcGlU1QL1fnWKczBz5HQ","WasConsentShown":false,"SessionId":"94LrUoEciLgDherZ1BiskA","CodeChallenge":"d9tqIa5aCZPRo9wZJ78CqmUU8NQEbaDyvrIq/3shvMk=","CodeChallengeMethod":"S256","Properties":{}}')
INSERT [dbo].[PersistedGrants] ([Key], [Type], [SubjectId], [ClientId], [CreationTime], [Expiration], [Data]) VALUES (N'xcONrPuFmsYDFxiYOrcK5qJDOJlyrW9ZZ6dPaq+//gI=', N'authorization_code', N'101fd726-1943-4e3a-aa3b-23bc4efdb486', N'TuneLabProject.Client', CAST(N'2020-04-18T23:39:45.0000000' AS DateTime2), CAST(N'2020-04-18T23:44:45.0000000' AS DateTime2), N'{"CreationTime":"2020-04-18T23:39:45Z","Lifetime":300,"ClientId":"TuneLabProject.Client","Subject":{"AuthenticationType":"Identity.Application","Claims":[{"Type":"sub","Value":"101fd726-1943-4e3a-aa3b-23bc4efdb486","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"AspNet.Identity.SecurityStamp","Value":"PMCYMXAJDL6XWHH3W6IZOMYEIG7BQLUG","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"preferred_username","Value":"buyer2@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"name","Value":"buyer2@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email","Value":"buyer2@tunelab.com","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"email_verified","Value":"true","ValueType":"http://www.w3.org/2001/XMLSchema#boolean"},{"Type":"amr","Value":"pwd","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"idp","Value":"local","ValueType":"http://www.w3.org/2001/XMLSchema#string"},{"Type":"auth_time","Value":"1587253158","ValueType":"http://www.w3.org/2001/XMLSchema#integer64"}]},"IsOpenId":true,"RequestedScopes":["openid","profile","TuneLabProject.ServerAPI"],"RedirectUri":"https://localhost:44397/authentication/login-callback","Nonce":null,"StateHash":"K4MTPIThoSPj_zfmoqPTmA","WasConsentShown":false,"SessionId":"_MIvsIirmx6L6dokqGinYw","CodeChallenge":"h5rDoj5Bs3n6iFY8rk6gUnwSKUkbDaUbj9Kr7oRrG/k=","CodeChallengeMethod":"S256","Properties":{}}')
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (1, N'Economy Stage 1', N'This flash tune is programmed by us to suit the specifications of your diesel vehicle. Suits diesel vehicles of most models and offers up to 5% better economy. Use our vehicle search to check if this product suits your vehicle.', 0, 99, 400.0000, N'circuit1.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (2, N'Economy Stage 2', N'This flash tune is programmed by us to suit the specifications of your diesel vehicle. Suits diesel vehicles of most models and offers up to 10% better economy. Use our vehicle search to check if this product suits your vehicle.', 0, 99, 550.0000, N'circuit1.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (3, N'Economy Stage 3', N'This flash tune is programmed by us to suit the specifications of your diesel vehicle. Suits diesel vehicles of most models and offers up to 15% better economy. Use our vehicle search to check if this product suits your vehicle.', 0, 99, 650.0000, N'circuit1.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (4, N'Diesel Performance', N'This flash tune is programmed by us to suit the specifications of your diesel vehicle. Suits diesel vehicles of most models and offers up to 20% better performance. Use our vehicle search to check expected gains and if this product suits your vehicle.', 0, 99, 900.0000, N'circuit2.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (5, N'Petrol Performance', N'This flash tune is programmed by us to suit the specifications of your petrol vehicle. Suits petrol vehicles of most models and offers up to 20% better performance. Use our vehicle search to check expected gains and if this product suits your vehicle.', 0, 99, 900.0000, N'circuit3.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (6, N'Dyno Tuning', N'Our specialised dyno tuning service is done in house on our, 1000hp capable, 4WD rolling road. This service is charged on a per-hour basis with one hour being the minimum.', 0, 99, 95.0000, N'dyno.jpg', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (7, N'Auto Electrical', N'We have specialised auto electrical experts on site who can handle any job big or small. From aftermarket ECU fitting to entire car wire ups, we do it all! This service is charged on a per hour basis, with one hour being the minimum.', 0, 99, 80.0000, N'autoelec.jpg', 4)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (8, N'Race Flash', N'Custom TuneLab flash tune to suit a range of high end performance vehicles. Power increase will depend on the vehicle. Please use our vehicle search page to see expected gains and whether this will suit your application', 0, 99, 1150.0000, N'mercedes.jpg', 1)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (9, N'Toyota Tunebox', N'TuneLab TuneBox piggyback ECU. This chipbox allows for further customisation of your Toyota vehicle''s fuel delivery system.  Requires dyno tuning, which is included in the cost. Comes with harness to plug directly into the factory loom.  Use our vehicle search to check if this product suits your vehicle.', 1, 25, 1750.0000, N'diesel-toyota.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (10, N'Audi TuneBox', N'TuneLab TuneBox piggyback ECU. This chipbox allows for further customisation of your Audi vehicle''s fuel delivery system.  Requires dyno tuning, which is included in the cost.  Comes with harness to plug directly into the factory loom. Use our vehicle search to check if this product suits your vehicle.', 1, 30, 1950.0000, N'audi.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (11, N'Lambo TuneBox', N'TuneLab TuneBox piggyback ECU. This chipbox allows for further customisation of your Lamborghini vehicle''s fuel delivery system.  Requires dyno tuning, which is included in the cost. Comes with harness to plug directly into the factory loom.  Use our vehicle search to check if this product suits your vehicle.', 1, 0, 2800.0000, N'lambo.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (12, N'Mode Select Switch', N'Mode select switch to suit the TuneLab TuneBox series piggy back ECU. Allows for multiple fuel maps to be switched between. Plugs directly into the unit and comes with mounting hardware.', 1, 51, 75.0000, N'bmw-interior.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (13, N'Universal TuneBox', N'TuneLab TuneBox piggyback ECU. This unit is universal and therefore will need wiring into the vehicle. Please enquire within if wiring services are required. Requires dyno tuning. Suits almost any application.', 1, 22, 1000.0000, N'sport-car.jpg', 2)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (14, N'Boost Solenoid', N'Universal boost control solenoid. For use with turbo vehicles using the TuneLab TuneBox ECU. Allows boost to be controlled electronically by the ECU. Hardware and wiring instructions included.', 1, 8, 99.0000, N'corvette.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (15, N'Toyota Turbo Upgrade', N'Turbo upgrade to suit Toyota. For use on applications using an aftermarket ECU, such as the TuneLab TuneBox.  Requires dyno tuning.', 1, 9, 1100.0000, N'turbo.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (16, N'Dump Valve Shims', N'Fuel pressure dump valve shims to suit Toyota. These shims are easy to fit and allow for increased and more stable fuel pressure. To suit common rail diesels that are using one of our flash tunes or chip boxes only. Instructions supplied. ', 1, 87, 10.0000, N'diesel-toyota.jpg', 3)
INSERT [dbo].[Product] ([ProductId], [ProductName], [ProductDesc], [IsPhysical], [StockLevel], [CurrentPrice], [ImageName], [ProductCategoryId]) VALUES (17, N'EGR Kit', N'EGR blanking kit to suit Toyota. This kit includes blanking plates and hardware. This kit should be used in conjunction with one of our flash tunes or chip boxes.', 1, 52, 60.0000, N'blanking-plate.jpg', 3)
SET IDENTITY_INSERT [dbo].[Product] OFF
SET IDENTITY_INSERT [dbo].[ProductCategory] ON 

INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (1, N'Flash Tune')
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (2, N'Chipbox')
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (3, N'Accessory')
INSERT [dbo].[ProductCategory] ([ProductCategoryId], [CategoryName]) VALUES (4, N'Service')
SET IDENTITY_INSERT [dbo].[ProductCategory] OFF
INSERT [dbo].[UserCart] ([UserId], [CartData]) VALUES (N'101fd726-1943-4e3a-aa3b-23bc4efdb486', N'[{"ProductId":12,"Quantity":1}]')
INSERT [dbo].[UserCart] ([UserId], [CartData]) VALUES (N'132a68fc-13a6-4940-b3c3-d94f825444f1', N'[{"ProductId":4,"Quantity":1}]')
INSERT [dbo].[UserCart] ([UserId], [CartData]) VALUES (N'41be050e-685b-4dbb-8204-f0fac5ad7c74', N'[{"ProductId":16,"Quantity":2},{"ProductId":17,"Quantity":1}]')
INSERT [dbo].[UserCart] ([UserId], [CartData]) VALUES (N'46a6f239-17b8-41bb-89f8-9c3a84991286', N'[{"ProductId":17,"Quantity":1},{"ProductId":16,"Quantity":1}]')
SET IDENTITY_INSERT [dbo].[Vehicle] ON 

INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (1, N'1.4 16v 103', 103, 116, 124, 138, 1, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (2, N'1.6 16v 103', 103, 120, 134, 156, 1, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (3, N'1.6 16v 120', 120, 134, 146, 163, 1, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (4, N'2.0 16v 150', 150, 167, 186, 208, 1, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (5, N'2.5 V6', 190, 200, 220, 240, 2, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (6, N'3.2 V6 ', 250, 270, 300, 320, 2, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (7, N'1750 Turbo', 200, 240, 320, 400, 3, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (8, N'2.4 20v ', 210, 240, 400, 480, 3, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (9, N'5.9 V12', 450, 480, 570, 600, 4, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (10, N'6.0 V12', 470, 500, 600, 620, 4, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (11, N'4.3 V8', 380, 410, 410, 435, 5, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (12, N'4.7 V8', 426, 450, 470, 500, 5, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (13, N'6.0 V12', 517, 542, 570, 600, 5, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (14, N'1.2 TFSI', 85, 105, 160, 201, 6, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (15, N'1.6 TDI', 104, 145, 250, 320, 6, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (16, N'2.0 TDI', 141, 176, 320, 388, 6, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (17, N'3.0 V6', 220, 235, 300, 320, 7, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (18, N'3.0 TDI', 245, 295, 500, 600, 7, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (19, N'4.2 FSI', 420, 440, 430, 455, 8, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (20, N'GT-560', 560, 585, 540, 580, 8, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (21, N'2.7 Turbo', 380, 425, 440, 550, 9, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (22, N'4.2 FSI', 450, 475, 430, 450, 9, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (23, N'4.2t V8', 480, 520, 560, 660, 10, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (24, N'4.0 TFSI', 560, 650, 700, 850, 10, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (25, N'2.2 Turbo', 230, 283, 350, 427, 11, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (26, N'4.2 V8', 340, 360, 420, 450, 11, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (27, N'6.0 W12', 560, 604, 700, 794, 12, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (28, N'6.0 W12 Turbo', 603, 660, 650, 757, 12, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (29, N'6.7 V8 Turbo', 537, 700, 1100, 1400, 13, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (30, N'318 TDS', 90, 115, 190, 240, 14, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (31, N'320D', 150, 180, 330, 380, 14, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (32, N'335i Turbo', 306, 360, 400, 510, 14, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (33, N'1.5 Turbo Hybrid', 362, 400, 570, 650, 15, 3)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (34, N'8.0 W16', 1001, 1200, 1250, 1400, 16, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (35, N'65-180', 180, 224, 700, 820, 17, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (36, N'65-220', 220, 260, 820, 960, 17, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (37, N'75-310', 310, 355, 1275, 1455, 17, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (38, N'85-480', 480, 560, 2100, 2490, 17, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (39, N'45-135', 135, 175, 500, 620, 18, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (40, N'55-280', 280, 330, 1020, 1165, 18, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (41, N'5.5 V12', 428, 435, 490, 510, 19, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (42, N'6.0 V12', 670, 680, 620, 630, 20, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (43, N'3.9 V8 Turbo', 560, 660, 755, 850, 21, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (44, N'4.3 V8', 460, 480, 485, 505, 21, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (45, N'2.5 TDI', 116, 140, 245, 287, 22, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (46, N'3.0 JTDM', 160, 190, 400, 510, 22, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (47, N'2.3D', 106, 145, 270, 330, 23, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (48, N'3.0 Turbo', 205, 250, 470, 560, 23, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (49, N'3.0 V6 S/Charged', 340, 400, 450, 500, 24, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (50, N'2.2D', 155, 185, 360, 440, 25, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (51, N'2.7D', 207, 240, 435, 520, 25, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (52, N'3.0 V6', 240, 255, 300, 320, 25, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (53, N'4.2 V8', 300, 315, 420, 440, 25, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (54, N'2.5TD', 115, 144, 278, 319, 26, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (55, N'2.8 CRDI', 163, 193, 400, 457, 26, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (56, N'2.7 CRD', 163, 200, 400, 480, 27, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (57, N'3.0 CRD', 241, 280, 550, 630, 27, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (58, N'LP580 V10', 580, 630, 540, 580, 28, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (59, N'LP610 V10', 610, 630, 560, 580, 28, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (60, N'6.5 V12', 700, 730, 690, 720, 29, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (61, N'2.2 TD4', 122, 160, 360, 420, 30, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (62, N'2.5 TD5', 122, 150, 300, 365, 30, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (63, N'3.0 SDV6', 255, 300, 600, 650, 31, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (64, N'3.0 TDI', 258, 310, 601, 710, 32, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (65, N'1800 16v', 210, 234, 280, 306, 33, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (66, N'V8', 400, 425, 451, 475, 34, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (67, N'4.2 V8', 405, 430, 460, 495, 35, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (68, N'4.7 V8', 440, 460, 490, 510, 35, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (69, N'3.8 V8', 916, 1000, 900, 1000, 36, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (70, N'4.0 V8', 800, 850, 800, 900, 37, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (71, N'55 AMG', 347, 367, 510, 535, 38, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (72, N'200 CDI', 136, 200, 360, 460, 39, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (73, N'300 CGI', 252, 312, 340, 390, 39, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (74, N'3.2 DI', 160, 190, 373, 430, 40, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (75, N'2.0 DI', 140, 180, 310, 400, 41, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (76, N'2.5 D40', 131, 170, 304, 370, 42, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (77, N'STX550', 227, 262, 550, 660, 42, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (78, N'2.5 DCI', 163, 210, 403, 460, 43, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (79, N'3.0 DCI', 231, 280, 550, 600, 43, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (80, N'Tricolore', 678, 708, 780, 810, 44, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (81, N'3.4 DFI', 350, 365, 390, 410, 45, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (82, N'3.8 DFI Turbo', 500, 525, 460, 485, 45, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (83, N'5.7 V10', 612, 639, 590, 628, 46, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (84, N'1.5 DCI', 100, 130, 200, 250, 47, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (85, N'1.9 DTI', 80, 105, 160, 200, 47, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (86, N'2.5 DCI', 150, 180, 320, 400, 48, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (87, N'230', 230, 265, 1050, 1210, 49, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (88, N'340', 340, 390, 1700, 1955, 49, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (89, N'420', 420, 500, 2100, 2460, 50, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (90, N'580', 580, 670, 2750, 3181, 50, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (91, N'60', 320, 332, 280, 296, 51, 4)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (92, N'4.5 V8 D4D', 286, 330, 650, 750, 52, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (93, N'3.0 D4D', 190, 220, 420, 480, 52, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (94, N'3.0 D4D', 171, 210, 360, 480, 53, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (95, N'1.6 TDI', 105, 135, 250, 310, 54, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (96, N'2.0 TDI', 136, 180, 320, 400, 54, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (97, N'2.0 TSI GTI', 220, 300, 350, 450, 54, 1)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (98, N'3.0 TDI', 204, 270, 450, 600, 55, 2)
INSERT [dbo].[Vehicle] ([VehicleId], [Engine], [FactoryHp], [TunedHp], [FactoryNm], [TunedNm], [ModelId], [FuelTypeId]) VALUES (99, N'320', 320, 395, 1200, 1600, 56, 2)
GO
SET IDENTITY_INSERT [dbo].[Vehicle] OFF
SET IDENTITY_INSERT [dbo].[VehicleMake] ON 

INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (1, N'Alfa Romeo')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (2, N'Aston Martin')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (3, N'Audi')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (4, N'Bentley')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (5, N'BMW')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (6, N'Bugatti')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (7, N'DAF')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (8, N'Ferrari')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (9, N'Fiat')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (10, N'Iveco')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (11, N'Jaguar')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (12, N'Jeep')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (13, N'Lamborghini')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (14, N'Land Rover')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (15, N'Lotus')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (16, N'Maserati')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (17, N'McLaren')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (18, N'Mercedes Benz')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (19, N'Mitsubishi')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (20, N'Nissan')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (21, N'Pagani')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (22, N'Porsche')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (23, N'Renault')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (24, N'Scania')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (25, N'Tesla')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (26, N'Toyota')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (27, N'Volkswagen')
INSERT [dbo].[VehicleMake] ([MakeId], [MakeName]) VALUES (28, N'Volvo')
SET IDENTITY_INSERT [dbo].[VehicleMake] OFF
SET IDENTITY_INSERT [dbo].[VehicleModel] ON 

INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (1, N'145/146', 1)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (2, N'156', 1)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (3, N'Spider', 1)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (4, N'DB9', 2)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (5, N'Vantage', 2)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (6, N'A1', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (7, N'A4', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (8, N'R8', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (9, N'RS4', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (10, N'RS6', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (11, N'S6', 3)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (12, N'Continental', 4)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (13, N'Mulsanne', 4)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (14, N'3 Series', 5)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (15, N'I8', 5)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (16, N'Veyron', 6)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (17, N'CF', 7)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (18, N'LF', 7)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (19, N'456', 8)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (20, N'599 GTO', 8)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (21, N'California', 8)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (22, N'Ducato', 9)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (23, N'Daily', 10)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (24, N'F-Type', 11)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (25, N'S-Type', 11)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (26, N'Cherokee', 12)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (27, N'Grand Cherokee', 12)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (28, N'Huracan', 13)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (29, N'Aventador', 13)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (30, N'Defender', 14)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (31, N'Discovery', 14)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (32, N'Range Rover Sport', 14)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (33, N'Elise', 15)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (34, N'Gransport', 16)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (35, N'Granturismo', 16)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (36, N'P1', 17)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (37, N'Senna', 17)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (38, N'CLK', 18)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (39, N'E-Class', 18)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (40, N'Triton', 19)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (41, N'Outlander', 19)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (42, N'Navara', 20)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (43, N'Pathfinder', 20)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (44, N'Zonda', 21)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (45, N'911', 22)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (46, N'Carrera GT', 22)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (47, N'Clio', 23)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (48, N'Trafic', 23)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (49, N'P-Series', 24)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (50, N'R-Series', 24)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (51, N'Model S', 25)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (52, N'Landcruiser', 26)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (53, N'Hilux', 26)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (54, N'Golf', 27)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (55, N'Touareg', 27)
INSERT [dbo].[VehicleModel] ([ModelId], [ModelName], [MakeId]) VALUES (56, N'FE', 28)
SET IDENTITY_INSERT [dbo].[VehicleModel] OFF
SET IDENTITY_INSERT [dbo].[VehicleProduct] ON 

INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (1, 15, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (2, 16, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (3, 18, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (4, 30, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (5, 31, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (6, 35, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (7, 36, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (8, 37, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (9, 38, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (10, 39, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (11, 40, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (12, 45, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (13, 46, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (14, 47, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (15, 48, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (16, 50, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (17, 51, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (18, 54, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (19, 55, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (20, 56, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (21, 57, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (22, 61, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (23, 62, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (24, 63, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (25, 64, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (26, 72, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (28, 74, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (29, 75, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (30, 76, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (31, 77, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (32, 78, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (33, 79, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (34, 84, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (35, 85, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (36, 86, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (37, 87, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (38, 88, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (39, 89, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (40, 90, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (41, 92, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (42, 93, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (43, 94, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (44, 95, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (45, 96, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (46, 98, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (47, 99, 1)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (48, 15, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (49, 16, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (50, 18, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (51, 30, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (52, 31, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (53, 35, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (54, 36, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (55, 37, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (56, 38, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (57, 39, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (58, 40, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (59, 45, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (60, 46, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (61, 47, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (62, 48, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (63, 50, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (64, 51, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (65, 54, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (66, 55, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (67, 56, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (68, 57, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (69, 61, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (70, 62, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (71, 63, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (72, 64, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (73, 72, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (74, 74, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (75, 75, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (76, 76, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (77, 77, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (78, 78, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (79, 79, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (80, 84, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (81, 85, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (82, 86, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (83, 87, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (84, 88, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (85, 89, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (86, 90, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (87, 92, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (88, 93, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (89, 94, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (90, 95, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (91, 96, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (92, 98, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (93, 99, 2)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (94, 15, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (95, 16, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (96, 18, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (97, 30, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (98, 31, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (99, 35, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (100, 36, 3)
GO
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (101, 37, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (102, 38, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (103, 39, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (104, 40, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (105, 45, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (106, 46, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (107, 47, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (108, 48, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (109, 50, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (110, 51, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (111, 54, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (112, 55, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (113, 56, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (114, 57, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (115, 61, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (116, 62, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (117, 63, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (118, 64, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (119, 72, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (120, 74, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (121, 75, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (122, 76, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (123, 77, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (124, 78, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (125, 79, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (126, 84, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (127, 85, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (128, 86, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (129, 87, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (130, 88, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (131, 89, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (132, 90, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (133, 92, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (134, 93, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (135, 94, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (136, 95, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (137, 96, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (138, 98, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (139, 99, 3)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (140, 15, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (141, 16, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (142, 18, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (143, 30, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (144, 31, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (145, 35, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (146, 36, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (147, 37, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (148, 38, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (149, 39, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (150, 40, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (151, 45, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (152, 46, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (153, 47, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (154, 48, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (155, 50, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (156, 51, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (157, 54, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (158, 55, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (159, 56, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (160, 57, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (161, 61, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (162, 62, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (163, 63, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (164, 64, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (165, 72, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (166, 74, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (167, 75, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (168, 76, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (169, 77, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (170, 78, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (171, 79, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (172, 84, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (173, 85, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (174, 86, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (175, 87, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (176, 88, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (177, 89, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (178, 90, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (179, 92, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (180, 93, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (181, 94, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (182, 95, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (183, 96, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (184, 98, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (185, 99, 4)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (186, 1, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (187, 2, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (188, 3, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (189, 4, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (190, 5, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (191, 6, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (192, 7, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (193, 8, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (194, 9, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (195, 10, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (196, 11, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (197, 12, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (198, 13, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (199, 14, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (200, 17, 5)
GO
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (201, 19, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (202, 20, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (203, 21, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (204, 22, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (205, 23, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (206, 24, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (207, 25, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (208, 26, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (209, 27, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (210, 28, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (211, 29, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (212, 32, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (213, 33, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (214, 41, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (215, 43, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (216, 44, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (217, 49, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (218, 52, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (219, 53, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (220, 60, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (221, 65, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (222, 66, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (223, 67, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (224, 68, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (225, 69, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (226, 70, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (227, 73, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (228, 80, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (229, 81, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (230, 82, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (231, 83, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (232, 97, 5)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (278, 34, 8)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (282, 58, 8)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (283, 59, 8)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (284, 71, 8)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (289, 58, 11)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (290, 59, 11)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (291, 14, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (292, 15, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (293, 16, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (294, 17, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (295, 18, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (296, 19, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (297, 20, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (298, 21, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (299, 22, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (300, 23, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (301, 24, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (302, 25, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (303, 26, 10)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (304, 92, 9)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (305, 93, 9)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (306, 94, 9)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (307, 92, 16)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (308, 93, 16)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (309, 94, 16)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (310, 92, 17)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (311, 93, 17)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (312, 94, 17)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (313, 58, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (314, 59, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (315, 14, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (316, 15, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (317, 16, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (318, 17, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (319, 18, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (320, 19, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (321, 20, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (322, 21, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (323, 22, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (324, 23, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (325, 24, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (326, 25, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (327, 26, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (328, 92, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (329, 93, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (330, 94, 12)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (331, 92, 15)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (332, 93, 15)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (333, 94, 15)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (334, 92, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (335, 93, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (336, 94, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (337, 14, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (338, 15, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (339, 16, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (340, 17, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (341, 18, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (342, 19, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (343, 20, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (344, 21, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (345, 22, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (346, 23, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (347, 24, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (348, 25, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (349, 26, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (350, 58, 14)
INSERT [dbo].[VehicleProduct] ([VehicleProductId], [VehicleId], [ProductId]) VALUES (351, 59, 14)
SET IDENTITY_INSERT [dbo].[VehicleProduct] OFF
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[InvoiceProduct]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceProduct_Invoice] FOREIGN KEY([InvoiceId])
REFERENCES [dbo].[Invoice] ([InvoiceId])
GO
ALTER TABLE [dbo].[InvoiceProduct] CHECK CONSTRAINT [FK_InvoiceProduct_Invoice]
GO
ALTER TABLE [dbo].[InvoiceProduct]  WITH CHECK ADD  CONSTRAINT [FK_InvoiceProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[InvoiceProduct] CHECK CONSTRAINT [FK_InvoiceProduct_Product]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_ProductCategory] FOREIGN KEY([ProductCategoryId])
REFERENCES [dbo].[ProductCategory] ([ProductCategoryId])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_ProductCategory]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_FuelType] FOREIGN KEY([FuelTypeId])
REFERENCES [dbo].[FuelType] ([FuelTypeId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_FuelType]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [FK_Vehicle_VehicleModel] FOREIGN KEY([ModelId])
REFERENCES [dbo].[VehicleModel] ([ModelId])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleModel]
GO
ALTER TABLE [dbo].[VehicleModel]  WITH CHECK ADD  CONSTRAINT [FK_VehicleModel_VehicleMake] FOREIGN KEY([MakeId])
REFERENCES [dbo].[VehicleMake] ([MakeId])
GO
ALTER TABLE [dbo].[VehicleModel] CHECK CONSTRAINT [FK_VehicleModel_VehicleMake]
GO
ALTER TABLE [dbo].[VehicleProduct]  WITH CHECK ADD  CONSTRAINT [FK_VehicleProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([ProductId])
GO
ALTER TABLE [dbo].[VehicleProduct] CHECK CONSTRAINT [FK_VehicleProduct_Product]
GO
ALTER TABLE [dbo].[VehicleProduct]  WITH CHECK ADD  CONSTRAINT [FK_VehicleProduct_Vehicle] FOREIGN KEY([VehicleId])
REFERENCES [dbo].[Vehicle] ([VehicleId])
GO
ALTER TABLE [dbo].[VehicleProduct] CHECK CONSTRAINT [FK_VehicleProduct_Vehicle]
GO
