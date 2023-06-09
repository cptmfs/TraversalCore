USE [master]
GO
/****** Object:  Database [traversaldb]    Script Date: 6.06.2023 13:56:38 ******/
CREATE DATABASE [traversaldb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'traversaldb', FILENAME = N'C:\Users\ferit\traversaldb.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'traversaldb_log', FILENAME = N'C:\Users\ferit\traversaldb_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [traversaldb] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [traversaldb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [traversaldb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [traversaldb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [traversaldb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [traversaldb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [traversaldb] SET ARITHABORT OFF 
GO
ALTER DATABASE [traversaldb] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [traversaldb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [traversaldb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [traversaldb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [traversaldb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [traversaldb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [traversaldb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [traversaldb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [traversaldb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [traversaldb] SET  ENABLE_BROKER 
GO
ALTER DATABASE [traversaldb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [traversaldb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [traversaldb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [traversaldb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [traversaldb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [traversaldb] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [traversaldb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [traversaldb] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [traversaldb] SET  MULTI_USER 
GO
ALTER DATABASE [traversaldb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [traversaldb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [traversaldb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [traversaldb] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [traversaldb] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [traversaldb] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [traversaldb] SET QUERY_STORE = OFF
GO
USE [traversaldb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 6.06.2023 13:56:38 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[About2s]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About2s](
	[About2ID] [int] IDENTITY(1,1) NOT NULL,
	[Title1] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
 CONSTRAINT [PK_About2s] PRIMARY KEY CLUSTERED 
(
	[About2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Abouts]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Abouts](
	[AboutID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image1] [nvarchar](max) NULL,
	[Title2] [nvarchar](max) NULL,
	[Description2] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Abouts] PRIMARY KEY CLUSTERED 
(
	[AboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Accounts]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Balance] [decimal](18, 2) NOT NULL,
 CONSTRAINT [PK_Accounts] PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Announcements]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Announcements](
	[AnnouncementID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Content] [nvarchar](max) NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Announcements] PRIMARY KEY CLUSTERED 
(
	[AnnouncementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](450) NOT NULL,
	[ProviderKey] [nvarchar](450) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [int] NOT NULL,
	[RoleId] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ImageUrl] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[Gender] [nvarchar](max) NULL,
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [int] NOT NULL,
	[LoginProvider] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](450) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[CommentID] [int] IDENTITY(1,1) NOT NULL,
	[CommentUser] [nvarchar](max) NULL,
	[CommentDate] [datetime2](7) NOT NULL,
	[CommentContent] [nvarchar](max) NULL,
	[CommentState] [bit] NOT NULL,
	[DestinationID] [int] NOT NULL,
	[AppUserID] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[CommentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Adress] [nvarchar](max) NULL,
	[Phone] [nvarchar](max) NULL,
	[MapLocation] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Contacts] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUses]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUses](
	[ContactUsID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Mail] [nvarchar](max) NULL,
	[Subject] [nvarchar](max) NULL,
	[MessageBody] [nvarchar](max) NULL,
	[MessageDate] [datetime2](7) NOT NULL,
	[MessageStatus] [bit] NOT NULL,
 CONSTRAINT [PK_ContactUses] PRIMARY KEY CLUSTERED 
(
	[ContactUsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Destinations]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Destinations](
	[DestinationID] [int] IDENTITY(1,1) NOT NULL,
	[City] [nvarchar](max) NULL,
	[DayNight] [nvarchar](max) NULL,
	[Price] [float] NOT NULL,
	[Image] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Capacity] [int] NOT NULL,
	[Status] [bit] NOT NULL,
	[CoverImage] [nvarchar](max) NULL,
	[Details1] [nvarchar](max) NULL,
	[Details2] [nvarchar](max) NULL,
	[Image2] [nvarchar](max) NULL,
	[GuideID] [int] NOT NULL,
	[Date] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Destinations] PRIMARY KEY CLUSTERED 
(
	[DestinationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Feature2s]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Feature2s](
	[Feature2ID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Feature2s] PRIMARY KEY CLUSTERED 
(
	[Feature2ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Features]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Features](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Features] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Guides]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Guides](
	[GuideID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Image] [nvarchar](max) NULL,
	[TwitterUrl] [nvarchar](max) NULL,
	[InstagramUrl] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
	[Description2] [nvarchar](max) NULL,
	[GuideListImage] [nvarchar](max) NULL,
 CONSTRAINT [PK_Guides] PRIMARY KEY CLUSTERED 
(
	[GuideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Newsletters]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Newsletters](
	[NewsletterID] [int] IDENTITY(1,1) NOT NULL,
	[Mail] [nvarchar](max) NULL,
 CONSTRAINT [PK_Newsletters] PRIMARY KEY CLUSTERED 
(
	[NewsletterID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservations]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservations](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[AppUserId] [int] NOT NULL,
	[PersonCount] [nvarchar](max) NULL,
	[ReservastionDate] [datetime2](7) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Status] [nvarchar](max) NULL,
	[DestinationID] [int] NOT NULL,
 CONSTRAINT [PK_Reservations] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubAbouts]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubAbouts](
	[SubAboutID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_SubAbouts] PRIMARY KEY CLUSTERED 
(
	[SubAboutID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonials]    Script Date: 6.06.2023 13:56:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonials](
	[TestimonialID] [int] IDENTITY(1,1) NOT NULL,
	[Client] [nvarchar](max) NULL,
	[Comment] [nvarchar](max) NULL,
	[ClientImage] [nvarchar](max) NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Testimonials] PRIMARY KEY CLUSTERED 
(
	[TestimonialID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211220133737_mig1', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220420123727_mig_add_destination_details', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220428110309_mig_add_comment', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220520103420_mig_add_identity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220620081109_mig_add_reservastion_entity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220620081332_mig_remove_reservastion', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220620081436_mig_add_re_reservation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220713105700_mig_remove_destination_from_reservation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20220713105937_mig_add_relation_destination_reservation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108081109_mig_create_contact_us', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221108083809_mig_add_create_ContactUs_Status', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221122055731_mig_create_Announcement_table', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230105063437_create_account_entity', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230215091606_mig_comment_appuser_relation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230215114837_mig_destination_guide_relation', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230215115214_mig_new_guide', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230215115412_mig_add_date_destination', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230215120238_mig_new_2', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230217112818_mig_guide_add_description', N'5.0.12')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20230217114217_mig_add_guidelist_image', N'5.0.12')
GO
SET IDENTITY_INSERT [dbo].[AspNetRoles] ON 

INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (1, N'Admin', N'ADMIN', N'21460a0d-56aa-4f6c-a7c2-acd85b4eba9f')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (2, N'Member', N'MEMBER', N'72c69e65-455f-48b7-a7ed-c12295419483')
SET IDENTITY_INSERT [dbo].[AspNetRoles] OFF
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (2, 1)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (3, 1)
GO
SET IDENTITY_INSERT [dbo].[AspNetUsers] ON 

INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (2, N'b768f836-5475-4c0b-959e-9b944030b4d1.jpeg', N'Muhammed Ferit', N'Simsek', NULL, N'cptmfs', N'CPTMFS', N'cpt.mfs@gmail.com', N'CPT.MFS@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAECJJzCDOdqfCd8DODF+piE7kdkB3jbww/fFblvJZCQChetlXHqQ3G1ACwikh7Ro7AA==', N'ORBR76ACNZ7F32MRSYORKBB7ELZ2WI2P', N'4454c0a7-bf05-4d84-8160-adb3bb2c821c', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (3, NULL, N'Admin', N'Admin', NULL, N'admin', N'ADMIN', N'admin@traversal.com', N'ADMIN@TRAVERSAL.COM', 0, N'AQAAAAEAACcQAAAAEFGqXDiPJBepaPtjBk66R/JhYHuCG007LSyOpKzoOYJpPJqrH0cJrT/F9sBGx5E1Yw==', N'M5RMJ7SNUIXODZPR4USD6G23QGUF6CH2', N'1850116c-aa3c-4662-9d01-ca9fbfdb726e', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (4, NULL, N'Şeyma', N'Şimşek', NULL, N'seysimsek', N'SEYSIMSEK', N'seymasimsek@gmail.com', N'SEYMASIMSEK@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEHxpDiGFxVVz4C7rsSE0Uvvu/P3ryqQWN/FORFWmSMU9by692yIIHdEeJPcPshk8vw==', N'PLFECYSEIGLIN2XRRBNZ7U6T4AADWZPX', N'4d2b2e0d-8b06-4fac-a212-c2157b4b4882', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (5, NULL, N'Ali', N'Şimşek', NULL, N'alisimsek13', N'ALISIMSEK13', N'alisimsek13@gmail.com', N'ALISIMSEK13@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEBBRbVzh1ncNG8wKhA25BpjS8cw+5bGWxD/CoOqghvpAYbUmP2f3s5NrLu2FSBgF+w==', N'EYZ5CWFSXJWQAXKTDZKYTPTUGOJH6XJ4', N'd7e89686-8486-407b-b6d6-e258199ca9b8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (6, NULL, N'Tahir', N'Ucar', NULL, N'ucartahir02', N'UCARTAHIR02', N'ucartahir02@gmail.com', N'UCARTAHIR02@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEI0QYq1L+SByqejpsUWAgA8AYUeFlBjcnesXoNI1buWqYXSgvQmoM+Uw5jP72bVLDQ==', N'5POXRITLQURNTETNS4USXJA2AQCMPD6A', N'346bc5ff-1a1e-4c5f-99ea-fc1ab688bcaa', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [ImageUrl], [Name], [Surname], [Gender], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (7, NULL, N'Mehmet Nuri', N'Sarıel', NULL, N'yellowel', N'YELLOWEL', N'yellowel@gmail.com', N'YELLOWEL@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEOEEZi+D5ebG/b9ACE5/SRpIpf/tvcnFDO1qAAm7z3roET14aJ025xaS69o9HMvbjg==', N'HCTI4WXF7PZ3ZXJN5QW3T4UOJIXLR7HM', N'2c097e8d-4251-46e6-89b8-f79f9a998406', NULL, 0, 0, NULL, 1, 0)
SET IDENTITY_INSERT [dbo].[AspNetUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([CommentID], [CommentUser], [CommentDate], [CommentContent], [CommentState], [DestinationID], [AppUserID]) VALUES (1, NULL, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2), N'Harika bir deneyim Gerçekten Resul bey''e Teşekkürler.', 1, 22, 2)
SET IDENTITY_INSERT [dbo].[Comments] OFF
GO
SET IDENTITY_INSERT [dbo].[Destinations] ON 

INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (15, N'Paris', N'3 Gece 4 Gün', 18000, N'https://images.unsplash.com/photo-1564594736624-def7a10ab047?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8cGFyaXMlMjBmcmFuY2V8ZW58MHx8MHx8fDA%3D&w=1000&q=80', N'Paris Tour', 15, 1, N'https://img.freepik.com/free-photo/eiffel-tower-paris-with-gorgeous-colors-autumn_268835-828.jpg?w=2000', N'A Parisian tour guide can help you navigate the city safely, avoiding potential scams and dangers. Cultural immersion: Paris is a city with a rich history and culture, and a Paris local tour guide can help you get a deeper understanding of the city and its people.', N'A Parisian tour guide can help you navigate the city safely, avoiding potential scams and dangers. Cultural immersion: Paris is a city with a rich history and culture, and a Paris local tour guide can help you get a deeper understanding of the city and its people.', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQH_WduAz8IAV7l3osq9F8v8zd_PSKcnosfkuTNs6b&s', 1, CAST(N'2023-06-06T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (17, N'Bankok', N'2 Gece 3 Gün', 28000, N'https://media.istockphoto.com/id/483816132/photo/bangkok-cityscape.jpg?s=612x612&w=0&k=20&c=58yp-hppLeL4rmCav2Kvs7IgAfhlqn_JSWh9Jw2QiXs=', N'Bankok Tour', 10, 1, N'https://media.istockphoto.com/id/483816132/photo/bangkok-cityscape.jpg?s=612x612&w=0&k=20&c=58yp-hppLeL4rmCav2Kvs7IgAfhlqn_JSWh9Jw2QiXs=', N'Bankok Tour', NULL, N'https://media.istockphoto.com/id/483816132/photo/bangkok-cityscape.jpg?s=612x612&w=0&k=20&c=58yp-hppLeL4rmCav2Kvs7IgAfhlqn_JSWh9Jw2QiXs=', 3, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (20, N'Londra', N'4 Gece 5 Gün', 17000, N'https://media.istockphoto.com/id/1265900812/tr/foto%C4%9Fraf/londra-ve-tower-bridgein-havadan-g%C3%B6r%C3%BCn%C3%BCm%C3%BC.jpg?s=612x612&w=0&k=20&c=wMT7lmBA6g0LXORawJHEqWf53C6ABoLzhMnMzluUhd8=', N'Londra Tour', 30, 1, N'https://media.istockphoto.com/id/1265900812/tr/foto%C4%9Fraf/londra-ve-tower-bridgein-havadan-g%C3%B6r%C3%BCn%C3%BCm%C3%BC.jpg?s=612x612&w=0&k=20&c=wMT7lmBA6g0LXORawJHEqWf53C6ABoLzhMnMzluUhd8=', N'Londra Tour ', NULL, N'https://media.istockphoto.com/id/1265900812/tr/foto%C4%9Fraf/londra-ve-tower-bridgein-havadan-g%C3%B6r%C3%BCn%C3%BCm%C3%BC.jpg?s=612x612&w=0&k=20&c=wMT7lmBA6g0LXORawJHEqWf53C6ABoLzhMnMzluUhd8=', 2, CAST(N'2023-06-15T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (21, N'Singapur', N'2 Gece 3 Gün', 32000, N'https://media.istockphoto.com/id/590050726/photo/singapore-glowing-at-night.jpg?s=612x612&w=0&k=20&c=43tSsy1yC0iOAGL3ZVq3-nl84KnmWTnHGI5mwQtp8zo=', N'Singapour Tour', 22, 1, N'https://media.istockphoto.com/id/590050726/photo/singapore-glowing-at-night.jpg?s=612x612&w=0&k=20&c=43tSsy1yC0iOAGL3ZVq3-nl84KnmWTnHGI5mwQtp8zo=', N'Singapour Tour', NULL, N'https://media.istockphoto.com/id/590050726/photo/singapore-glowing-at-night.jpg?s=612x612&w=0&k=20&c=43tSsy1yC0iOAGL3ZVq3-nl84KnmWTnHGI5mwQtp8zo=', 1, CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (22, N'Sharm El Sheikh', N'3 Gece 4 Gün', 24000, N'https://mmf5angy.twic.pics/ahstatic/www.ahstatic.com/photos/b1j0_ho_00_p_1024x768.jpg?ritok=65&twic=v1/cover=1600x900', N'Egypt Tour', 18, 1, N'https://cdnp.flypgs.com/files/Sehirler-long-tail/SarmElSeyh/sarm-el-seyh-shaba-cami.jpg', N'Egypt Tour', NULL, N'https://cdnp.flypgs.com/files/Sehirler-long-tail/SarmElSeyh/sarm-el-seyh-shaba-cami.jpg', 4, CAST(N'2023-06-11T00:00:00.0000000' AS DateTime2))
INSERT [dbo].[Destinations] ([DestinationID], [City], [DayNight], [Price], [Image], [Description], [Capacity], [Status], [CoverImage], [Details1], [Details2], [Image2], [GuideID], [Date]) VALUES (23, N'Venedik', N'4 Gece 5 Gün', 36000, N'https://st2.depositphotos.com/4035913/6964/i/950/depositphotos_69640011-stock-photo-venice-italy.jpg', N'Italy Tour', 13, 1, N'https://st2.depositphotos.com/4035913/6964/i/950/depositphotos_69640011-stock-photo-venice-italy.jpg', N'Italy Tour', NULL, N'https://st2.depositphotos.com/4035913/6964/i/950/depositphotos_69640011-stock-photo-venice-italy.jpg', 5, CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Destinations] OFF
GO
SET IDENTITY_INSERT [dbo].[Guides] ON 

INSERT [dbo].[Guides] ([GuideID], [Name], [Description], [Image], [TwitterUrl], [InstagramUrl], [Status], [Description2], [GuideListImage]) VALUES (1, N'Muhammed Ferit Simsek', N'1993 yılı İstanbul Doğumlu. 
Birkaç yıl Gemi Kaptanlığı yapıp dünyamızda keşfedilesi çok yer gördükten sonra bunları insanlara aktarmaya karar verdim.', N'https://avatars.githubusercontent.com/u/83764485?v=4', N'https://www.twitter.com/cptmfs/', N'https://www.instagram.com/cptmfs/', 1, NULL, N'https://avatars.githubusercontent.com/u/83764485?v=4')
INSERT [dbo].[Guides] ([GuideID], [Name], [Description], [Image], [TwitterUrl], [InstagramUrl], [Status], [Description2], [GuideListImage]) VALUES (2, N'Tahir Ucar', N'Tur rehberi; Tahir Ucar', N'https://static.vectorcharacters.net/uploads/2013/03/Schoolboy_Vector_Character_Preview.jpg', N'https://www.twitter.com/cptmfs/', N'https://www.instagram.com/cptmfs/', 0, NULL, N'https://static.vectorcharacters.net/uploads/2013/03/Schoolboy_Vector_Character_Preview.jpg')
INSERT [dbo].[Guides] ([GuideID], [Name], [Description], [Image], [TwitterUrl], [InstagramUrl], [Status], [Description2], [GuideListImage]) VALUES (3, N'Ali Şimşek', N'Tur rehberi; Ali Şimşek', N'https://media.licdn.com/dms/image/C5603AQE_WC8S0x8I6g/profile-displayphoto-shrink_200_200/0/1517542956111?e=1691625600&v=beta&t=xjcRMR_NrYf0zlqYj7Gm5oj4hCtfuDYO9TgVtQObTWw', N'https://www.linkedin.com/in/ali-%C5%9Fim%C5%9Fek-953177113/', N'https://www.linkedin.com/in/ali-%C5%9Fim%C5%9Fek-953177113/', 1, NULL, N'https://media.licdn.com/dms/image/C5603AQE_WC8S0x8I6g/profile-displayphoto-shrink_200_200/0/1517542956111?e=1691625600&v=beta&t=xjcRMR_NrYf0zlqYj7Gm5oj4hCtfuDYO9TgVtQObTWw')
INSERT [dbo].[Guides] ([GuideID], [Name], [Description], [Image], [TwitterUrl], [InstagramUrl], [Status], [Description2], [GuideListImage]) VALUES (4, N'Resul Altintas', N'Tur rehberi; Resul Altintas', N'https://i.graphicmama.com/uploads/2020/5/5eb55149a9981-elderly-teacher-with-moustache-cartoon-character2.png', N'https://www.twitter.com/cptmfs/', N'https://www.instagram.com/cptmfs/', 0, NULL, N'https://i.graphicmama.com/uploads/2020/5/5eb55149a9981-elderly-teacher-with-moustache-cartoon-character2.png')
INSERT [dbo].[Guides] ([GuideID], [Name], [Description], [Image], [TwitterUrl], [InstagramUrl], [Status], [Description2], [GuideListImage]) VALUES (5, N'Şeyma Şimşek', N'Tur rehberi (Uzman); Şeyma Şimşek', N'https://lumiere-a.akamaihd.net/v1/images/character_elenaofavalor_elena_01bf5046.jpeg', N'https://www.twitter.com/cptmfs/', N'https://www.instagram.com/cptmfs/', 1, NULL, N'https://lumiere-a.akamaihd.net/v1/images/character_elenaofavalor_elena_01bf5046.jpeg')
SET IDENTITY_INSERT [dbo].[Guides] OFF
GO
SET IDENTITY_INSERT [dbo].[Reservations] ON 

INSERT [dbo].[Reservations] ([ReservationID], [AppUserId], [PersonCount], [ReservastionDate], [Description], [Status], [DestinationID]) VALUES (6, 2, N'3', CAST(N'2023-06-08T00:00:00.0000000' AS DateTime2), N'3 kisi', N'Onay Bekliyor', 23)
INSERT [dbo].[Reservations] ([ReservationID], [AppUserId], [PersonCount], [ReservastionDate], [Description], [Status], [DestinationID]) VALUES (7, 2, N'2', CAST(N'2023-06-10T00:00:00.0000000' AS DateTime2), N'2', N'Onaylandı', 22)
INSERT [dbo].[Reservations] ([ReservationID], [AppUserId], [PersonCount], [ReservastionDate], [Description], [Status], [DestinationID]) VALUES (9, 2, N'2', CAST(N'2023-08-10T00:00:00.0000000' AS DateTime2), N'2 kisi', N'Onaylandı', 17)
INSERT [dbo].[Reservations] ([ReservationID], [AppUserId], [PersonCount], [ReservastionDate], [Description], [Status], [DestinationID]) VALUES (10, 2, N'5', CAST(N'2023-10-10T00:00:00.0000000' AS DateTime2), N'5 kisi', N'Onay Bekliyor', 15)
SET IDENTITY_INSERT [dbo].[Reservations] OFF
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 6.06.2023 13:56:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 6.06.2023 13:56:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_AppUserID]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_AppUserID] ON [dbo].[Comments]
(
	[AppUserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Comments_DestinationID]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_Comments_DestinationID] ON [dbo].[Comments]
(
	[DestinationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Destinations_GuideID]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_Destinations_GuideID] ON [dbo].[Destinations]
(
	[GuideID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reservations_AppUserId]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_Reservations_AppUserId] ON [dbo].[Reservations]
(
	[AppUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Reservations_DestinationID]    Script Date: 6.06.2023 13:56:39 ******/
CREATE NONCLUSTERED INDEX [IX_Reservations_DestinationID] ON [dbo].[Reservations]
(
	[DestinationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Comments] ADD  DEFAULT ((0)) FOR [AppUserID]
GO
ALTER TABLE [dbo].[ContactUses] ADD  DEFAULT (CONVERT([bit],(0))) FOR [MessageStatus]
GO
ALTER TABLE [dbo].[Destinations] ADD  DEFAULT ((0)) FOR [GuideID]
GO
ALTER TABLE [dbo].[Destinations] ADD  DEFAULT ('0001-01-01T00:00:00.0000000') FOR [Date]
GO
ALTER TABLE [dbo].[Reservations] ADD  DEFAULT ((0)) FOR [DestinationID]
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
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_AspNetUsers_AppUserID] FOREIGN KEY([AppUserID])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_AspNetUsers_AppUserID]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Destinations_DestinationID] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destinations] ([DestinationID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Destinations_DestinationID]
GO
ALTER TABLE [dbo].[Destinations]  WITH CHECK ADD  CONSTRAINT [FK_Destinations_Guides_GuideID] FOREIGN KEY([GuideID])
REFERENCES [dbo].[Guides] ([GuideID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Destinations] CHECK CONSTRAINT [FK_Destinations_Guides_GuideID]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_AspNetUsers_AppUserId] FOREIGN KEY([AppUserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_AspNetUsers_AppUserId]
GO
ALTER TABLE [dbo].[Reservations]  WITH CHECK ADD  CONSTRAINT [FK_Reservations_Destinations_DestinationID] FOREIGN KEY([DestinationID])
REFERENCES [dbo].[Destinations] ([DestinationID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Reservations] CHECK CONSTRAINT [FK_Reservations_Destinations_DestinationID]
GO
USE [master]
GO
ALTER DATABASE [traversaldb] SET  READ_WRITE 
GO
