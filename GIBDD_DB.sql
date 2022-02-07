USE [master]
GO
/****** Object:  Database [Gibdd]    Script Date: 07.02.2022 12:16:18 ******/
CREATE DATABASE [Gibdd]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GIBBD_kur', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GIBBD_kur.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GIBBD_kur_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\GIBBD_kur_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [Gibdd] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Gibdd].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Gibdd] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Gibdd] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Gibdd] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Gibdd] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Gibdd] SET ARITHABORT OFF 
GO
ALTER DATABASE [Gibdd] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Gibdd] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Gibdd] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Gibdd] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Gibdd] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Gibdd] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Gibdd] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Gibdd] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Gibdd] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Gibdd] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Gibdd] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Gibdd] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Gibdd] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Gibdd] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Gibdd] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Gibdd] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Gibdd] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Gibdd] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Gibdd] SET  MULTI_USER 
GO
ALTER DATABASE [Gibdd] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Gibdd] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Gibdd] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Gibdd] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Gibdd] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Gibdd] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [Gibdd] SET QUERY_STORE = OFF
GO
USE [Gibdd]
GO
/****** Object:  Table [dbo].[Drivers]    Script Date: 07.02.2022 12:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Drivers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Surname] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Middlename] [nvarchar](50) NOT NULL,
	[Passport] [nvarchar](13) NOT NULL,
	[City] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Company] [nvarchar](50) NOT NULL,
	[Jobname] [nvarchar](50) NOT NULL,
	[Phone] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[Photo] [nvarchar](max) NOT NULL,
	[Description] [nvarchar](max) NULL,
 CONSTRAINT [PK_Drivers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 07.02.2022 12:16:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Login] [nvarchar](50) NOT NULL,
	[Password] [nvarchar](50) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Drivers] ON 
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (1, N'Hopkins', N'Alonso', N'Caleb', N' 2303 160716', N'Hyattsville  ', N'452 Cobblestone St. ', N'Global Gillette', N'Reporter', N'+7(970)383-8933', N'skippy@icloud.com', N'001-happy-18.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (2, N'Sellers', N'Kaydence', N'Susannah', N' 5563 160745', N'Hanover Park ', N'9648 Philmont Lane ', N'Coca-Cola', N'Elementary School Teacher', N'+7(867)708-4447', N'isotopian@sbcglobal.net', N'002-cool-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (3, N'Bray', N'Finnegan', N'Brighton', N' 3719 717453', N'Woodstock  ', N'8438 North Fairground Court', N'Harley-Davidson Motor Company', N'Childcare worker', N'+7(221)428-7850', N'isaacson@att.net', N'003-happy-17.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (4, N'Arias', N'Gideon', N'Varian', N' 5810 721066', N'Lithonia  ', N'148 Catherine Dr. ', N'Corona', N'Loan Officer', N'+7(786)274-7872', N'mugwump@mac.com', N'004-surprised-9.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (5, N'Schultz', N'Case', N'Aiden', N' 2208 937197', N'Egg Harbor Township', N'7086 th Drive ', N'Johnnie Walker', N'Drafter', N'+7(365)752-6445', N'mcmillan@optonline.net', N'005-shocked-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (6, N'Alvarado', N'Pierre', N'Harriet', N' 7184 275223', N'Villa Park ', N'8992 Union Rd. ', N'SAP', N'Cost Estimator', N'+7(446)639-6043', N'dinther@hotmail.com', N'006-shocked-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (7, N'Bell', N'Esteban', N'Cameron', N' 9563 574791', N'Waynesboro  ', N'12 Windsor St. ', N'Smirnoff', N'Clinical Laboratory Technician', N'+7(555)444-8316', N'pizza@yahoo.com', N'007-nervous-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (8, N'Anderson', N'Spencer', N'Meaghan', N' 9008 379623', N'Garland  ', N'549 Lake View Dr.', N'Toyota Motor Corporation', N'Electrician', N'+7(392)682-4442', N'murty@outlook.com', N'008-nervous-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (9, N'Sweeney', N'Seth', N'Jax', N' 3810 530169', N'Hollywood  ', N'314 N.Gulf Lane ', N'Caterpillar Inc.', N'Referee', N'+7(836)429-0386', N'aegreene@me.com', N'009-angry-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (10, N'Mason', N'Lincoln', N'Emeline', N' 5387 689700', N'Coventry  ', N'3 Cooper Street ', N'Avon', N'Judge', N'+7(283)945-3092', N'jnolan@aol.com', N'010-drool.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (11, N'Curtis', N'Lindsay', N'Syllable', N' 1152 481271', N'Jamaica Plain ', N'53 E.Marvon St. ', N'Budweiser Stag Brewing Company', N'Security Guard', N'+7(621)359-3669', N'msherr@optonline.net', N'011-tired-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (12, N'Daugherty', N'Noah', N'Thomas', N' 2924 764363', N'Canton  ', N'15 Indian Summer St.', N'IBM', N'Budget analyst', N'+7(440)561-0314', N'ranasta@icloud.com', N'012-tongue-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (13, N'Sellers', N'Darien', N'Nadeen', N' 5110 869140', N'Piedmont  ', N'1 Rockville Ave. ', N'Chase', N'Painter', N'+7(331)918-2434', N'punkis@hotmail.com', N'013-tongue-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (14, N'Schneider', N'Jaylene', N'Xavier', N' 6948 84332', N'Savannah  ', N'154 Galvin Ave. ', N'NTT Data', N'Occupational Therapist', N'+7(944)627-0176', N'pereinar@yahoo.com', N'014-tongue-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (15, N'Schmitt', N'Leonard', N'Vincent', N' 7045 366325', N'Lititz  ', N'56 Annadale Dr. ', N'Intel Corporation', N'Physical Therapist', N'+7(621)405-7195', N'tskirvin@mac.com', N'015-smile-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (16, N'Richardson', N'Maya', N'Heath', N' 7100 947091', N'Jackson Heights ', N'7285 Locust Drive ', N'Sony', N'Photographer', N'+7(837)639-1067', N'kewley@sbcglobal.net', N'016-sleeping-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (17, N'Delacruz', N'Thalia', N'Caprice', N' 9169 340517', N'Columbus  ', N'935 West Ave. ', N'Tesco Corporation', N'Cashier', N'+7(769)610-7084', N'ehood@icloud.com', N'017-nervous.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (18, N'Baird', N'Maci', N'Dustin', N' 3097 188032', N'Maryville  ', N'720 Summerhouse Street ', N'Microsoft', N'Educator', N'+7(308)686-7622', N'ilial@aol.com', N'018-surprised-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (19, N'Stephenson', N'Ace', N'Amity', N' 7796 170860', N'Irwin  ', N'139 N.Grand St. ', N'McDonald''s', N'Professional athlete', N'+7(319)872-3287', N'elmer@comcast.net', N'019-tongue-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (20, N'Castro', N'Robert', N'Isaiah', N' 5001 550223', N'Evans  ', N'400 Amerige St. ', N'VISA', N'Janitor', N'+7(341)620-5356', N'scarolan@live.com', N'020-happy-16.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (21, N'Stark', N'Efrain', N'Jared', N' 4204 741281', N'Vienna  ', N'225 Iroquois St. ', N'Zara', N'Massage Therapist', N'+7(266)561-7456', N'bwcarty@yahoo.com', N'021-wink-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (22, N'Montgomery', N'Katelynn', N'Drake', N' 1209 731500', N'Long Beach ', N'44 Ocean Ave. ', N'Morgan Stanley', N'Psychologist', N'+7(408)673-0059', N'facet@outlook.com', N'022-laughing-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (23, N'Freeman', N'Sammy', N'Lane', N' 1085 749551', N'Long Branch ', N'192 West Foster St.', N'Mitsubishi', N'IT Manager', N'+7(906)825-5704', N'metzzo@att.net', N'023-laughing-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (24, N'Stokes', N'Jamal', N'Rayleen', N' 7125 277444', N'Centereach  ', N'43 SE.Cross Court ', N'Audi', N'Anthropologist', N'+7(866)732-4338', N'slaff@aol.com', N'024-sweat-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (25, N'Bell', N'Lilliana', N'Quintin', N' 4858 465200', N'Winter Springs ', N'946 Yukon Lane ', N'eBay', N'Executive Assistant', N'+7(744)876-9856', N'caidaperl@mac.com', N'025-happy-15.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (26, N'Ali', N'Jaidyn', N'Kaitlin', N' 9255 131955', N'Titusville  ', N'330 Poplar Lane ', N'Ralph Lauren Corporation', N'Artist', N'+7(872)230-3310', N'jigsaw@verizon.net', N'026-happy-14.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (27, N'Nixon', N'Solomon', N'Jolee', N' 3965 425455', N'Lynn  ', N'626 Leatherwood St. ', N'Wal-Mart', N'Mechanical Engineer', N'+7(572)467-2895', N'hoyer@optonline.net', N'027-laughing.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (28, N'Mcdowell', N'Isaias', N'Kalan', N' 4368 409875', N'Duluth  ', N'9971 N.Rockville Avenue ', N'Panasonic Corporation', N'Firefighter', N'+7(451)768-6075', N'danneng@msn.com', N'028-happy-13.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (29, N'Dean', N'Neveah', N'Evony', N' 9283 299023', N'Phoenixville  ', N'9542 Sutor Drive ', N'Nike, Inc.', N'Carpenter', N'+7(555)802-6671', N'burniske@outlook.com', N'029-happy-12.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (30, N'Waters', N'Koen', N'Abraham', N' 4065 664366', N'Westport  ', N'299 E.George St. ', N'Nissan Motor Co., Ltd.', N'Actuary', N'+7(833)460-5788', N'jipsen@sbcglobal.net', N'030-crying-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (31, N'Odom', N'Cale', N'Ann', N' 4877 252066', N'Fair Lawn ', N'7671 Tunnel Street ', N'MTV', N'Compliance Officer', N'+7(234)895-8976', N'agapow@hotmail.com', N'031-crying-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (32, N'Ruiz', N'Layton', N'Aryn', N' 8656 317830', N'Windsor  ', N'41 Harvard Drive ', N'Cartier SA', N'Computer Systems Administrator', N'+7(682)469-8567', N'mobileip@icloud.com', N'032-bored.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (33, N'Patrick', N'Monserrat', N'Coralie', N' 1583 513755', N'Rolla  ', N'7219 Prospect Drive ', N'Nescafé', N'HR Specialist', N'+7(682)555-7940', N'mglee@yahoo.com', N'033-cool-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (34, N'Hardin', N'Kamden', N'Ray', N' 2179 517256', N'Arlington Heights ', N'697 Cypress Lane ', N'Allianz', N'Recreation & Fitness Worker', N'+7(575)985-7625', N'animats@yahoo.ca', N'034-angry-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (35, N'Neal', N'Janiya', N'Irene', N' 5244 495362', N'Holly Springs ', N'7762 North County St.', N'Ferrari S.p.A.', N'Financial Advisor', N'+7(313)507-8540', N'drewf@me.com', N'035-sad-14.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (36, N'Winters', N'Cornelius', N'James', N' 9584 586486', N'New Haven ', N'7773 Ridge Dr. ', N'Kleenex', N'Auto Mechanic', N'+7(608)783-0267', N'slanglois@msn.com', N'036-angry-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (37, N'Love', N'Kaden', N'Neil', N' 1850 453434', N'Mount Holly ', N'551 Spruce St. ', N'Tiffany & Co.', N'Web Developer', N'+7(688)656-7203', N'notaprguy@verizon.net', N'037-happy-11.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (38, N'Mills', N'Finley', N'Ace', N' 4286 976952', N'Bridgewater  ', N'116 Woodside St. ', N'3M', N'Civil Engineer', N'+7(530)402-7915', N'yruan@sbcglobal.net', N'038-angry-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (39, N'Henry', N'Markus', N'Edward', N' 2767 784535', N'West Des Moines', N'9817 Manor St. ', N'Shell Oil Company', N'Chemist', N'+7(262)635-2834', N'bmorrow@me.com', N'039-cyclops-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (40, N'Singleton', N'Romeo', N'Preston', N' 7677 990002', N'Brookline  ', N'0875 rince Street ', N'Adobe Systems', N'Recreational Therapist', N'+7(487)957-3536', N'adillon@verizon.net', N'040-surprised-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (41, N'Glenn', N'Ethen', N'Kate', N' 6342 37367', N'Dundalk  ', N'549 Marvon St. ', N'IKEA', N'Microbiologist', N'+7(918)285-4740', N'kimvette@me.com', N'041-thinking-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (42, N'Gordon', N'Abbey', N'Berlynn', N' 8909 475995', N'Lumberton  ', N'1 Theatre Drive ', N'Nokia', N'Event Planner', N'+7(412)706-8937', N'emcleod@outlook.com', N'042-book.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (43, N'Vasquez', N'Presley', N'Sheridan', N' 9144 720543', N'Farmingdale  ', N'673 Hamilton Road ', N'Sprite', N'Coach', N'+7(454)353-8089', N'stomv@aol.com', N'043-baby-boy.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (44, N'Levine', N'Alexis', N'Juan', N' 6021 143882', N'Hamburg  ', N'9662 Bay Ave. ', N'Xerox', N'Radiologic Technologist', N'+7(623)716-7237', N'msusa@comcast.net', N'044-dead-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (45, N'Miles', N'Steve', N'Lydon', N' 4607 499410', N'Wisconsin Rapids ', N'8604 Fairfield Ave. ', N'Samsung Group', N'Market Research Analyst', N'+7(594)615-8545', N'dougj@yahoo.com', N'045-star.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (46, N'Cuevas', N'Kayley', N'Tyson', N' 4676 263545', N'Mount Juliet ', N'56 Vale St. ', N'Google', N'Housekeeper', N'+7(647)885-2301', N'jlbaumga@gmail.com', N'046-dubious.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (47, N'Hebert', N'Annabelle', N'Annora', N' 6571 27113', N'Tullahoma  ', N'9523 Linda Lane ', N'Louis Vuitton', N'Computer Programmer', N'+7(822)693-3953', N'temmink@mac.com', N'047-phone-call.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (48, N'Casey', N'Carolina', N'Timothy', N' 2307 511412', N'Ann Arbor ', N'3 Ashley Ave. ', N'Apple Inc.', N'Secretary', N'+7(887)236-8493', N'nighthawk@msn.com', N'048-moon.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (49, N'Roach', N'Beckham', N'Elias', N' 4756 956293', N'Dothan  ', N'9851 East Prince Street', N'Verizon Communications', N'Bus Driver', N'+7(531)597-0196', N'qmacro@outlook.com', N'049-robot.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (50, N'Pugh', N'Seamus', N'Jackson', N' 4693 133588', N'Hartford  ', N'8329 North Greenview St.', N'Credit Suisse', N'Systems Analyst', N'+7(506)774-1574', N'stewwy@att.net', N'050-flower.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (51, N'Calderon', N'Imani', N'Sullivan', N' 7598 90859', N'Annapolis  ', N'215 Purple Finch Lane', N'Wells Fargo', N'Chef', N'+7(639)813-8035', N'blixem@msn.com', N'051-happy-10.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (52, N'Roach', N'Marisol', N'Dezi', N' 2416 240325', N'Hagerstown  ', N'635 3rd Ave. ', N'Yahoo!', N'Registered Nurse', N'+7(883)455-5204', N'mccurley@optonline.net', N'052-happy-9.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (53, N'Jacobson', N'Kane', N'Emerson', N' 3896 957754', N'Maspeth  ', N'2 Greenrose Rd. ', N'Porsche', N'Surveyor', N'+7(833)914-4764', N'jacks@mac.com', N'053-tired-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (54, N'Higgins', N'Anya', N'Erin', N' 6573 581276', N'Howell  ', N'298 N.Hudson Court ', N'Moët et Chandon', N'Urban Planner', N'+7(810)945-3933', N'nwiger@att.net', N'054-ugly-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (55, N'Richard', N'Branson', N'Linnea', N' 2225 886655', N'Bayonne  ', N'0625 eg Shop St.', N'Hyundai', N'Middle School Teacher', N'+7(995)610-9002', N'muadip@me.com', N'055-tongue-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (56, N'Mathis', N'Kyle', N'Raine', N' 8966 340666', N'South Richmond Hill', N'648 Hill Field St.', N'Honda Motor Company, Ltd', N'Speech-Language Pathologist', N'+7(394)581-3937', N'gavinls@yahoo.com', N'056-vampire.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (57, N'Cross', N'Jamiya', N'Trevor', N' 1754 958143', N'Lynnwood  ', N'477 Oakland Street ', N'Beko', N'Personal Care Aide', N'+7(732)375-2363', N'nicktrig@me.com', N'057-music-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (58, N'Keller', N'Selah', N'Merle', N' 4434 406702', N'Champlin  ', N'4 Division Lane ', N'Deere & Company', N'Database administrator', N'+7(587)444-2070', N'lbecchi@me.com', N'058-popcorn.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (59, N'Watson', N'Larry', N'Blayne', N' 4859 211563', N'Lancaster  ', N'8021 Shadow Brook Dr.', N'Volkswagen Group', N'Art Director', N'+7(845)438-1802', N'willg@att.net', N'059-nurse.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (60, N'Shea', N'Braeden', N'Abe', N' 5348 104186', N'West Babylon ', N'7073 Hall Avenue ', N'Pampers', N'Landscaper & Groundskeeper', N'+7(320)478-3865', N'rnelson@yahoo.com', N'060-sad-13.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (61, N'Woodard', N'Allisson', N'Joan', N' 9216 132859', N'South Windsor ', N'985 BWinding Way Dr.', N'BlackBerry', N'Court Reporter', N'+7(486)828-8733', N'roesch@aol.com', N'061-graduated-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (62, N'Garner', N'Amy', N'Tanner', N' 6127 199319', N'Billerica  ', N'570 Old Bayberry Street', N'Jack Daniel''s', N'Bookkeeping clerk', N'+7(497)215-8724', N'pthomsen@verizon.net', N'062-happy-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (63, N'Choi', N'Saniyah', N'Debree', N' 1102 719495', N'East Lansing ', N'9122 South Addison St.', N'Facebook, Inc.', N'Landscape Architect', N'+7(399)887-3591', N'itstatus@yahoo.ca', N'063-hungry.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (64, N'Simmons', N'Reagan', N'Sharon', N' 2020 814747', N'Skokie  ', N'14 West Fifth St.', N'United Parcel Service', N'College Professor', N'+7(205)278-4756', N'marcs@verizon.net', N'064-police.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (65, N'Robertson', N'Coby', N'Juliet', N' 4083 683928', N'Harrisonburg  ', N'7267 W.Roehampton St. ', N'Adidas', N'Respiratory Therapist', N'+7(260)814-7458', N'tellis@yahoo.ca', N'065-crying-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (66, N'Haney', N'Dakota', N'Marguerite', N' 1270 718764', N'Cambridge  ', N'82 Oak Meadow Dr.', N'Siemens AG', N'Mason', N'+7(302)844-3480', N'scotfl@att.net', N'066-happy-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (67, N'Rivas', N'Malia', N'Louis', N' 3871 532007', N'Alliance  ', N'864 Highland Drive ', N'Citigroup', N'Veterinarian', N'+7(449)380-7477', N'jramio@optonline.net', N'067-sun.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (68, N'Green', N'Lily', N'Lynn', N' 9827 633690', N'Massillon  ', N'9465 St Paul Avenue', N'Amazon.com', N'Architect', N'+7(280)214-8022', N'mastinfo@gmail.com', N'068-father-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (69, N'Nielsen', N'Reilly', N'Marcella', N' 9350 821275', N'Centreville  ', N'7651 South La Sierra', N'AT&T', N'Accountant', N'+7(967)763-6475', N'ateniese@outlook.com', N'069-happy-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (70, N'Brooks', N'Ryleigh', N'Leonie', N' 2681 769203', N'Glen Allen ', N'3 Alton Lane ', N'Starbucks', N'School Counselor', N'+7(625)810-5235', N'ismail@hotmail.com', N'070-late.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (71, N'Ewing', N'Brendan', N'Adele', N' 4152 160995', N'Florence  ', N'9441 W.Pineknoll Drive ', N'Prada', N'Computer Support Specialist', N'+7(975)483-5566', N'oechslin@optonline.net', N'071-heart.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (72, N'Kirk', N'Cheyenne', N'Julian', N' 4306 595389', N'Lewiston  ', N'7070 Shady Street ', N'Gap Inc.', N'Historian', N'+7(718)850-2518', N'jugalator@att.net', N'072-sick-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (73, N'Rojas', N'Jacoby', N'Rose', N' 9367 402446', N'Billings  ', N'146 East Bank Street', N'Kia Motors', N'Computer Hardware Engineer', N'+7(550)645-2520', N'subir@verizon.net', N'073-sad-12.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (74, N'Cummings', N'Keshawn', N'Paul', N' 4536 115339', N'Norman  ', N'8723 Cedar Swamp Drive', N'Cisco Systems, Inc.', N'Designer', N'+7(551)270-4620', N'bryam@verizon.net', N'074-in-love-10.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (75, N'Crawford', N'Mohammed', N'Amelia', N' 8478 213639', N'Groton  ', N'8419 E.Harvey Drive ', N'Home Depot', N'Hairdresser', N'+7(489)444-3438', N'jpflip@optonline.net', N'075-shocked-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (76, N'Bryan', N'Nancy', N'Devon', N' 1871 347268', N'Chelmsford  ', N'179 Manchester St. ', N'Vodafone', N'Lawyer', N'+7(401)862-1637', N'mgemmons@comcast.net', N'076-happy-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (77, N'Lynn', N'Maxwell', N'Ellory', N' 1567 431190', N'Durham  ', N'70 Cambridge Ave. ', N'Hewlett-Packard', N'Real Estate Agent', N'+7(507)625-4900', N'csilvers@icloud.com', N'077-shocked-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (78, N'Khan', N'Zack', N'Gabriel', N' 9952 372202', N'Forney  ', N'566 S.Cherry Street ', N'Hermès', N'Customer Service Representative', N'+7(458)566-0054', N'karasik@msn.com', N'078-cool-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (79, N'Walls', N'Selina', N'Ashten', N' 8168 514525', N'Norwood  ', N'83 NE.Hill Dr. ', N'Oracle Corporation', N'Fitness Trainer', N'+7(979)346-6593', N'wetter@yahoo.ca', N'079-crying-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (80, N'Garner', N'Jerry', N'Everett', N' 8239 393741', N'Nottingham  ', N'556 Summerhouse Street ', N'Canon', N'Social Worker', N'+7(320)547-9952', N'thassine@me.com', N'080-zombie.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (81, N'Carroll', N'Kaila', N'Grey', N' 2909 822374', N'Muskogee  ', N'9750 Hawthorne Ave. ', N'KFC', N'Economist', N'+7(429)809-1931', N'sassen@msn.com', N'081-pain.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (82, N'Conway', N'Sean', N'Garrison', N' 5367 598823', N'Seymour  ', N'97 Elmwood Street ', N'General Electric', N'Writer', N'+7(464)285-9954', N'jandrese@yahoo.ca', N'082-cyclops.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (83, N'Cantu', N'Makaila', N'Fernando', N' 5298 472573', N'Algonquin  ', N'308 Studebaker Drive ', N'BMW', N'Logistician', N'+7(748)461-4491', N'tmccarth@live.com', N'083-sweat.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (84, N'Mccall', N'Jacquelyn', N'Sherleen', N' 3605 373737', N'Garden City ', N'15 Marsh St. ', N'The Walt Disney Company', N'Environmental scientist', N'+7(578)935-1637', N'gtewari@icloud.com', N'084-thief.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (85, N'Swanson', N'Milton', N'Chase', N' 8146 691253', N'Wake Forest ', N'8614 Charles Street ', N'American Express', N'Patrol Officer', N'+7(927)652-4631', N'hampton@yahoo.com', N'085-sad-11.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (86, N'Lynn', N'Rodolfo', N'Zion', N' 7932 623470', N'South Lyon ', N'57 Gulf Avenue ', N'Burberry', N'Plumber', N'+7(595)615-6057', N'jesse@me.com', N'086-kiss-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (87, N'Walls', N'Paula', N'Breean', N' 7817 774559', N'Missoula  ', N'694 Linden St. ', N'Pizza Hut', N'Dancer', N'+7(751)240-3137', N'jugalator@me.com', N'087-father-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (88, N'Olson', N'Adison', N'Henry', N' 4402 114286', N'Zeeland  ', N'8440 Lyme St. ', N'H&M', N'Pharmacist', N'+7(626)974-2035', N'bhima@sbcglobal.net', N'088-father.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (89, N'Haynes', N'Jacob', N'Marcellus', N' 2794 857949', N'Pembroke Pines ', N'7632 Oakwood Rd. ', N'Heineken Brewery', N'Truck Driver', N'+7(201)979-1451', N'gommix@comcast.net', N'089-angel-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (90, N'Roberts', N'Corinne', N'Suzan', N' 7429 823005', N'South El Monte', N'881 Temple St. ', N'PepsiCo', N'Medical Secretary', N'+7(493)219-3942', N'symbolic@verizon.net', N'090-happy-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (91, N'Ewing', N'Aimee', N'Lane', N' 6306 285690', N'Webster  ', N'9591 Honey Creek St.', N'Bank of America', N'Diagnostic Medical Sonographer', N'+7(407)485-5030', N'bruck@outlook.com', N'091-sad-10.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (92, N'Cordova', N'Alejandro', N'Hollyn', N' 9370 315564', N'Bismarck  ', N'7018 Pilgrim Street ', N'Nintendo', N'High School Teacher', N'+7(919)478-2497', N'jeteve@optonline.net', N'092-outrage-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (93, N'Haynes', N'Byron', N'Bram', N' 1685 42988', N'Harleysville  ', N'697 Westminster St. ', N'Johnson & Johnson', N'Marriage & Family Therapist', N'+7(482)802-9580', N'jsnover@comcast.net', N'093-ugly-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (94, N'Keith', N'Genevieve', N'David', N' 5467 865823', N'Euless  ', N'959 Birchpond St. ', N'HSBC', N'Editor', N'+7(455)944-6449', N'hakim@comcast.net', N'094-ugly-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (95, N'Obrien', N'Dane', N'Shane', N' 9596 712362', N'Yorktown Heights ', N'67 Pumpkin Hill Lane', N'Kellogg Company', N'Substance Abuse Counselor', N'+7(710)388-2563', N'dexter@sbcglobal.net', N'095-scared.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (96, N'Church', N'Nayeli', N'Kent', N' 9527 410913', N'Ithaca  ', N'5 NE.Newcastle Drive ', N'MasterCard', N'Public Relations Specialist', N'+7(759)452-3846', N'jlbaumga@hotmail.com', N'096-tongue-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (97, N'Jimenez', N'Ashtyn', N'Rhett', N' 6760 404116', N'Mount Prospect ', N'94 Longbranch St. ', N'Gucci', N'Computer Systems Analyst', N'+7(687)801-1332', N'djupedal@hotmail.com', N'097-sad-9.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (98, N'Wilkerson', N'Kimberly', N'Carelyn', N' 9484 965470', N'Wantagh  ', N'566 Gulf St. ', N'Mercedes-Benz', N'Preschool Teacher', N'+7(691)336-3494', N'daveewart@verizon.net', N'098-nerd-9.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (99, N'Curtis', N'Tripp', N'Apollo', N' 6426 682782', N'Encino  ', N'518 Clinton Ave. ', N'L''Oréal', N'Dentist', N'+7(493)274-3888', N'msherr@sbcglobal.net', N'099-greed-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (100, N'Zavala', N'Eleanor', N'George', N' 3709 656706', N'Wausau  ', N'370 Ashley Lane ', N'Global Gillette', N'Teacher Assistant', N'+7(983)470-4528', N'crusader@sbcglobal.net', N'100-whistle.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (101, N'Thomas', N'Harper', N'Jae', N' 4948 205524', N'Menasha  ', N'477 Southampton Avenue ', N'Coca-Cola', N'Musician', N'+7(436)951-8996', N'mdielmann@sbcglobal.net', N'101-nerd-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (102, N'Stephenson', N'Maximo', N'Dex', N' 8134 605243', N'Hoboken  ', N'9668 Glendale Court ', N'Harley-Davidson Motor Company', N'Paralegal', N'+7(210)889-7840', N'ovprit@me.com', N'102-muted-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (103, N'James', N'Kiara', N'Jeremy', N' 7133 997003', N'Basking Ridge ', N'7175 Sherwood Street ', N'Corona', N'Software Developer', N'+7(390)499-7403', N'calin@att.net', N'103-in-love-9.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (104, N'Fuller', N'Isabella', N'Naomi', N' 4021 304017', N'Joliet  ', N'9549 Lake Ave. ', N'Johnnie Walker', N'Zoologist', N'+7(805)721-8540', N'thowell@yahoo.ca', N'104-in-love-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (105, N'Garrison', N'Cynthia', N'Matilda', N' 3516 398883', N'San Lorenzo ', N'7756 Philmont Dr. ', N'SAP', N'Medical Assistant', N'+7(578)220-5882', N'mpiotr@yahoo.com', N'105-kiss-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (106, N'Flowers', N'Donte', N'Brock', N' 8533 684076', N'Owatonna  ', N'66 Buttonwood Ave. ', N'Smirnoff', N'Desktop publisher', N'+7(415)631-8358', N'bester@gmail.com', N'106-in-love-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (107, N'Rivera', N'Asia', N'Carmden', N' 1618 439727', N'Severn  ', N'372 West Cedarwood Drive', N'Toyota Motor Corporation', N'Actor', N'+7(900)903-0657', N'imightb@gmail.com', N'107-ugly.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (108, N'Hahn', N'Trace', N'Clelia', N' 2835 991998', N'Bolingbrook  ', N'368 W.Gregory Drive ', N'Caterpillar Inc.', N'Sports Coach', N'+7(879)442-6528', N'jschauma@icloud.com', N'108-nerd-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (109, N'Farley', N'Mohammed', N'Levi', N' 7748 504230', N'Montgomery  ', N'553 Tallwood Rd. ', N'Avon', N'Dental Hygienist', N'+7(649)374-4690', N'syrinx@gmail.com', N'109-nerd-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (110, N'Velez', N'Nicholas', N'Dawn', N' 4853 175687', N'Doylestown  ', N'769 Old Atlantic Rd.', N'Budweiser Stag Brewing Company', N'School Psychologist', N'+7(487)871-5975', N'konit@aol.com', N'110-crying-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (111, N'Curtis', N'Jamir', N'Tavian', N' 3983 947212', N'Osseo  ', N'71 Carson Ave. ', N'IBM', N'Librarian', N'+7(503)572-6773', N'wonderkid@hotmail.com', N'111-muted-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (112, N'Rose', N'Cyrus', N'Jacklyn', N' 7435 360206', N'Port Orange ', N'8389 Eagle Lane ', N'Chase', N'Telemarketer', N'+7(709)756-6389', N'pjacklam@verizon.net', N'112-nerd-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (113, N'Torres', N'Dakota', N'Cash', N' 4559 179023', N'Eastpointe  ', N'757 Goldfield St. ', N'NTT Data', N'Interpreter & Translator', N'+7(931)652-7478', N'tokuhirom@live.com', N'113-kiss-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (114, N'Valencia', N'Matias', N'Reagan', N' 2102 137023', N'Scotch Plains ', N'28 Lakewood Drive ', N'Intel Corporation', N'Food Scientist', N'+7(524)449-7554', N'adillon@comcast.net', N'114-greed-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (115, N'Harding', N'Rocco', N'Gwendolen', N' 2018 304278', N'Kaukauna  ', N'11 Belmont St. ', N'Sony', N'Marketing Manager', N'+7(347)807-8932', N'bcevc@yahoo.ca', N'115-pirate-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (116, N'Clark', N'Maya', N'Evelyn', N' 4625 441301', N'El Paso ', N'59 North Brandywine Street', N'Tesco Corporation', N'Insurance Agent', N'+7(675)694-8839', N'crobles@me.com', N'116-music.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (117, N'Hays', N'Bryan', N'Wade', N' 8451 370682', N'Oshkosh  ', N'752 Highland Street ', N'Microsoft', N'Farmer', N'+7(779)966-8126', N'tjensen@verizon.net', N'117-confused-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (118, N'Nelson', N'Jessie', N'Jack', N' 7035 527026', N'Palos Verdes Peninsula', N'258 Talbot Drive ', N'McDonald''s', N'Human Resources Assistant', N'+7(791)357-4942', N'gozer@icloud.com', N'118-nerd-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (119, N'Franklin', N'Joy', N'Warren', N' 2846 798890', N'Redondo Beach ', N'407 Mechanic Street ', N'VISA', N'Paramedic', N'+7(292)662-7836', N'brbarret@yahoo.ca', N'119-greed.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (120, N'Lang', N'Carlie', N'Rebecca', N' 9368 90494', N'Northville  ', N'729 Cypress Court ', N'Zara', N'Automotive mechanic', N'+7(952)374-4396', N'mcnihil@me.com', N'120-nerd-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (121, N'Hurley', N'Issac', N'Blanche', N' 7906 721186', N'Charlotte  ', N'975 Rockledge Street ', N'Morgan Stanley', N'Receptionist', N'+7(758)849-9991', N'damian@yahoo.com', N'121-crying-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (122, N'Sims', N'Ariel', N'Bailey', N' 9254 479522', N'Miami Beach ', N'953 Bishop St. ', N'Mitsubishi', N'Construction Manager', N'+7(534)687-2128', N'neonatus@aol.com', N'122-cheering.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (123, N'Delgado', N'Braedon', N'Oliver', N' 3627 384983', N'Chicopee  ', N'13 Magnolia Ave. ', N'Audi', N'Physician', N'+7(642)548-4829', N'tellis@icloud.com', N'123-surprised-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (124, N'Suarez', N'Christian', N'Lee', N' 5989 222522', N'Windermere  ', N'7569 Ocean Street ', N'eBay', N'Mathematician', N'+7(980)531-5346', N'frode@live.com', N'124-muted-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (125, N'Marks', N'Lilah', N'Anthony', N' 3584 358162', N'Stuart  ', N'8897 Cross St. ', N'Ralph Lauren Corporation', N'Electrical Engineer', N'+7(628)326-1104', N'sjava@aol.com', N'125-sick-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (126, N'Rowland', N'Jeffrey', N'Gillian', N' 4406 46042', N'Rome  ', N'5 Dogwood Street ', N'Wal-Mart', N'Physicist', N'+7(669)335-7511', N'harryh@live.com', N'126-graduated.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (127, N'Jordan', N'Hannah', N'Verena', N' 5511 931653', N'Owings Mills ', N'65 West8  ', N'Panasonic Corporation', N'Police Officer', N'+7(399)344-8840', N'elflord@me.com', N'127-angry-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (128, N'Hinton', N'Peyton', N'Benjamin', N' 8020 284910', N'Spring Hill ', N'8245 Shub Farm Ave.', N'Nike, Inc.', N'Maintenance & Repair Worker', N'+7(643)676-5328', N'ramollin@mac.com', N'128-in-love-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (129, N'Forbes', N'Clayton', N'Zachary', N' 8660 236405', N'Lorton  ', N'7126 Pheasant St. ', N'Nissan Motor Co., Ltd.', N'Statistician', N'+7(535)983-7587', N'kronvold@mac.com', N'129-cool-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (130, N'Cabrera', N'Salvatore', N'Krystan', N' 7218 277801', N'Thomasville  ', N'7609 Gates St. ', N'MTV', N'Epidemiologist', N'+7(310)925-8844', N'louise@aol.com', N'130-confused-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (131, N'Taylor', N'Andre', N'Felix', N' 4813 710684', N'Oak Park ', N'935 Glen Ridge Ave.', N'Cartier SA', N'Reporter', N'+7(457)847-6033', N'nanop@verizon.net', N'131-sad-8.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (132, N'Mcclain', N'Kadin', N'Riley', N' 8704 683064', N'Griffin  ', N'7795 Greenrose St. ', N'Nescafé', N'Elementary School Teacher', N'+7(330)730-7648', N'gtewari@sbcglobal.net', N'132-nerd-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (133, N'Nichols', N'Jaida', N'Lucinda', N' 9908 341967', N'Suwanee  ', N'403 W.College St. ', N'Allianz', N'Childcare worker', N'+7(619)883-4911', N'ylchang@mac.com', N'133-birthday-boy.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (134, N'Church', N'Reid', N'Candice', N' 6752 159699', N'Merrillville  ', N'716 Chestnut Avenue ', N'Ferrari S.p.A.', N'Loan Officer', N'+7(482)744-7133', N'gommix@yahoo.com', N'134-surprised-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (135, N'Harrington', N'Karley', N'Kathryn', N' 8059 911426', N'Nashville  ', N'9024 Nicolls Ave. ', N'Kleenex', N'Drafter', N'+7(369)537-4704', N'uncle@sbcglobal.net', N'135-selfie.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (136, N'Rivers', N'Beau', N'Lillian', N' 8452 55461', N'Glendale  ', N'33 Foxrun St. ', N'Tiffany & Co.', N'Cost Estimator', N'+7(540)239-8104', N'smcnabb@live.com', N'136-tongue-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (137, N'Bentley', N'Riley', N'Hugh', N' 4452 331700', N'Oak Creek ', N'8012 North Wild Horse', N'3M', N'Clinical Laboratory Technician', N'+7(863)714-2111', N'shrapnull@aol.com', N'137-smart-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (138, N'Choi', N'Ellis', N'Julina', N' 3520 765331', N'Bemidji  ', N'759 Crescent Dr. ', N'Shell Oil Company', N'Electrician', N'+7(839)694-4168', N'djpig@sbcglobal.net', N'138-smart.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (139, N'Leon', N'Jaylyn', N'Ellison', N' 8629 761047', N'Brooklyn  ', N'518 Overlook Street ', N'Adobe Systems', N'Referee', N'+7(983)868-6473', N'oechslin@hotmail.com', N'139-surprised-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (140, N'Mayer', N'Drew', N'Carlen', N' 2381 911641', N'Des Plaines ', N'7660 Armstrong Drive ', N'IKEA', N'Judge', N'+7(325)574-7514', N'xnormal@verizon.net', N'140-3d-glasses.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (141, N'Walters', N'Ashleigh', N'Claude', N' 3634 590673', N'Mansfield  ', N'5 Miles Street ', N'Nokia', N'Security Guard', N'+7(921)683-0258', N'atmarks@icloud.com', N'141-in-love-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (142, N'Dickerson', N'Scott', N'Arden', N' 5913 725569', N'Deer Park ', N'48 N.Valley View Drive', N'Sprite', N'Budget analyst', N'+7(503)446-7180', N'makarow@comcast.net', N'142-sleeping.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (143, N'Knight', N'Kolton', N'Miriam', N' 7702 344201', N'Suitland  ', N'8057 Annadale Ave. ', N'Xerox', N'Painter', N'+7(467)243-5219', N'raides@yahoo.com', N'143-pirate.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (144, N'Boyle', N'Izabelle', N'Naveen', N' 2262 625946', N'Cedar Rapids ', N'354 Blackburn Dr. ', N'Samsung Group', N'Occupational Therapist', N'+7(633)700-7724', N'hwestiii@mac.com', N'144-santa-claus.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (145, N'Singleton', N'Haylie', N'Sue', N' 1646 243340', N'Cary  ', N'86 Paris Hill St.', N'Google', N'Physical Therapist', N'+7(632)874-7209', N'scitext@gmail.com', N'145-wink.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (146, N'Lin', N'Sariah', N'Olive', N' 2153 460491', N'Austin  ', N'7573 Bridgeton Street ', N'Louis Vuitton', N'Photographer', N'+7(368)599-1877', N'gward@yahoo.ca', N'146-in-love-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (147, N'Spears', N'Chace', N'Elodie', N' 3126 716773', N'Beckley  ', N'579 E.Evergreen St. ', N'Apple Inc.', N'Cashier', N'+7(324)886-1499', N'bockelboy@outlook.com', N'147-tired.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (148, N'Frazier', N'Liam', N'Korin', N' 8828 972758', N'Floral Park ', N'805 Magnolia St. ', N'Verizon Communications', N'Educator', N'+7(374)356-4166', N'tubesteak@comcast.net', N'148-bang.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (149, N'Stokes', N'Joseph', N'William', N' 8114 880420', N'Hyde Park ', N'6 Euclid St. ', N'Credit Suisse', N'Professional athlete', N'+7(868)982-2419', N'krueger@mac.com', N'149-baby.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (150, N'Hurley', N'Lorelei', N'Coralie', N' 8085 811955', N'Huntington Station ', N'9381 Pilgrim Lane ', N'Wells Fargo', N'Janitor', N'+7(781)785-5837', N'skaufman@optonline.net', N'150-tongue.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (151, N'Leon', N'Miguel', N'Haiden', N' 1318 208906', N'Marion  ', N'200 Warren Court ', N'Yahoo!', N'Massage Therapist', N'+7(489)361-6374', N'tezbo@live.com', N'151-sick-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (152, N'Hamilton', N'Melina', N'Isaac', N' 3115 642377', N'North Royalton ', N'8558 Summerhouse St. ', N'Porsche', N'Psychologist', N'+7(872)856-7001', N'crowl@icloud.com', N'152-outrage.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (153, N'Duke', N'Serena', N'Arthur', N' 5150 553212', N'Mankato  ', N'977 Longbranch Drive ', N'Moët et Chandon', N'IT Manager', N'+7(812)814-4854', N'plover@hotmail.com', N'153-injury.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (154, N'Dillon', N'Kristen', N'Kylie', N' 4169 626192', N'Sumter  ', N'9600 Ketch Harbour Ave.', N'Hyundai', N'Anthropologist', N'+7(803)510-4214', N'calin@aol.com', N'154-dead.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (155, N'Hawkins', N'Saniyah', N'Josiah', N' 7466 33192', N'Wilmington  ', N'959 Elmwood St. ', N'Honda Motor Company, Ltd', N'Executive Assistant', N'+7(869)369-9524', N'timtroyr@live.com', N'155-rich-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (156, N'Leach', N'Thalia', N'Nicolas', N' 2646 768816', N'Saint Louis ', N'8269 Buckingham St. ', N'Beko', N'Artist', N'+7(464)585-3155', N'keutzer@yahoo.com', N'156-sick.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (157, N'Caldwell', N'Irene', N'Noah', N' 5732 336554', N'Manchester  ', N'8990 Columbia Street ', N'Deere & Company', N'Mechanical Engineer', N'+7(703)958-7186', N'thurston@outlook.com', N'157-angel.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (158, N'Bowen', N'Nikhil', N'Glenn', N' 5254 555116', N'Chester  ', N'292 Virginia Street ', N'Volkswagen Group', N'Firefighter', N'+7(515)615-0912', N'mbalazin@att.net', N'158-nerd-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (159, N'Charles', N'Jolie', N'Matteo', N' 3285 403999', N'Westmont  ', N'24810 th Dr. ', N'Pampers', N'Carpenter', N'+7(854)941-5210', N'dkasak@gmail.com', N'159-crying-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (160, N'Baxter', N'Xavier', N'Joseph', N' 1373 588622', N'Loveland  ', N'199 East Chestnut Dr.', N'BlackBerry', N'Actuary', N'+7(380)573-4186', N'esbeck@comcast.net', N'160-crying-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (161, N'Dean', N'Lukas', N'Ellice', N' 1890 691040', N'Banning  ', N'83 Carriage Street ', N'Jack Daniel''s', N'Compliance Officer', N'+7(297)369-0265', N'novanet@aol.com', N'161-muted-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (162, N'King', N'Athena', N'Lilibeth', N' 3307 217825', N'Bethpage  ', N'9971 Smith Store Ave.', N'Facebook, Inc.', N'Computer Systems Administrator', N'+7(671)293-5634', N'mhouston@me.com', N'162-surprised-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (163, N'Noble', N'Adan', N'Bree', N' 3286 297169', N'Fenton  ', N'708 East Oak Valley', N'United Parcel Service', N'HR Specialist', N'+7(305)214-6934', N'bahwi@yahoo.com', N'163-crying.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (164, N'Pham', N'Kiley', N'Madeleine', N' 2401 289619', N'Atlantic City ', N'17 Broad Dr. ', N'Adidas', N'Recreation & Fitness Worker', N'+7(812)919-9643', N'chrisj@outlook.com', N'164-sad-7.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (165, N'Johnston', N'Steven', N'Kai', N' 8507 252786', N'Huntley  ', N'765 Devonshire Dr. ', N'Siemens AG', N'Financial Advisor', N'+7(754)769-3349', N'louise@gmail.com', N'165-cool-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (166, N'Hart', N'Ayana', N'Dash', N' 9342 187671', N'Vista  ', N'9027 Fairway Drive ', N'Citigroup', N'Auto Mechanic', N'+7(206)323-2722', N'qrczak@me.com', N'166-happy-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (167, N'Copeland', N'Aileen', N'Seth', N' 1067 401389', N'Harlingen  ', N'20 Indian Spring St.', N'Amazon.com', N'Web Developer', N'+7(273)495-7160', N'arachne@hotmail.com', N'167-thinking-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (168, N'Pitts', N'Emery', N'Eli', N' 2273 445653', N'Pompano Beach ', N'9267 South Glenholme Ave.', N'AT&T', N'Civil Engineer', N'+7(463)932-3808', N'mfburgo@icloud.com', N'168-muted.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (169, N'Chavez', N'Vicente', N'Bernice', N' 6403 754163', N'Auburn  ', N'65 South Pineknoll Ave.', N'Starbucks', N'Chemist', N'+7(551)789-0645', N'karasik@att.net', N'169-confused.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (170, N'Monroe', N'Cherish', N'Vanessa', N' 3912 930948', N'Greenfield  ', N'160 Inverness St. ', N'Prada', N'Recreational Therapist', N'+7(574)759-7866', N'hauma@icloud.com', N'170-happy-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (171, N'Petersen', N'Karley', N'Rory', N' 4008 604291', N'Desoto  ', N'152 Wood Drive ', N'Gap Inc.', N'Microbiologist', N'+7(852)802-5653', N'scitext@me.com', N'171-thinking.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (172, N'Le', N'Alondra', N'Clark', N' 3059 930219', N'Jamaica  ', N'7754 Cherry Hill St.', N'Kia Motors', N'Event Planner', N'+7(342)453-0606', N'matthijs@live.com', N'172-nerd.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (173, N'Bird', N'Dorian', N'Judd', N' 5208 664172', N'Schenectady  ', N'31 Oak Valley Rd.', N'Cisco Systems, Inc.', N'Coach', N'+7(434)574-4540', N'bryam@icloud.com', N'173-in-love-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (174, N'Goodwin', N'Karley', N'Noel', N' 6338 777372', N'Middle River ', N'34 Franklin Road ', N'Home Depot', N'Radiologic Technologist', N'+7(425)783-2253', N'tellis@att.net', N'174-hypnotized.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (175, N'Davidson', N'Killian', N'Janetta', N' 8029 73589', N'Matawan  ', N'7612 Hilldale Drive ', N'Vodafone', N'Market Research Analyst', N'+7(889)449-4391', N'makarow@verizon.net', N'175-cool.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (176, N'Melton', N'Ava', N'Annabel', N' 1788 509266', N'Milford  ', N'9221 South Armstrong Ave.', N'Hewlett-Packard', N'Housekeeper', N'+7(825)301-8250', N'citadel@msn.com', N'176-shocked.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (177, N'Horton', N'Adam', N'Blake', N' 2735 502335', N'Crown Point ', N'387 Silver Spear St.', N'Hermès', N'Computer Programmer', N'+7(397)334-2086', N'jaxweb@me.com', N'177-easter.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (178, N'Singh', N'Jaydin', N'Jordon', N' 7540 934686', N'Mebane  ', N'58 th Lane ', N'Oracle Corporation', N'Secretary', N'+7(241)570-3040', N'mcsporran@aol.com', N'178-surprised-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (179, N'Mckinney', N'Lexie', N'Charles', N' 9803 515191', N'Hermitage  ', N'391 Mulberry Circle ', N'Canon', N'Bus Driver', N'+7(713)462-8265', N'tubesteak@mac.com', N'179-surprised-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (180, N'Calderon', N'Niko', N'Troy', N' 7220 353462', N'Ellenwood  ', N'298 Wakehurst Court ', N'KFC', N'Systems Analyst', N'+7(854)822-2331', N'kludge@verizon.net', N'180-surprised.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (181, N'Acevedo', N'Terrence', N'Viola', N' 9575 262338', N'Cookeville  ', N'62 Myrtle Dr. ', N'General Electric', N'Chef', N'+7(439)713-6117', N'lahvak@hotmail.com', N'181-furious.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (182, N'May', N'Madisyn', N'Byron', N' 7751 986773', N'Tucson  ', N'693 Depot Court ', N'BMW', N'Registered Nurse', N'+7(230)906-8815', N'raides@sbcglobal.net', N'182-sad-6.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (183, N'Ponce', N'Jadon', N'Doran', N' 9853 763831', N'Hallandale  ', N'9376 Theatre Drive ', N'The Walt Disney Company', N'Surveyor', N'+7(598)895-2899', N'gfxguy@aol.com', N'183-sad-5.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (184, N'Thornton', N'Jaylen', N'Tobias', N' 2868 392150', N'Freeport  ', N'7 Swanson Drive ', N'American Express', N'Urban Planner', N'+7(429)678-1872', N'krueger@msn.com', N'184-sad-4.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (185, N'Kelly', N'Brendan', N'Damien', N' 7019 883500', N'Adrian  ', N'20 Cambridge Lane ', N'Burberry', N'Middle School Teacher', N'+7(276)750-1655', N'shang@yahoo.ca', N'185-sad-3.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (186, N'Houston', N'Helena', N'Murphy', N' 1529 516117', N'Port Chester ', N'7299 East Rockledge St.', N'Pizza Hut', N'Speech-Language Pathologist', N'+7(805)953-2020', N'kalpol@comcast.net', N'186-angry-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (187, N'Moon', N'Madalyn', N'Carleen', N' 7513 42100', N'Kingston  ', N'9737 W.Sherwood Ave. ', N'H&M', N'Personal Care Aide', N'+7(611)670-2147', N'kildjean@msn.com', N'187-rich.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (188, N'Johns', N'Marcelo', N'Louisa', N' 5292 664723', N'Roy  ', N'23 Elm Rd. ', N'Heineken Brewery', N'Database administrator', N'+7(242)487-7082', N'treeves@comcast.net', N'188-sad-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (189, N'Campos', N'Jay', N'Georgina', N' 1446 216584', N'Chandler  ', N'3 Brewery St. ', N'PepsiCo', N'Database administrator', N'+7(939)641-7992', N'timtroyr@icloud.com', N'189-happy-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (190, N'Sullivan', N'Khalil', N'Rylie', N' 6353 693874', N'Newnan  ', N'8786 Galvin Dr. ', N'Bank of America', N'Landscaper & Groundskeeper', N'+7(669)482-2353', N'world@att.net', N'190-sad-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (191, N'Merritt', N'Nikhil', N'Claudia', N' 8638 615943', N'Norristown  ', N'9624 Bohemia Lane ', N'Nintendo', N'Court Reporter', N'+7(801)814-0510', N'kspiteri@icloud.com', N'191-sad.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (192, N'Melendez', N'Blaine', N'Vivian', N' 5428 298274', N'Anderson  ', N'40 Newcastle St. ', N'Johnson & Johnson', N'Bookkeeping clerk', N'+7(362)338-4199', N'rtanter@att.net', N'192-smile.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (193, N'Munoz', N'Clayton', N'Caylen', N' 8862 885055', N'Coatesville  ', N'519 Manhattan Street ', N'HSBC', N'Landscape Architect', N'+7(897)655-0021', N'twoflower@mac.com', N'193-in-love-2.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (194, N'Montgomery', N'Khalil', N'Eloise', N' 2574 326715', N'Utica  ', N'9833 East Studebaker Ave.', N'Kellogg Company', N'College Professor', N'+7(710)859-3522', N'howler@msn.com', N'194-happy.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (195, N'Medina', N'Bruce', N'Elein', N' 7843 990305', N'Pueblo  ', N'77 Shirley St. ', N'MasterCard', N'Respiratory Therapist', N'+7(612)934-2623', N'yfreund@sbcglobal.net', N'195-kiss-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (196, N'Landry', N'Lesly', N'Gregory', N' 5688 765287', N'Portage  ', N'928 Clark St. ', N'Gucci', N'Mason', N'+7(896)396-9500', N'nogin@msn.com', N'196-in-love-1.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (197, N'Hartman', N'Alyson', N'Lee', N' 7217 461000', N'Elgin  ', N'943 W.Riverview Court ', N'Mercedes-Benz', N'Veterinarian', N'+7(533)891-1018', N'onestab@live.com', N'197-in-love.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (198, N'Contreras', N'Ellen', N'Fawn', N' 1559 96165', N'Colonial Heights ', N'9501 SE.Edgemont Lane ', N'L''Oréal', N'Architect', N'+7(309)279-3798', N'lcheng@mac.com', N'198-kiss.png', NULL)
GO
INSERT [dbo].[Drivers] ([Id], [Surname], [Name], [Middlename], [Passport], [City], [Address], [Company], [Jobname], [Phone], [Email], [Photo], [Description]) VALUES (199, N'Barr', N'Sofia', N'Kingston', N' 3480 736537', N'Morton Grove ', N'93 South Plumb Branch', N'KFC', N'Accountant', N'+7(483)664-9876', N'bdthomas@yahoo.com', N'199-angry.png', NULL)
GO
SET IDENTITY_INSERT [dbo].[Drivers] OFF
GO
SET IDENTITY_INSERT [dbo].[Users] ON 
GO
INSERT [dbo].[Users] ([ID], [Login], [Password]) VALUES (1, N'Inspector', N'Inspector')
GO
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
USE [master]
GO
ALTER DATABASE [Gibdd] SET  READ_WRITE 
GO
