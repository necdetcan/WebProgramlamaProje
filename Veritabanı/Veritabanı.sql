USE [master]
GO
/****** Object:  Database [web]    Script Date: 3.01.2021 19:28:10 ******/
CREATE DATABASE [web]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'web', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\web.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'web_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\web_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [web] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [web].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [web] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [web] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [web] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [web] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [web] SET ARITHABORT OFF 
GO
ALTER DATABASE [web] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [web] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [web] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [web] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [web] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [web] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [web] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [web] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [web] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [web] SET  DISABLE_BROKER 
GO
ALTER DATABASE [web] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [web] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [web] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [web] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [web] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [web] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [web] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [web] SET RECOVERY FULL 
GO
ALTER DATABASE [web] SET  MULTI_USER 
GO
ALTER DATABASE [web] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [web] SET DB_CHAINING OFF 
GO
ALTER DATABASE [web] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [web] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [web] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'web', N'ON'
GO
ALTER DATABASE [web] SET QUERY_STORE = OFF
GO
USE [web]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 3.01.2021 19:28:10 ******/
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
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 3.01.2021 19:28:10 ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Haberler]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Haberler](
	[ID] [int] NOT NULL,
	[HaberTR] [text] NULL,
	[HaberENG] [text] NULL,
	[Begeni] [int] NULL,
	[Dislike] [int] NULL,
	[Tarih] [date] NULL,
	[Baslik] [text] NULL,
	[BaslikENG] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pilotlar]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pilotlar](
	[ID] [int] NOT NULL,
	[Soyad] [varchar](255) NULL,
	[Ad] [varchar](255) NULL,
	[Yas] [int] NULL,
	[Takim] [varchar](255) NULL,
	[Biyografi] [text] NULL,
	[YarisGalibiyet] [int] NULL,
	[PodyumSayi] [int] NULL,
	[DogumYeri] [varchar](100) NULL,
	[SampiyonlukSayisi] [int] NULL,
	[EnHizliTur] [int] NULL,
	[Pole] [int] NULL,
	[Ulke] [varchar](30) NULL,
	[YarisSayisi] [int] NULL,
	[DogumYeriENG] [varchar](255) NULL,
	[UlkeENG] [varchar](255) NULL,
	[BiyografiENG] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PuanDurumu]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PuanDurumu](
	[ID] [int] NOT NULL,
	[Takim] [varchar](255) NULL,
	[Pilot] [varchar](255) NULL,
	[Puan] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takimlar]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takimlar](
	[ID] [int] NOT NULL,
	[TakimAdi] [varchar](255) NOT NULL,
	[TakimMerkezi] [varchar](255) NULL,
	[TakimPatronu] [varchar](255) NULL,
	[TeknikSef] [varchar](255) NULL,
	[Sasi] [varchar](255) NULL,
	[GucUnitesi] [varchar](255) NULL,
	[KurulusTarihi] [varchar](50) NULL,
	[DunyaSampiyonluklari] [int] NULL,
	[EnIyiSonuc] [varchar](250) NULL,
	[PolePozisyonu] [int] NULL,
	[EnHizliTur] [int] NULL,
	[MerkezENG] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Takvim]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Takvim](
	[ID] [int] NOT NULL,
	[YarisAdi] [varchar](255) NOT NULL,
	[Birinci] [varchar](50) NULL,
	[Ikinci] [varchar](50) NULL,
	[Ucuncu] [varchar](50) NULL,
	[Dorduncu] [varchar](50) NULL,
	[Besinci] [varchar](50) NULL,
	[Altinci] [varchar](50) NULL,
	[Yedinci] [varchar](50) NULL,
	[Sekizinci] [varchar](50) NULL,
	[Dokuzuncu] [varchar](50) NULL,
	[Onuncu] [varchar](50) NULL,
	[OnBirinci] [varchar](50) NULL,
	[OnIkinci] [varchar](50) NULL,
	[OnUcuncu] [varchar](50) NULL,
	[OnDorduncu] [varchar](50) NULL,
	[OnBesinci] [varchar](50) NULL,
	[OnAltinci] [varchar](50) NULL,
	[OnYedinci] [varchar](50) NULL,
	[OnSekizinci] [varchar](50) NULL,
	[OnDokuzuncu] [varchar](50) NULL,
	[Yirminci] [varchar](50) NULL,
	[Ulke] [varchar](50) NULL,
	[EnHizliTur] [varchar](50) NULL,
	[PistAdi] [varchar](255) NULL,
	[Tarih] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tarihce]    Script Date: 3.01.2021 19:28:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tarihce](
	[ID] [int] NOT NULL,
	[Tarihce] [text] NULL,
	[TarihceENG] [text] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'3.1.8')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'ADMIN', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'User', N'USER', NULL)
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'85e919d9-f82e-46d2-a7b8-df2810284603', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'f0a8b70f-128f-4bdc-8146-bcff7e9127cc', N'2')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'85e919d9-f82e-46d2-a7b8-df2810284603', N'g181210111@sakarya.edu.tr', N'G181210111@SAKARYA.EDU.TR', N'g181210111@sakarya.edu.tr', N'G181210111@SAKARYA.EDU.TR', 1, N'AQAAAAEAACcQAAAAECD/RsM9brQ1WZafBRX6RaNhIR1fqGF8ew7qXta053rzOUQUlWt79PRF0yM1C08KSA==', N'RD2IGEUB4PTYXEYISEZ6D32B2KD6YSY6', N'15236975-098e-47ca-93eb-e965e1cb4d38', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'f0a8b70f-128f-4bdc-8146-bcff7e9127cc', N'user@gmail.com', N'USER@GMAIL.COM', N'user@gmail.com', N'USER@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEHqrpHPUfDm6fvY7Z18T+2iXvozox8x7mCDupLWcytEAcYSOAdGAnWc9yEaNtc7C0A==', N'CITC2GAIO7W6O4GFCDSREIHUFEWJ67W6', N'836d7160-2c48-4f53-8f7a-a5297781c241', NULL, 0, 0, NULL, 1, 0)
GO
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (1, N'Red Bull, George Russell’ın Mercedes ile yakın bağlara sahip olmasından ötürü 2022 için İngiliz pilotla yarışmayı hiç düşünmediğini açıkladı.
Red Bull, 2020 Formula 1 sezonunun ardından Alex Albon''la devam etmeme kararı aldı ve sonrasında koltuk için çeşitli pilotların adı geçti.

George Russell, Sakhir GP''de Lewis Hamilton''ın yerine Mercedes''te yarışan isimdi ve Alman ekiple çıktığı ilk yarıştaki harika performansıyla herkesi kendisine hayran bıraktı.

Bundan ötürü İngiliz pilotun adı bir noktada Red Bull''la anılmaya başladı. Fakat sonunda Red Bull''un tercihi Sergio Perez oldu.

Red Bull''un 2021 sürücü seçimi hakkında açıklamalarda bulunan Helmut Marko, Mercedes''le yakın bağlarından ötürü Russell''la yarışmayı hiç düşünmediklerini belirtti.

Motorsport.com ile yaptığı özel röportajda Marko, Russell''ı aday olarak düşünüp düşünmedikleri sorusuna şöyle yanıt verdi: "Hayır."

"Toto Wolff ile on yıllık kontratı var. O, Mercedes''in genç sürücüsü. Bir yıllık geçici bir çözüm arıyorduk ve Perez çok daha iyi bir seçenekti."

Marko, Russell''ın iyi bir sürücü olduğundan şüphesi olmadığını, ancak Sakhir GP''deki performansının, Valtteri Bottas''ın düşük performansı nedeniyle iyi bir gösterge olmayabileceğini söyledi.

Marko, "Russell zeki ve hızlı bir genç adam. Mercedes''le yaptığı şey harikaydı. Ama bana göre Bottas tarafında öyle bir belirsizlik vardı ki, bana göre gerçekten geçerli bir karşılaştırma değildi."

"Bottas, Cuma günkü ilk turdan itibaren kendisini saçma bir duruma soktu ve normal seviyesinin çok altında kaldı." dedi.

Tsunoda''ya övgü
Marko, Perez''in Red Bull''a getirilmesi kararında olduğu gibi, Yuki Tsunoda''nın AlphaTauri ile F1''e geçişinde de önemli rol oynadı.

Marko, Japon sürücünün çaylak F2 sezonunda ortaya koyduğu performans hakkında övgü dolu sözler sarf etti ve genç sürücünün geleceği için heyecanlı olduğunu belirtti.

"Tsunoda, her yarışı sürekli olarak ilk beşte bitirebilen tek Formula 2 pilotuydu. Şampiyonluğu kazanamamasının tek nedeni teknik sorunlar ve karıştığı birkaç kazaydı. Bu onun çaylak yılıydı."

“İnanılmaz bir saf hız var. Her şeyi inanılmaz derecede çabuk kavrıyor ve öğreniyor. Son birkaç yarışa bakarsanız, yarışların başlangıcında her şey çözülünceye kadar ayağını gazdan çekti, lastiklerini korudu ve sonra atağa kalktı."

"Bu, agresif olmakla aklını kullanmanın süper bir karışımıydı."

Marko, Tsunoda''nın karakterini de övdü ve ekledi: "Son derece karizmatik olan, inanılmaz derecede komik bir adam. 1,61 boyunda ve 58 kilo ağırlığında. Onu cuma günü piste çıkarmamış olmamız, araçta büyük çalışmalar yapılmasının gerekecek olmasından kaynaklanıyor. Çok uzun süreceği için imkansızdı."', N'Red Bull says that George Russell’s close ties to Mercedes meant he was never on its radar as a replacement for Alex Albon.
With Red Bull having been open that it would look outside its current pool of drivers if Albon did not deliver what it wanted, Sergio Perez ultimately ended up landing the second Red Bull seat for 2021.

However, Russell would have been an obvious contender based on his pure speed after showing at the Sakhir Grand Prix that he had the pace to win when he stood in for Lewis Hamilton.

Reflecting on the candidates that Red Bull evaluated as it came to its decision on 2021 drivers, its motorsport advisor Helmut Marko said that Russell was never even considered.

“No,” he said in an exclusive interview with Motorsport.com.

“He has a ten-year contract with Toto Wolff. He is a Mercedes junior. We were looking for an interim solution for one year. Perez is the much better option there."

Marko said that there was no doubt that Russell is a good driver, but he questioned about making too much of his star showing in the Sakhir GP because he felt it was a weekend where Valtteri Bottas under performed.

“Russell is an intelligent and fast young man,” added Marko. “His Mercedes effort was great. But at the same time, it was marked by such uncertainty from Bottas that it wasn''t really a valid comparison. Bottas put together such crap from the first lap on Friday, that he was way below his normal level."

Tsunoda praise
As well as making the decision to hand Perez a Red Bull seat, Marko was instrumental in making the call to promote Yuki Tsunoda from F2 into AlphaTauri.

Marko is full of praise for what the Japanese did in his rookie F2 campaign, and says good things are expected of him in F1 next year.

"Tsunoda was the only Formula 2 driver who continuously finished in the top five in every race,” he said. “It was only because of technical defects and a few crashes that he failed to win the championship. And that in his rookie year.

“He is characterised by an incredible basic speed and a very, very quick grasp and learning phase. If you looked in the last few races, he held back at the beginning of the races until everything was half sorted, he spared his tyres and then he attacked. That was a super mix between being aggressive and driving with his head."', 0, 0, CAST(N'2020-12-31' AS Date), N'Marko: "Red Bull, Russell''la hiç ilgilenmedi"', N'Russell never on Red Bull F1''s radar to replace Albon - Marko')
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (2, N'Sebastian Vettel, 2021''deki F1 kariyerinde Mick Schumacher''e yardımcı olmaktan mutluluk duyacağını ancak çaylak pilotun sporda "kendi yolunu bulması" gerektiğini düşünüyor.
F1 kariyeri boyunca idolü Michael Schumacher ile güçlü bir dostluk kuran Vettel, Michael''ın önümüzdeki sezon Haas adına yarışacak 21 yaşındaki oğlu Mick''le de yakın bir ilişkiye sahip.

Pist dışındaki arkadaşlıklarının dışında da Vettel ve Schumacher Jr., Meksika''daki 2019 Şampiyonlar Yarışı''nda Almanya Takımı için partner olmuştu ve Vettel''in Michael ile başlattığı sezon dışı geleneğini sürdürmüşlerdi.

Önümüzdeki sezon Aston Martin Racing''le yarışacak Vettel, Mick Schumacher''in F1''deki ilk adımlarında ona destek verebileceğini söylüyor.

Schumacher''in F1''e gelişi hakkında Motorsport.com tarafından yönetilen soruları cevaplayan Vettel, "Elimden geldiğince yardımcı olmaktan mutluluk duyuyorum çünkü o harika bir adam. Ayrıca babasıyla da çok özel bir bağım var."

"Michael''ın Mick''in son birkaç yılda ilerlemesine ve F1''e adım atışına tanık olamaması gerçekten hayal kırıklığı."

"Yani kendi açımdan onu gerçekten seviyorum, iyi anlaşıyoruz ve ona bildiğim her şeyi anlatmaktan mutluluk duyuyorum." dedi.

2020 FIA F2 şampiyonluğu ardından F1''e transfer olan Mick de dört kez dünya şampiyonu Vettel''in babasına benzer şekilde kendisine bir idol ve akıl hocası olduğunu söyledi.

Vettel, "Açıkçası gurur duydum. Babasının benim zaferlerimi izlediğinden çok, ben onun kazandığı zaferleri izledim ama yine de yardımcı olmaktan mutluluk duyacağım." dedi.

Sözlerinde Schumacher''in kariyer yolunu kendi başına çizmek zorunda kalacağına da değinen Vettel, "Yardım etmekten mutluluk duyuyorum ancak kendi yolunu bulması ve o yolu izlemesinin onun için çok önemli olduğunu düşünüyorum."

"Michael''a bir şeyler sorduğumda bana her zaman cevap verdi ve bana katkıda bulundu, ben de ona aynısını yapmaya çalışıyorum."

"Onun hayatının neresinde yardımda bulunabileceksem ya da kariyerim boyunca yaşadığım şeyleri ona nasıl aktarabileceksem bunu yapacağım." dedi.', N'Sebastian Vettel says he is happy to help fellow German Mick Schumacher on his Formula 1 debut in 2021, but believes the Haas rookie also has to "find his own path" in the sport.
Vettel forged a strong friendship with his idol Michael Schumacher during his rise through the sport and has also become close to Michael''s 21-year-old son Mick, who will make his Formula 1 debut in 2021 with Ferrari-affiliated Haas as a member of the Ferrari Academy.

In addition to being friends off the track, Vettel and Schumacher junior partnered for Team Germany at the 2019 Race of Champions in Mexico, continuing a popular off-season tradition that Vettel started with Michael.

Vettel, who will move to Aston Martin Racing next season, says Schumacher will be also able to count on his support as he makes his first steps in F1.

"I''m happy to help where I can because he''s a great guy and obviously I have a very special connection to his father," Vettel said when asked by Motorsport.com about Schumacher''s arrival in F1. "It''s a shame that Michael is not able to witness Mick''s progression in the last few years and his step now into Formula 1.

"So, yeah, from my side, I really like him, we get along well and I''m happy to tell him everything that I know."


Schumacher, who graduates to F1 after clinching the 2020 FIA F2 title, said Vettel is an idol and a mentor to him in similar fashion to what his father is to the four-time world champion.

"Well I''m flattered obviously. I watched his father win a lot more races than he could have watched me win, but I think I will be happy to help," Vettel responded, while adding that Schumacher will also have to forge his own path in the sport.

"I''m happy to help, but I think it''s very important for him to find his own path and follow his own way.

"But surely as much as it helped when Michael had some things to say when I asked and gave me advice, I''m trying to do the same to him.

"The way I see him as a person, where I can help him in his life, or on track with some of the things that I went through in my career."', 0, 0, CAST(N'2020-12-28' AS Date), N'Vettel: "Mick Schumacher F1''de kendi yolunu bulmalı"', N'Vettel: Mick Schumacher has to "find his own path" in F1')
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (3, N'Formula 1 Dünya Şampiyonu Lewis Hamilton, Birleşik Krallık Kraliçesi''nin Yeni Yıl Onur Listesi''nde yer alarak şövalye ilan edildi. Hamilton bu sayede artık Sir Lewis Hamilton olarak anılacak.
Hamilton, Michael Schumacher''in 91 yarışlık galibiyet rekorunu kırıp 95''e çıkardığı ve 7  şampiyonluk rekoruna ortak olduğu yılın ardından şövalye ilan edilmiş oldu.

Hamilton, 2008''de ilk şampiyonluğunu kazanmasının ardından motor sporlarındaki hizmetlerinden dolayı aldığı Britanya İmparatorluk Nişanı''ndan 12 yıl sonra şövalye ilan edildi.

Hamilton böylece, daha önce şövalye olan Jack Brabham (1978) ve Jackie Stewart''ın (2001) ardından şövalye ilan edilen 3. Formula 1 şampiyonu oldu. Onların dışında 2000''de Stirling Moss da bu şerefe ulaştı. Ancak Hamilton, aktif bir şekilde yarışırken bu şerefe ulaşan ilk Formula 1 pilotu oldu.

F1 pilotları dışında, Williams F1 takımının kurucuları Frank Williams ve Patrick Head de 1999 ve 2015''te, farklı zamanlarda şövalye ilan edilmişlerdi.

Hamilton 35 yaşında, oldukça genç bir yaşta bu şerefe layık görüldü ancak modern dönemde bunu başaran en genç isim olamadı. Daha önce tenis yıldızı Andy Murray 29 yaşında, bisiklet yarışçıları Bradley Wiggins ve Chris Hoy ise 32 yaşında bu şerefe ulaşmışlardı. 

Ocak ayı itibariyle F1''in yeni CEO''su olacak Stefano Domenicali, Hamilton''ın başarılarını övdü.

Domenicali, "Lewis bu sporun gerçekten dev ismi. Onun etkisi hem araç içerisinde, hem de aracın dışında oldukça büyük. Başardıkları olağan üstü ve daha fazlası gelecek."

"F1''deki herkes onu hak ettiği başarıların takdiri nedeniyle tebrik ediyoruz ve 2021''de onun parlamasını daha fazla görmek için sabırsızlanıyoruz." demişti.



Hamilton, bu ayın başında ikinci kez BBC''nin prestijli Yılın Spor Kişiliği oylamasını kazanmıştı. 

Hamilton bunun dışında ayrıca, futbolcu Lionel Messi ile 2020 Laureus Dünya Spor Ödülü''nü kazandı.

Bu gelişmeyi değerlendiren Mercedes''in takım patronu Toto Wolff, "Lewis, tüm zamanların en büyük yarış pilotlarından birisi ve döneminin en başarılı Britanyalı sporcusu. Tüm dünyada uzun zamandır sportif başarılarıyla tanınıyor. Bu sene ayrımcılığa karşı savaşırken, pist üstündeki mükemmelliğini güçlü sesiyle birleştirdi. Her açıdan 2020''nin lideriydi."

"Onun şövalye olacağı haberi, motor sporlarında kariyerindeki eşi benzeri olmayan başarısı ile artık hak ettiği takdiri aldığını gösteriyor. Britanya Krallığı, Sir Lewis Hamilton kalitesinde bir şampiyona ve elçiye sahip olduğu için büyük gurur duyabilir." dedi.', N'Formula 1 World Champion Lewis Hamilton has received a knighthood in the United Kingdom Queen’s 2021 New Year Honours list, which was officially announced on Wednesday evening.
The knighthood – which means he will be known formally as Sir Lewis Hamilton – has been awarded at the end of a year that saw him match Michael Schumacher’s record of seven F1 World Championship titles and surpass the German''s race wins tally.

He has also pursued a campaign to increase diversity in the sport and frequently spoken out against racism in society, although the honour is for his services to motorsports. It comes exactly 12 years after Hamilton, following his first World Championship title, became a Member of the Most Excellent Order of the British Empire for services to motor racing.

Hamilton is the third F1 World Champion to receive a knighthood, following Jack Brabham (in 1978) and Jackie Stewart (2001), while the honour also went to Stirling Moss (2000). However, Hamilton is the first to gain this status while still an active driver.

In addition, racers and land speed record breakers Henry Segrave (1929) and Malcolm Campbell (1931) were both knighted before World War II.

Aside from drivers, Williams F1 team founders Frank Williams and Patrick Head have also received knighthoods, in 1999 and 2015 respectively.

Hamilton has been awarded a knighthood at the age of just 35, although he is not the youngest sportsman to be recognised in the modern era. Tennis star Andy Murray was 29 when he was named in the 2017 New Year Honours list, following his second Wimbledon victory, while cyclists Bradley Wiggins and Chris Hoy were both 32. Sailor Ellen MacArthur was 28 when she was made a dame, the equivalent of a knighthood, in 2005.

New F1 CEO Stefano Domenicali, who officially starts work in January, has paid tribute to Hamilton.

“Lewis is a true giant of our sport and his influence is huge both in and out of a car,” said Domenicali. “What he has achieved is phenomenal with still more to come.

“All of us at F1 congratulate him on this well-deserved recognition of his achievements and look forward to seeing more of his brilliance in 2021.”

Mercedes-Benz AMG F1 team principal Toto Wolff commented: "Lewis is one of the very greatest racing drivers of all time and the most successful British sportsperson of his era. Around the world, he has long been recognised for his sporting achievement; this year, he combined his excellence on the track with a powerful voice to fight discrimination. In every sense, he led the way in 2020.

"The news that he is to receive a knighthood shows that he is now receiving the recognition he has earned during a career of unparalleled success in motorsport. The UK can be very proud to have a champion and ambassador of the calibre of Sir Lewis Hamilton."


Earlier this month Hamilton received recognition from the British public when he was voted BBC Sports Personality of the Year for a second time, having previously won the prestigious award in 2014.

He also won the 2020 Laureus World Sports Award for Sportsman of the Year prize, sharing it with footballer Lionel Messi.', 0, 0, CAST(N'2020-12-31' AS Date), N'Hamilton şövalye ilan edildi, Sir Lewis Hamilton oldu!', N'Hamilton knighted in Queen’s New Year Honours list')
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (4, N'Eski Haas F1 pilotu Romain Grosjean, Bahreyn Grand Prix kazasından bir ay sonra iRacing ile mücadeleye dönerken, kendisini çok daha iyi hissettiğini belirtti.
Haas pilotu Grosjean, geçen ay Bahreyn''de gerçekleştirilen yarışın ilk turunda büyük bir kaza yapmıştı.

Alev alan araçtan mucizevi şekilde kurtulan Grosjean''ın ellerinde yanıklar oluştu ve bundan ötürü sezonun son iki Formula 1 yarışında mücadele edemedi.

34 yaşındaki sürücü, tedavisi için İsviçre''ye gitti ve bu bir aylık süreçte sosyal medyada oldukça aktifti. 

Grosjean, kazasından tam bir ay sonra salı günü bir tweet attı ve spor salonuna gidebildiğini ve tenis oynamayı başardığını belirtti.

Çarşamba günü direksiyona sanal yarışlarla beraber döndü ve Twitch''te takipçilerinin sorularını yanıtlamaya başladı.

Grosjean, özellikle sol elindeki sorunların devam ettiğini ama giderek daha iyi hal geldiğini belirtti.

Grosjean, "Ellerim daha iyi hale geliyor. Sol elim beni biraz zorluyor. Yapabileceğim şeyler sınırlı."

"En büyük sorun sol baş parmağımı çok fazla bükemiyor olmam." dedi.', N'Former Haas F1 racer Romain Grosjean says his hands "are getting better" one month on from his fiery Bahrain Grand Prix crash, as he streamed his return behind the wheel on iRacing.
Last month Grosjean survived a horrifying crash on the first lap of the Bahrain GP in what turned out to be his final Formula 1 start for Haas.

Grosjean miraculously escaped serious injuries but suffered burns to his hands, which prevented him from returning to the cockpit in Abu Dhabi for his F1 farewell.

The 34-year-old has continued to receive treatment for his injuries at home in Switzerland and posted regular updates on his social media channels – and changed his Twitter bio to “Father - Husband - Racing driver - Haters and Fire resistant - Aka The Phoenix”.

On Tuesday Grosjean tweeted an update exactly one month after his accident, sharing he went to the gym and managed to play tennis.

On Wednesday he also returned behind the wheel, streaming an iRacing session on Twitch in which he took questions from followers and ran laps of the Nurburgring in a Dallara Formula 3 car.

Grosjean also shared an update on his hands with his audience, which quickly rose to four figures. "My hands are getting better," Grosjean said. "Still struggling a bit with my left [hand] and limited with the stuff I can do.

"The biggest problem is my [left] thumb, I can''t bend my thumb more than this," he gesticulated on screen.', 0, 0, CAST(N'2020-12-28' AS Date), N'Grosjean: "Elimin durumu artık daha iyi"', N'Grosjean makes sim racing return, one month after Bahrain crash')
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (5, N'Ferrari sportif direktörü Laurent Mekies, 2021 sezonunda Pirelli''nin kullanacağı yeni lastik türlerinin Formula 1 takımlarında "kafa karıştırıcı" durumlar yaratacağını düşündüğünü söyledi.
Önceden, üçüncü kez üst üste aynı lastikleri kullanma planı yapılmasının ardından Pirelli, 2020 sezonu boyunca çok fazla yüksek profilli lastik patlaması yaşanması ile beraber yeni prototip lastikler geliştirdi.

Pirelli''nin, daha dirençli ama biraz daha yavaş olan ve aracın yol tutuşunda büyük bir etkisi olan yeni lastik türleri, Bahreyn''de test edildiklerinde sürücüler tarafından iyi geri dönüşler almadı, Lewis Hamilton ve Sebastian Vettel ise şu anki lastik türlerini tercih ettiler. 

Mercedes takım patronu Toto Wolff''ün yaptığı, yete basma kuvvetleri ile mücadele etmek ve yeni lastik patlamalarını engellemek açısından yeni lastiklerin gerekli olduğu hakkında yapılan eleştiri ise F1 sürücülerinin Pirelli''ye destek vermesine neden oldu.

Ferrari direktörü Mekies, takımların lastiklerin iyi bir şekilde performans verip veremeyeceği konusunda endişe etmemesi gerektiği düşüncesinde Wolff''e katıldığını, ancak yeni lastik türlerini doğru kullanmanın baş ağrısı yaratacağını söyledi.

Mekies açıklamalarında şunları söyledi: "Bu lastiklerin, prototip lastiklerin, daha iyi bir güvenlik tedbiri için yapıldığını biliyoruz."

"Hepimiz güvenlik istiyoruz, hepimiz lastik güvenliği hakkında endişelenmediğimiz bir durumda sonuna kadar zorlamak istiyoruz ve bence Pirelli de bunu yaptı."

"Evet, daha az yol tutuş olacak, daha az yol tutuşu sevmeyiz, ancak eğer güvenlik açısından bunu feda etmemiz gerekecekse o zaman bizim için bir sorun yok."

"Bu lastiklerle olan karmaşık durum ise yol tutuşunun az olmasının yanında aynı zamanda virajlar arasında bir denge kaybı yaşanıyor olması. Bu sebeple de kış ayı boyunca herkes için, en iyisinin nasıl bulunacağı konusunda kafa karıştırıcı durumlar ortaya çıkacak."

Sürücüler, Bahreyn''deki testlerin ardından Pirelli''nin prototip lastik hamurlarının önden kayma yarattığını ve aşırı ısınma sorunlarını çözmüş gibi durmadığını söylemişlerdi.

Bu da, çoğunluğunun bu seneden transfer edilecek olan 2021 araçlarının yeni lastiklere göre modifiye edilmesinin, yeni sezonda iyi bir başlangıç yapıp yapmamakta büyük bir etkisi olacağını göstermekte.

"Ve sürücülerimizi bu konuda nasıl destekliyeceği hâlâ bir muamma, ki bu da gelecek sene en azından kısa vadede, gridde yeni bir sıralama parametrisi oluşturması konusunda oldukça iyi bir şey olacaktır."', N'Ferrari sporting director Laurent Mekies thinks Formula 1 teams will have to do a lot of "head scratching" to get on top of Pirelli''s new tyre compounds for the 2021 F1 season.
After initially planning to stay on the current tyres for a third consecutive season, Pirelli has developed new prototypes in the wake of several high-profile tyre blow-outs during the 2020 season.

Pirelli''s new compounds, which are more robust but slightly slower and have an impact on the handling of the car, weren''t very well received by the drivers when they were sampled in Bahrain, with the likes of Lewis Hamilton and Sebastian Vettel preferring to stick to the current compounds.

In the wake of that wave of criticism, Mercedes team boss Toto Wolff urged F1 drivers to support Pirelli, saying the new compounds are necessary to cope with the downforce demands of the current crop of cars and avoid further failures.

Ferrari director Mekies agreed with Wolff that teams shouldn''t have to worry about whether the tyres will hold up, but explained the new compounds will cause them a headache to get right.

"We know this tyre is done for better safety, the prototype tyre, so that''s the way it is," Mekies said.

"We all want safety, we all want to push as hard as we can without having to be concerned about the tyre safety and I think that''s what Pirelli has done.

"So yes, it comes with less grip, we don''t like less grip, but if it''s the price one has to pay to get it, then I''m sure it''s fine.

"Now the tricky bit with these tyres is that yes, they have less grip but they also come with balance shifts through the corners and it''s probably going to mean quite a bit of head scratching over the winter to see how best to go about it."

Drivers found that Pirelli''s prototype compounds caused understeer when they were tested in Bahrain and didn''t appear to solve the recurring overheating issues.

That means adjusting the 2021 cars, which are largely carried over from this year, to the new rubber will be an important factor in getting ahead of the opposition at the start of next season.

"It''s not just less grip, its characteristics are quite different," Mekies added.

"And how to best support our drivers in dealing with that is going to be a topic, which I guess is good for the short run next year, in a way that there will be a new parameter in the equation of the ranking next year."', 0, 0, CAST(N'2020-12-25' AS Date), N'Mekies: "2021 lastikleri herkes için ''kafa karıştırıcı'' durumlar yaratacak"
', N'F1 teams face "head scratching" to manage 2021 tyres')
INSERT [dbo].[Haberler] ([ID], [HaberTR], [HaberENG], [Begeni], [Dislike], [Tarih], [Baslik], [BaslikENG]) VALUES (6, N'Carlos Sainz, kendisinin yükselmesine yardımcı olan McLaren''in aile atmosferine övgülerde bulunurken, yeni takımı Ferrari''nin bu konuda eksiğinin olduğunu düşünmediğini söyledi.
Sainz, 2020''nin ardından kontratı yenilenmeyen Sebastian Vettel''in yerine, McLaren''den Ferrari''ye geçiş yaptı.

Vettel, Ferrari ile güçlü olan bir başlangıcın ardından, takımın belirli değişikleri yaşaması ve rekabetçiliğinin düşmesi ile beraber dört kez dünya şampiyonu pilot, İtalyan takımda zorlanmaya başladı.

2019''da Charles Leclerc''in gelişi ile beraber Vettel için işler zorlaştı, çünkü Monacolu pilot performansını iyileştirdikçe Vettel''in takım içerisinde olan statüsü ve destek seviyesi gittikçe azaldı.

Ferrari, 2021''de Alman pilotun yerine, McLaren''de geçirdiği iki güçlü yılda 2019 Brezilya GP''sidne ve 2020 İtalya GP''sinde podyum yakalayan Sainz''ı takıma getirdi.

Sainz''a göre Vettel''in Maranello''dan ayrılışı, bir dikkat çağrısı değil.

İspanyol pilot açıklamalarında şunları söyledi: "Ferrari, sürücülerini yiyip bitiren bir takım değil. Vettel''in kariyerine baktığınızda, hangi sürücü onun Ferrari''de geçirdiği beş seneyi geçirmek istemez ki?"

"Bir takımda en fazla iki sene geçirdim, eğer Ferrari sürücüleri yoran bir takımsa o zaman Renault, Toro Rosso ve diğerleri ne oluyorlar?"

"Alonso da Ferrari''de beş sene geçirdi. Burası sürücüleri yoran bir takım gibi durmuyor, bir çark içerisine sokan bir takım gibi duruyor."

"Tabii ki Ferrari''de bir düzen olsun istiyorum, McLaren''e benzer bir ortam yaratmak istiyorum. Bir fabrika takımı yaratmak üzerine yeterli deneyime sahibim ve umarım ki McLaren''de olduğuna benzer, eşit veya daha iyi bir takıma sahip olurum. 

Sainz, kendisini genel olarak daha iyi ve daha istikrarlı bir sürücü yapan McLaren''i yüceltti. İspanyol pilot, İngiliz takım ile çıktığı iki sezonda dünya şampiyonasını arka arkaya altıncı sırada tamamladı.

İspanyol pilotun açıklamaları şu şekilde: "McLaren gibi bir takım, bir sürücü olarak benim en iyi seviyeme çıkmamı sağladı."', N'Carlos Sainz has paid tribute to how McLaren''s family atmosphere has made him thrive at the Formula 1 team but isn''t worried that his new employer Ferrari will be lacking in that area.
Sainz is switching from McLaren to Ferrari to replace Sebastian Vettel, whose expiring contract was not renewed beyond 2020.

Vettel enjoyed a strong start to life at Ferrari, but as the team went through several changes and its competitiveness started to slip, the four-time world champion started to struggle. The arrival of Charles Leclerc in 2019 further complicated matters for Vettel, as the Monegasque''s mercurial performances gradually eroded Vettel''s status and level of support within the team.

Ferrari called on Sainz to replace the German in 2021 after two highly rated seasons with the resurgent McLaren, culminating in two podiums at the 2019 Brazilian GP and 2020 Italian GP.

Sainz doesn''t believe Vettel''s exit from Maranello is a warning sign.

"Ferrari is not a team that eats and devours its drivers," Sainz argued. "If you see Vettel''s career… what driver wouldn''t have wanted to spend five years at Ferrari like he has been?

"The longest I''ve been in a team is two years, so if Ferrari is a team that devours drivers, what are Renault, Toro Rosso and all the others?

"Alonso also spent five years at Ferrari. That doesn''t seem like a team that devours drivers, but cycles.

"Of course I want to have a cycle at Ferrari, create a similar environment [to McLaren] there. I already have experience in creating a works team, and I hope I have a team equal, similar or better than the one I have at McLaren. I''m going to do my best to have it."

Sainz praised McLaren for making him an overall better and more consistent driver, which was reflected in the Spaniard''s back-to-back sixth-place finishes in the world championship.

"A team like McLaren has allowed me to get the best version of myself as a driver," Sainz added.

"I am an improved version of what I was at Toro Rosso and Renault. I have improved in races, in starts, in qualifying, but I don''t know where I am better now. It has been a continuous and probably more advanced progression than I thought.

"In McLaren I have felt more comfortable than in other places, and that stability of a two-year contract has allowed me to improve as a driver and adapt more to the car, get more performance. I''m very happy and very grateful for these two years."', 0, 0, CAST(N'2020-12-24' AS Date), N'Sainz: "Ferrari, pilotları ''tüketen'' bir takım değil"', N'Sainz: Ferrari not a team that "devours" its drivers')
GO
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (1, N'HAMILTON', N'Lewis', 35, N'Mercedes AMG-Petronas', N'Daha 9 yaşındayken Mercedes-Benz Genç pilot yetiştirme programını imzalayan pilot. Formula Renault, Formula 3, GP2 serilerinde şampiyonluğa ulaşmıştır. Formula 1 kariyerinin ilk dokuz yarışında kürsüye çıkmayı başaran McLaren Mercedes takımının İngiliz pilotu Lewis Hamilton, Bahreyn Grand Prix''sinde elde ettiği ikincilik sonrası, ilk dokuz yarışında da podyuma çıkarak tarihe geçmiştir. Kanada ve Amerika Birleşik Devletleri Formula 1 kariyerinin ilk yılında birinci olarak büyük başarı göstermiştir 2007 yılında 1 puan farkla 109 puanla Formula 1 sezonunun ilk yılında ikinci olmayı başarmıştır.

2008 Formula 1 sezonunda dramatik şekilde biten 2008 Brezilya Grand Prix''i sonunda 98 puan toplayarak Massa''nın 1 puan önünde şampiyon olmuştur ve Formula 1 tarihinde en genç (bu rekor daha sonra 2010 sezonunda Sebastian Vettel tarafından kırıldı) ve ilk siyahi şampiyon pilot unvanını elde etmiştir.

2012 sezonu ortalarında Vodafone McLaren Mercedes''ten ayrılacağı spekülasyonları ortaya çıkmasıyla birlikte 28 Eylül 2012 tarihinde Mercedes GP ile 3 senelik anlaşma imzaladığı açıklanmıştır.

2014 Formula 1 sezonunda kariyerinin 2.Pilotlar Şampiyonluğunu kazanmıştır.

2015 Formula 1 Sezonunda da 3.Pilotlar Şampiyonluğuna ulaşmıştır

2016 Formula 1 sezonunda ise takım arkadaşı Nico Rosberg ile girdiği şampiyonluk savaşını ise son yarışa taşımasına rağmen sezonu 2.olarak tamamlamıştır.

Hamilton 29 Ekim 2017 tarihinde koşulan Meksika GP''sini 9. olarak tamamlayarak 2017 Formula 1 Dünya Pilotlar Şampiyonluğunu sezon tamamlanmadan 2 yarış önce ilan etmiştir ve 4.Pilotlar şampiyonluğuna ulaşmıştır.[1]

2018 Formula 1 sezonunda ise Scuderia Ferrari''den Sebastian Vettel ile girdiği şampiyonluk savaşını kazanarak 5.Pilotlar Şampiyonluğuna ulaşmıştır.

2019 Formula 1 sezonunda ise zorlanmadan takım arkadaşı Valtteri Bottas''ın önünde 6.Pilotlar Şampiyonluğunu kazanmıştır.

2020 Portekiz Grand Prix''de Schumacher''in kırılamaz denilen 91 yarış kazanma rekorunu krımıştır.

Şu anda devam eden 2020 Formula 1 sezonunda ise Pilotlar Şampiyonasında liderliğini sürdürmektedir.', 93, 162, N'Stevenage, Hertfordshire, İngiltere', 7, 53, 97, N'BİRLEŞİK KRALLIK', 263, N'Stevenage, ENGLAND', N'UNITED KINGDOM', N'Sir Lewis Carl Davidson Hamilton MBE HonFREng (born 7 January 1985) is a British racing driver who most recently competed in Formula One for Mercedes in 2020, having previously driven for McLaren from 2007 to 2012. In Formula One, Hamilton has won a joint-record seven World Drivers'' Championship titles (tied with Michael Schumacher), while he holds the outright records for the most wins (95), pole positions (98) and podium finishes (165), amongst others.

Born and raised in Stevenage, Hertfordshire, Hamilton enjoyed a successful ascent up the racing ladder and was signed to the McLaren young driver programme in 1998. This later resulted in a Formula One drive with McLaren in 2007, making Hamilton the first black driver to race in the sport. That season, Hamilton set numerous records as he finished runner-up to Kimi Räikkönen by one point. The following season, he won his maiden title in dramatic fashion—making a crucial overtake on the last corner of the last lap in the last race of the season—to become the then-youngest Formula One World Champion in history. After four more years with McLaren, Hamilton signed with Mercedes in 2013.

Changes to the regulations for 2014 mandating the use of turbo-hybrid engines came at the start of a highly successful period for Hamilton, during which he has won six further drivers'' titles. Hamilton won consecutive titles in 2014 and 2015 during an intense rivalry with teammate Nico Rosberg to match his hero Ayrton Senna''s three World Championships. Following Rosberg''s retirement, Ferrari''s Sebastian Vettel became Hamilton''s closest rival in two intense championship battles, and Hamilton twice overturned mid-season points deficits to claim consecutive titles again in 2017 and 2018. Hamilton won his third and fourth titles in a row in 2019 and 2020, respectively, equalling Schumacher''s record of seven drivers'' titles.

Hamilton has been credited with furthering Formula One''s global following by appealing to a broader audience outside the sport, in part due to his high-profile lifestyle, environmental and social activism and his exploits in music and fashion. He has become a prominent advocate in support of activism to combat racism and push for increased diversity in motorsport. Hamilton was listed in the 2020 issue of Time as one of the 100 most influential people globally and was knighted in the 2021 New Year Honours. Hamilton was born on 7 January 1985 in Stevenage, Hertfordshire, England.[2] His father, Anthony Hamilton, is black, while his mother, Carmen Larbalestier, is white, making him mixed-race;[7] Hamilton has identified as black.[8] Hamilton''s parents separated when he was two, after which he lived with his mother and older half-sisters, Samantha and Nicola, until he was twelve.[9] Hamilton then lived with his stepmother, Linda, and his half-brother Nicolas, who is also a professional racing driver.[10][11] Hamilton was raised a Catholic.[12]

Hamilton''s father bought him a radio-controlled car when he was five.[13] Hamilton finished second in the national BRCA championship the following year against adult competition.[14] Being the only black child racing at his club, Hamilton was subjected to racist abuse.[13][15] Hamilton''s father bought him a go-kart for Christmas when he was six and promised to support his racing career as long as he worked hard at school.[16] To support his son, Hamilton''s father took redundancy from his position as an IT manager and became a contractor – sometimes working up to four jobs at a time including employment as a double glazing salesman, dishwasher and putting up signs for estate agents[17] – while still attending his son''s races.[18] Hamilton''s father later set up his own IT company.[19] He continued to be Hamilton''s manager until early 2010.[20][21]

Hamilton was educated at The John Henry Newman School, a voluntary aided Catholic secondary school in Stevenage.[22] At the age of five, Hamilton took up Karate to defend himself as a result of bullying at school.[23] In addition to racing, he played association football for his school team with eventual England international, Ashley Young.[19] Hamilton, an Arsenal fan, said that if Formula One had not worked for him he would have been a footballer or a cricketer, having played both for his school teams.[24] In February 2001 he began studies at Cambridge Arts and Sciences (CATS), a private sixth-form college in Cambridge.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (2, N'BOTTAS', N'Valtteri', 31, N'Mercedes AMG-Petronas', N'Bottas 2013''te Williams ile yarışmaya başlamıştır. 2013''teki takım arkadaşı Pastor Maldanado''dur.İlk sezonunu 4 puanla 17. olarak bitirmiştir.

2014''te takım arkadaşı Felipe Massa''dır. 2014 sezonunda ise ilk podyumlarını elde etmiştir.6 podyumla birlikte 186 puan kazanıp 4.olarak bitirmiştir.

2015 sezonunda ise 2 podyum elde ederek 136 puan kazanıp 5. bitirmiştir.

2016 sezonu ise Williams''taki son sezonu olmuştur.1 podyum ile birlikte 85 puan toplamış ve sezonu 8. bitirmiştir. 2017 sezonunda Mercedes F1 takımına geçen Bottas ilk yarış galibiyetini 2017 Rusya Grand Prix''inde kazanmıştır.Ayrıca o sezon 2017 Avusturya Grand Prix ve 2017 Abu Dabi Grand Prix''lerini kazanıp 305 puanla 3. olarak bitirmiştir.

2018 sezonunu takviminde yer alan 21 yarıştada yer alan Bottas 8''inde podyumda yer aldı, 1 yarışta finişi göremedi. Sezonu 247 puanla 5. sırada tamamladı.

2019 sezonuna 2019 Avustralya Grand Prix''sini kazanarak başlayan Bottas o sezonda 3 galibiyet daha alarak 326 puanla 2. olarak bitirmiştir.

Şu anda devam eden 2020 sezonunda ise 2020 Avusturya Grand Prix''ini kazanmıştır.', 8, 48, N'Nastola, Finlandiya', 0, 13, 12, N'FİNLANDİYA', 143, N'Nastola, Finland', N'FINLAND', N'Valtteri Viktor Bottas[4] (Finnish pronunciation: [''??lt?e?i ''bot??s]; born 28 August 1989) is a Finnish racing driver currently competing in Formula One with Mercedes, racing under the Finnish flag. Having previously driven for Williams from 2013 to 2016. Bottas has won nine races, three in 2017, four in 2019 and two in 2020, since joining Mercedes. Valtteri was born in Nastola, Finland on 28 August 1989 to Rauno Bottas and Marianne Välimaa. His father owns a small cleaning company, and his mother is an undertaker.[5][6] He was educated in Heinola. Bottas served in the army briefly, which is mandatory for adult males in Finland.[7] His military rank is Lance corporal.Bottas continued driving at Mercedes alongside Hamilton for 2020, having agreed a one year extension to his contract during the 2019 season.[35] He set the fastest time in pre-season testing at the Circuit de Barcelona-Catalunya.

Bottas took pole position at the season-opening Austrian Grand Prix and led the race from start to finish.[36] Prior to the Styrian Grand Prix, it was revealed that Bottas and his team Mercedes were under investigation by the FIA for potentially breaching COVID-19 safety protocols after he returned home to Monaco. Whilst it was initially reported that Mercedes would receive warning letters,[37] Bottas and Mercedes were eventually cleared of any wrongdoing.[38] Bottas qualified fourth in wet conditions for the Styrian Grand Prix and went on to finish second in the race behind Hamilton, cutting his championship lead to six points.[39] Bottas qualified second behind Hamilton at the Hungarian Grand Prix, but made a false start and lost four places at the first corner. He was able to recover to third place by the end of the Grand Prix, but lost the lead of the championship to Hamilton.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (3, N'LECLERC', N'Charles', 23, N'Scuderia Ferrari- Mission Winnow', N'Leclerc 2005 yılında karting yarışları ile kariyerine başladı. 2005, 2006 ve 2008 yıllarında Fransa PACA şampiyonasını kazandı.2017 F2 şampiyonasında 1.olarak 2018 sezonunda Sauber-Ferrari takımında yer aldı.[2] Takvimde yer alan 21 yarışa katılan Leclerc 10 yarışta ilk 10''da yer aldı, 5 yarışta finişi göremedi. Sezonu 39 puanla 13. sırada tamamladı.

2019 yılı için Ferrari ile anlaştı.[1] 21 yarış sonucunda sezonu 264 puanla 4. olarak Sebastian Vettel''in bir sıra önünde tamamladı. Ayrıca 4 kez dünya şampiyonu Alman pilottan daha fazla yarış kazanarak (Leclerc 2, Vettel 1 yarış kazandı.) Formula 1''in ilerleyen yıllarında söz sahibi olacağının sinyallerini verdi.', 2, 12, N'Monte Carlo, Monaco', 0, 4, 7, N'MONACO', 55, N'Monte Carlo,Monaco', N'MONACO', N'Charles Marc Hervé Perceval Leclerc[3] (French pronunciation: ?[?a?l l?kl??]; born 16 October 1997) is a Monégasque racing driver, currently racing in Formula One for Scuderia Ferrari, under the Monégasque flag. Leclerc won the GP3 Series championship in 2016 and the FIA Formula 2 Championship in 2017.

Leclerc made his Formula One debut in 2018 for Sauber, a team affiliated with Ferrari, for which he was part of Ferrari Driver Academy. With Sauber having finished last the year before, Leclerc led the charge to improve the finishing position in the constructors'' championship to eighth, being the higher ranked of the two Sauber drivers.

Starting from 2019 and contracted until the end of the 2024 season, Leclerc is currently driving for Ferrari. He became the second-youngest driver to qualify on pole position in Formula One at the 2019 Bahrain Grand Prix. The 2019 season also saw Leclerc take his first career win in Belgium, followed by winning his first Italian Grand Prix as a Ferrari driver the week after. He won the Pole Trophy in the 2019 season becoming the youngest driver ever and the first non-Mercedes driver to win it since the trophy''s inception in 2014.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (4, N'VETTEL', N'Sebastian', 33, N'Scuderia Ferrari- Mission Winnow', N'Sebastian Vettel (3 Temmuz 1987; Heppenheim, Hesse), Alman Formula 1 pilotu. 2020 sezonunda Scuderia Ferrari ile yarışmaktadır.[1] 2021 sezonundan itibaren Aston Martin takımıyla yarışacaktır.

2006 Türkiye Grand Prix hafta sonunda, Cuma günkü antrenman seansında, 19 yaş 53 günlükken, piste Sauber takımının üçüncü pilotu olarak piste çıkan Vettel, Formula 1 tarihinin en genç pilotu unvanını kazanmıştır.17 Haziran 2007 tarihinde koşulan Birleşik Devletler Grand Prix''inde, "bir Formula 1 yarışında start alan en genç 6. pilot" unvanını kazanmakla kalmamış, aynı yarışta "bir Formula 1 yarışında puan alan en genç pilot" rekorunu da kırmıştır. 30 Eylül 2007 tarihindeki Çin Grand Prix''ine bir ara liderlik eden Vettel, bu yarışta da "bir Formula 1 yarışına liderlik eden en genç pilot" rekorunu kırmıştır. 2008 İtalya Grand Prix''inde "bir Formula 1 yarışında pol pozisyonunu kazanan en genç pilot" ve "bir Formula 1 yarışını kazanan en genç pilot" rekorlarını kıran Vettel, "farklı iki takımda yarış kazanan en genç pilot" rekoruna da sahiptir. Vettel Abu Dabi Grand Prix''i sonunda 2010 yılında pilotlar şampiyonluğuna ulaşarak "F1 şampiyonu olan en genç pilot" unvanını Lewis Hamilton''ın elinden almış ve yeni bir rekorun sahibi olmuştur. Bir anlamda rekorların adamı olan Michael Schumacher''in izinden gittiğini göstermiştir. 2011 sezonunda 2011 Formula 1 sezonu''nu domine ederek bitime beş yarış kala şampiyonluğunu ilan etmiştir.', 53, 121, N'Heppenheim, Batı Almanya', 4, 38, 57, N'ALMANYA', 256, N'Heppenheim, West Germany', N'GERMANY', N'Sebastian Vettel (German pronunciation: [ze''basti?an ''f?tl?]; born 3 July 1987)[3] is a German racing driver who competes in Formula One for Aston Martin, having previously driven for BMW Sauber, Toro Rosso, Red Bull and Ferrari. Vettel has won four World Drivers'' Championship titles which he won consecutively from 2010 to 2013. The sport''s youngest World Champion, as of 2020, Vettel has the third most race victories (53) and podium finishes (121) and the fourth most pole positions (57).[4][5][6]

Vettel started his Formula One career as a test driver for BMW Sauber in 2006, making a one-off racing appearance in 2007. Part of the Red Bull young-driver programme, Vettel appeared for Toro Rosso later that year and was kept as a full-time driver for 2008. Vettel was promoted to Red Bull in 2009. With Red Bull, Vettel won four consecutive titles from 2010 to 2013, the first of which made him the sport''s youngest World Champion, setting the records for the most consecutive race wins (9) and race wins in a single season (13).[7][8] Vettel signed for Ferrari for 2015 and became Mercedes'' and Lewis Hamilton''s closest challenger in two title fights in 2017 and 2018, although he finished both years as runner-up.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (5, N'VERSTAPPEN', N'Max', 23, N'Red Bull Racing-Honda', N'Max Emilian Verstappen (d. 30 Eylül 1997, Hasselt, Belçika), Hollandalı Formula 1 pilotudur. Babası Jos Verstappen de eski bir Formula 1 pilotu olan Max Verstappen sezon içinde geçtiği Red Bull Racing kokpitinde katıldığı ilk yarış olan 2016 İspanya Grand Prix''ini kazanarak kariyerinin ilk yarış galibiyetini kazınırken Formula 1 tarihinin yarış kazanan en genç pilotu unvanını da ele geçirmiştir. 2014''te Verstappen Scuderia Toro Rosso takımıyla anlaşmıştır. Carlos Sainz Jr. ile beraber yarışmışlardır. 2016''da Red Bull Racing''e geçmiştir. Red Bull''da takım arkadaşı Alexander Albon''dur. Yarış numarası olarak 33''ü seçmiştir.

2018 sezonunu takviminde yer alan 21 yarışta da yer alan Verstappen 2 yarışta birinci oldu. 21 yarışın 10''unda podyumda yer aldı, 3 yarışta finişi göremedi. Sezonu 249 puanla 4. sırada tamamladı.', 9, 35, N'Hasselt, Belçika', 0, 8, 2, N'HOLLANDA', 107, N'Hasselt, Belgium', N'BELGIUM', N'Max Emilian Verstappen (Dutch pronunciation: [m?ks e?''milij?n v?r''st?p?(n)]; born 30 September 1997) is a Belgian-Dutch[3] racing driver currently competing in Formula One, under the Dutch flag, with Red Bull Racing. At the 2015 Australian Grand Prix, when he was aged 17 years, 166 days, he became the youngest driver to compete in Formula One. He holds several other "firsts" in Formula One racing.

After spending the 2015 season with Scuderia Toro Rosso, he started his 2016 campaign with the Italian team before being promoted to parent team Red Bull Racing after four races as a replacement for Daniil Kvyat. At the age of 18, he won the 2016 Spanish Grand Prix on his debut for Red Bull Racing, becoming the youngest-ever driver and the first Dutch driver to win a Formula One Grand Prix.[4]

Over the course of the next four seasons he achieved another nine race victories, including the first for a Honda-powered driver since 2006, and three pole positions. He finished the 2019 and 2020 championships in third place. Verstappen is due to remain at Red Bull until the end of the 2023 season after signing a contract extension.[5]

He is the son of former Formula One driver Jos Verstappen.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (6, N'ALBON', N'Alexander', 24, N'Red Bull Racing-Honda', N'Profesyonel pilotluğa 2012 yılında Formula Reanualt 2.0''da başlayan Albon, 2013 ve 2014''te aynı klasmanda yarışmıştır. 2015''te Avrupa Formula 3 Şampiyonası''nı yedinci bitirip, 2016''da GP3''e geçmiştir. GP3''te ikinci olarak bir sonraki yıl ART Grand Prix adına Formula 2''de yarışıp onuncu olmuştur. 2018 Formula 2 sezonunda DAMS adına 4 yarış kazanarak George Russell ve Lando Norris''in ardından üçüncü olmuştur. Bu başarının ardında 2019-20 Formula E sezonu için Nissan e.dams''a geçen Albon, Red Bull Racing''in sürücü sıkıntısı çekmesi nedeniyle 2019 yılı için Scuderia Toro Rosso''ya gitmiştir. Belçika Grand Prix''inde Red Bull Racing''e geçen Albon, kötü bir sezon geçiren Pierre Gasly''nin yerine gelmiştir.', 0, 2, N'Londra, Birleşik Krallık', 0, 0, 0, N'TAYLAND', 36, N'London, United Kingdom', N'THAILAND', N'Alexander Albon Ansusinha (Thai: ????????????? ?????? ??????????, born 23 March 1996) is a British-Thai racing driver, who races under the Thai flag. He is the current reserve and development driver for Red Bull Racing in Formula One having raced for the team from the middle of the 2019 season to the end of the 2020 season. Albon had previously raced in Formula One for Scuderia Toro Rosso throughout the first half of 2019, before being promoted to Red Bull. He was replaced as a race driver by Sergio Pérez at Red Bull for the 2021 season and was subsequently demoted to his current role.

After becoming part of the Red Bull Junior Team in 2012 he was promoted to open-wheel cars in the form of a seat with EPIC Racing during the 2012 Eurocup Formula Renault 2.0 season,[1] finishing 38th out of 49 in his debut year. He stayed in Formula Renault 2.0 for two more seasons having secured a seat with KTR, finishing 16th in the 2013 championship and 3rd in 2014 championship. In 2015 Albon switched to European Formula 3, finishing 7th overall. A year later, ART signed Albon to race alongside Charles Leclerc in the GP3 Series,[2] finishing second in the drivers championship only to his teammate. Albon was given a seat once again by ART in 2017[3] to race in the FIA Formula 2 Championship where he finished his maiden year in 10th position.[4] After making his 2019 Formula One début with Toro Rosso alongside experienced Russian Daniil Kvyat, Albon replaced Pierre Gasly at Red Bull Racing with Gasly taking Albon’s place at Toro Rosso effective from the 2019 Belgian Grand Prix.[5] He took his first podium, and the first podium for a Thai driver, at the 2020 Tuscan Grand Prix.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (7, N'SAINZ Jr', N'Carlos', 26, N'McLaren- Renault', N'2015''te Sainz Scuderia Toro Rosso''yla anlaşmıştır. Takım arkadaşı Max Verstappen idi. 2016''da Verstappen''in Red Bull Racing''e geçmesiyle takım arkadaşı Daniil Kvyat olmuştur. 2017 ve 2018 sezonlarında Renault için yarıştı.[2] 2018 sezonunu takviminde yer alan 21 yarışın 13''ünde ilk 10''a girdi, 2 yarışta finişi göremedi. Sezonu 53 puanla 10. sırada tamamladı.16 Ağustos 2018 tarihinde McLaren takımı Sainz''ın 2019 Formula 1 sezonu''nda McLaren-Renault ile yarışacağını açıkladı.[1]

2019 Formula 1 sezonu''nda McLaren ile 2019 Brezilya Grand Prix''inde 3. olarak ilk podyumunu elde etmiştir.Ve sezonu 96 puanla 6. tamamlamıştır.

2020 Formula 1 sezonu''nda ise 2020 İtalya Grand Prix''inde 2. olarak yine podyum elde etti.12 Mayıs 2020''de Sebastian Vettel''in Ferrari''den ayrılacağı resmîleştikten 2 gün sonra Carlos Sainz, McLaren''dan ayrılıp 2021 Formula 1 sezonu için Scuderia Ferrari''ye katılacağını açıkladı.', 0, 2, N'Madrid, İspanya', 0, 1, 0, N'İSPANYA', 116, N'Madrid, Spain', N'SPAIN', N'Carlos Sainz Vázquez de Castro About this soundaudio (help·info), otherwise known as Carlos Sainz Jr. About this soundaudio (help·info) or simply Carlos Sainz, (born 1 September 1994) is a Spanish racing driver competing in Formula One for Scuderia Ferrari. He is the son of Carlos Sainz, a double World Rally Champion, and the nephew of rally driver Antonio Sainz [es].[3][4][5][6] In 2012 Sainz raced in the British and European Formula 3 championships for Carlin.[7] He raced for DAMS in Formula Renault 3.5 in 2014 winning the championship before moving to F1 with Toro Rosso.

Sainz moved to McLaren for the 2019 season, to replace Fernando Alonso, who had left F1 while at the same time ending his contract with Red Bull Racing. At the 2019 Brazilian Grand Prix Sainz took his maiden Formula One podium finish with third. Sainz added another podium by finishing second at Monza the following year before departing for Ferrari at the end of that season.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (8, N'NORRIS', N'Lando', 21, N'McLaren- Renault', N'Lando Norris İngiliz-Belçika uyruklu Formula 1 sürücüsüdür. 2017 Formula 3 Avrupa Şampiyonası şampiyonudur. 2019 Avustralya Grand Prix''inden beri McLaren sürücüsüdür.', 0, 1, N'Bristol,İngiltere', 0, 1, 0, N'BİRLEŞİK KRALLIK', 34, N'Bristol, ENGLAND', N'ENGLAND', N'Lando Norris (born 13 November 1999) is a Belgian-British[4] racing driver currently competing in Formula One with McLaren, racing under the British flag. He won the MSA Formula championship in 2015, and the Toyota Racing Series, Eurocup Formula Renault 2.0 and Formula Renault 2.0 Northern European Cup in 2016. He also received the McLaren Autosport BRDC Award that year. He subsequently won the 2017 FIA Formula 3 European Championship. He was a member of the McLaren Young Driver Programme.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (9, N'RICCIARDO', N'Daniel', 31, N'Renault', N'Ricciardo bir F1 aracıyla ilk kez 2009 yılında Red Bull Racing genç sürücü testlerinde piste çıkmıştı. Testlerin son gününde bir saniyeden büyük bir farkla en hızlı sürücü olmayı başaran Ricciardo, 1.17 barajını geçebilen tek sürücü oldu. Bunun üzerine Red Bull takım patronu Christian Horner, Ricciardo’nun, Hartley yerine takımın yedek sürücü olabileceğini dile getirdi. Ricciardo ve Hartley’nin o sezon hem Red Bull hem de Toro Rosso için yedek sürücülük yapması planlanırken, Hartley Red Bull Junior takımından ayrıldı.

11 Kasım 2010 tarihinde Red Bull, Ricciardo’nun, Yas Marina’da yapılacak olan sezon sonu testinde takımı temsil edecek tek genç sürücü olacağını doğruladı. Ricciardo burada da tek turdaki başarısını göstermeye devam etti ve etkinliği domine etti. Elde ettiği en hızlı tur, 2010 Dünya Şampiyonu Sebastian Vettel’in iki gün önce sıralama turlarında elde ettiği süreden 1.3 saniye daha iyiydi.

Bu testin ardından Ricciardo, 2011 sezonu için Toro Rosso yedek sürücü koltuğunu kapmayı başardı ve o sezon her hafta sonu ilk antrenman seansında piste çıktı. Toro Rosso takım patronu Franz Tost, ‘’Yedek sürücü konumunda başarıya aç bir sürücü olması, şu an pistte yarışan sürücülerimizi (Jaime Alguersuari ve Sébastien Buemi) zinde tutacaktır.’’ Dedi. Ricciardo ayrıca 2011 sezon öncesi testlerinde de Scuderia Toro Rosso ile piste çıktı.

2011 Avustralya GP’sinin ilk antrenman seansını 16. bitiren Ricciardo, deneyimli takım arkadaşı Sebastian Buemi’nin saniyenin onda biri gerisindeydi. Ricciardo Türkiye GP’sinin ıslak zeminde yapılan ilk antrenman turlarında ise Buemi’nin bir sıra önünde sekizinci oldu.', 7, 31, N'Perth, Avustralya', 0, 13, 3, N'AVUSTRALYA', 184, N'Perth, Austrlia', N'AUSTRLIA', N'Daniel Joseph Ricciardo (/r?''k??rdo?/ "Ricardo"; born 1 July 1989) is an Italian-Australian[2] racing driver who is currently competing in Formula One, under the Australian flag, for McLaren. He made his debut at the 2011 British Grand Prix with the HRT team as part of a deal with Red Bull Racing, for whom he was test driving under its sister team Scuderia Toro Rosso. Ricciardo’s driver number is 3.

Ricciardo joined Toro Rosso in 2012 full time after the team changed its driver lineup and drove a Ferrari-powered car for them in 2012 and 2013. In 2014, Ricciardo was promoted to Red Bull as a replacement for the retired Mark Webber alongside multiple time world champion Sebastian Vettel.[3] In his first season with Red Bull under Renault power, Ricciardo finished third in the championship with his first three Formula One wins, in Canada,[4] Hungary,[5] and Belgium.[6]

After two years without victory, Ricciardo returned to the top of the podium at the 2016 Malaysian Grand Prix, eventually sealing third in the championship for the second time in three years at the 2016 Mexican Grand Prix.[7][8] He has since added victories at the Azerbaijan Grand Prix in 2017 and the Chinese and Monaco Grands Prix in 2018. After 2018, Ricciardo signed with Renault and has raced for them in the 2019 and 2020 seasons. He is due to join McLaren for the 2021 and 2022 Formula One seasons alongside Lando Norris.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (10, N'OCON ', N'Esteban', 24, N'Renault', N'Esteban Ocon (d. 17 Eylül 1996), Fransız Formula 1 yarış pilotu. Renault takımı için yarışmaktadır. İlk yarışını 2016 Belçika Grand Prix''de Manor Racing adına Rio Haryanto''nun yerine geçmesiyle yaptı. Ocon, Mercedes-Benz sürücü geliştirme programının bir parçasıdır.[2] Kariyer başlangıcından itibaren en uzun süre yarış tamamlayan sürücü rekorunu 27 yarış ile elinde tutmaktadır.2017 ve 2018 sezonlarında Force India takımıyla yarıştı.[3] 2018 sezonunu takviminde yer alan 21 yarışın 10''unda ilk 10''a girdi, 5 yarışta finişi göremedi, 1 yarışta diskalifiye oldu. Sezonu 49 puanla 12. sırada tamamladı.29 Ağustos 2019 tarihinde Renault Esteban Ocon''un 2020 sezonunda Nico Hülkenberg''ün yerine yarışacağını açıkladı.', 0, 1, N'Normandy,Fransa', 0, 0, 0, N'FRANSA', 50, N'Normandy,France', N'FRANCE', N'Esteban José Jean-Pierre Ocon-Khelfane[1][non-primary source needed] (born 17 September 1996) is a French racing driver who competes for Alpine in Formula One , racing under the French flag. He made his Formula One debut for Manor Racing in the 2016 Belgian Grand Prix, replacing Rio Haryanto. Ocon was a part of the Mercedes-Benz driver development programme until his move to Renault.[4] In 2020, he achieved his first podium in Formula One by finishing second at the 2020 Sakhir Grand Prix.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (11, N'PEREZ', N'Sergio', 30, N'Racing Point-Mercedes', N'Guadalajara, Jalisco da doğmuştur. Antonio Pérez Garibay ve Marilú Pérez''in en küçük çocuğudur. Aynı zamanda kardeşleri vardır[3].

2018 sezonunu takviminde yer alan 21 yarışta da yer alan Pérez 1 kez podyuma çıktı, 12 yarışta ilk 10''da yer aldı, 2 yarışta finişi göremedi. Sezonu 62 puanla 8. sırada tamamladı.

Ağustos 2020''de COVID-19''u yendiğini duyurdu.[4] 2020 Türkiye Grand Prix''ini 2. sırada tamamladı. 2020 Sakhir Grand Prix''ini kazanarak kariyerindeki ilk galibiyetini aldı.', 1, 10, N'Guadalajara,Meksika', 0, 4, 0, N'MEKSİKA', 181, N'Guadalajara,Mexico', N'MEXICO', N'Sergio Pérez Mendoza (Spanish: [''se?xjo ''pe?es] (About this soundlisten); born 26 January 1990),[2] nicknamed "Checo",[3] is a Mexican racing driver who races in Formula One for Red Bull Racing, having previously driven for Sauber, McLaren, Force India and Racing Point. He won his first Formula One Grand Prix at the 2020 Sakhir Grand Prix, breaking the record for the number of starts before a race win at 190.[4]

Pérez was a member of the Ferrari Driver Academy until 2012. He made his Formula One debut driving for Sauber during the 2011 season. He took his first Formula One podium at the 2012 Malaysian Grand Prix with Sauber. Due to his young age and performance, he was referred to as "The Mexican Wunderkind".[5] Pérez joined McLaren for the 2013 season, but the team did not score a single podium finish. Subsequently, for the 2014 season, the team decided to replace Pérez with Kevin Magnussen.[6][7]

Force India signed Pérez in for the 2014 season with a €15  million deal.[8] He remained with Force India after they went into administration in the latter half of 2018, and then their reformation as Racing Point F1 in 2019. In 2019, Racing Point signed a three-year extension with Pérez.[9] However, he later announced he would be leaving the team at the end of the 2020 season because the team decided to replace Pérez with Sebastian Vettel. He was instead signed for Red Bull Racing for the 2021 season.[10]')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (12, N'STROLL', N'Lance', 22, N'Racing Point-Mercedes', N'2014 yılı İtalya F4 şampiyonu, 2015 Toyota Yarış Serisi şampiyonu, 2016 FIA Avrupa Formula 3 şampiyonu. 2010-2015 yılları arasında Ferrari Sürücü Akademisi''nin bir parçasıydı. 2017 yılında Williams-Mercedes takımına katılarak Formula Bir''e adım attı.[3] İlk podyumunu 2017 Azerbaycan Grand Prix yarışında 3. sırada bitirerek elde etti. Çaylak sezonundaki bu üçüncülük ile podyuma çıkan en genç ikinci sürücü oldu. 2018 sezonunu takviminde yer alan 21 yarışın 2''sinde ilk 10''a girdi, 2 yarışta finişi göremedi. Sezonu 6 puanla 18. sırada tamamladı.

30 Kasım 2018 tarihinde Racing Point Force India takımı Stroll''ün 2019 Formula 1 sezonu''nda Racing Point-Mercedes ile yarışacağını açıkladı.', 0, 3, N'Montreal,Quebec,Kanada', 0, 0, 1, N'KANADA', 74, N'Montreal,Quebec, Canada', N'CANADA', N'Lance Stroll (born 29 October 1998) is a Belgian-Canadian[2] racing driver competing under the Canadian flag in Formula One. He is due to drive for Aston Martin in 2021, having previously driven for Williams and Racing Point. He was Italian F4 champion in 2014, Toyota Racing Series champion in 2015, and 2016 FIA European Formula 3 champion. He was part of the Ferrari Driver Academy from 2010 to 2015. He achieved his first podium finish, a 3rd place, at the 2017 Azerbaijan Grand Prix, becoming the second-youngest driver to finish an F1 race on the podium and the youngest (and latest as of the end of 2020) to do so during his rookie season.[3] At the 2020 Turkish Grand Prix, Stroll took his first pole position in Formula One. Stroll also competed in endurance racing, taking part in the 24 Hours of Daytona in 2016 and 2018.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (13, N'GIOVINAZZI', N'Antonio', 26, N'Alfa Romeo', N'Antonio Giovinazzi (d. 14 Aralık 1993), İtalyan yarış pilotu. Formula 1 kariyerine Pascal Wehrlein''ın geçici olarak yerini alarak 2017 sezonununda başlamıştır.[1] 2019''dan itibaren Alfa Romeo için yarışmaktadır.2013 Avrupa Formula 3 sezonunda 17. olmuştur. Aynı yıl Britanya Formula 3 Şampiyonasını ikinci bitirmiştir. 2014 ve 2015''te Avrupa Formula 3 Şampiyonasında altıncı ve ikinci olmuştur. Bu sayede 2016 yılında GP2''ye geçis yapan Giovinazzi, bu sezonu 5 yarış kazanarak ikinci bitirmiştir. Bu sayede 2017 Formula 1 sezonunun ilk 2 yarışında sakatlanan Pascal Wehrlein''ın yerini almıştır. Wehrlein geri geldiğinde, Giovinazzi 2017 sezonunu HAAS için antrenman seanslarında test sürücülüğü yapmıştır. 2018''de Sauber ve Ferrari için test sürücülüğü yapmıştır. 2019 Formula 1 Sezonunda Alfa Romeo takımı için yarış pilotluğu yapmaya başlamıştır.', 0, 0, N'Martina Franca, İtalya', 0, 0, 0, N'İTALYA', 38, N'Martina Franca, Italy', N'ITALY', N'Antonio Maria Giovinazzi (Italian pronunciation: [an''t??njo d?ovi''nattsi]; born 14 December 1993) is an Italian racing driver currently competing in Formula One for Alfa Romeo Racing, racing under the Italian flag. He was the 2015 FIA Formula 3 European Championship runner-up and raced with Prema in the 2016 International GP2 Series, again finishing runner-up with five wins and eight overall podiums. Giovinazzi was chosen by Scuderia Ferrari to be their third and reserve driver for the 2017 season. He made his competitive debut for Sauber at the 2017 Australian Grand Prix, replacing the injured Pascal Wehrlein. He also replaced Wehrlein at the following Chinese Grand Prix as Wehrlein continued his recovery.[3] Giovinazzi signed a contract to race full-time for Alfa Romeo Racing in 2019.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (14, N'RAIKKONEN', N'Kimi', 41, N'Alfa Romeo', N'Kimi-Matias Räikkönen (d. 17 Ekim 1979), 2007 Dünya şampiyonu Formula 1 pilotu. Finlandiya Espoo''da doğmuştur. Şampiyonayı uzun süre lider götüren Lewis Hamilton''ı son yarışta geçmeyi başarmış ve 110 puanla Dünya Şampiyonu olmuştur. 28 yıl, 4 günlük iken şampiyon olarak tüm zamanların en genç şampiyon olan 7. ismi olmuştur. 2001 yılında F1 Sauber takımı ile Formula 1 pilotluğuna başlamıştır. 2002 yılında Mika Hakkinen''den boşalan koltuğu devralmış ve McLaren Mercedes takımına geçmiştir. Kendisi 2005 Türkiye Grand Prix''sinin birincisi olarak İstanbul Park''ta gerçekleşen yarışların ilkini kazanan kişi olmuştur. 2003 ve 2005 yıllarında dünya ikinciliğini elde etmiştir. 2003''te Michael Schumacher ile birincilik mücadelesine girmiş, 2005''te ise Fernando Alonso ile birincilik için yarışmıştır ancak çeşitli sorunlardan dolayı birinci olamamıştır. Kimi''ye taraftarları ve çevresince soğukkanlılığı ve sakinliğinden dolayı "Buz adam" (Iceman) lakabı takılmıştır.

Daha sonra Ferrari Kimi Räikkönen ile 2007-2009 yılları arasında yarışacağını, 2007-2008 yıllarında kendisine Felipe Massa''nın eşlik edeceğini açıklamıştır. Çok çekişmeli geçen 2007 Formula 1 sezonunda Ferrari takımıyla 1 puan farkla Dünya Şampiyonu unvanını kazandı. 2009 yılında sözleşmesi Ferrari tarafından 20 milyon euro karşılığında karşılıklı olarak feshedilmiş, yerini Fernando Alonso''ya bırakarak Formula 1''den ayrılmıştır. Raikkonen 31 Temmuz 2004 tarihinde eski İskandinavya Güzellik Kraliçesi seçilen Jenni Dahlman ile evlenmiş. 2013''ün başında ayrılıklarını açıklamışlardır. 2012''de Lotus F1 Takımı ile Formula 1''e geri dönerek İstikrar Abidesi unvanını aldıktan sonra 2014 yılı için Ferrari''de boşalan Felipe Massa''nın koltuğu için 2 yıllık bir anlaşma imzalamıştır. 28 Ocak 2015 tarihinde kız arkadaşı Minttu Virtanen''den "Robin" adında bir oğlu dünyaya geldi.2018 yılı Ferrari ile son sezonudur.2019''dan itibaren Alfa Romeo ile yarışmaktadır.2020 Eifel Grand Prix ile birlikte 323 start alan Räikkönen Rubens Barrichello''nun en çok Grand Prix startı rekorunu kırmıştır.

"Yaşlı kurt" olarak adlandırılan Kimi Räikkönen günümüzde Scuderia Ferrari''nin son pilotlar şampiyonudur.', 21, 103, N'Espoo, Finlandiya', 1, 46, 18, N'FİNLANDİYA', 325, N'Espoo, Finland', N'FINLAND', N'Kimi-Matias Räikkönen[1] (Finnish pronunciation: [''kimi ''m?ti?s ''ræik?ønen]; born 17 October 1979), nicknamed "The Iceman", is a Finnish racing driver currently driving in Formula One for Alfa Romeo Racing, racing under the Finnish flag. Räikkönen won the 2007 Formula One World Championship driving for Scuderia Ferrari. In addition to this title, he also finished second overall in 2003 and 2005, and third in 2008, 2012 and 2018. With 103 podium finishes, he is one of only five drivers to have taken over 100 podiums.[4] Räikkönen has won 21 Grands Prix, making him the most successful Finnish driver in terms of Formula One race wins, and is the only driver to win in the V10, V8 and the V6 turbo hybrid engine eras.[5] After nine seasons racing in Formula One he left the sport to compete in the World Rally Championship in 2010 and 2011, returning to Formula One from 2012 onward. He is known for his reserved personality and reluctance to participate in PR events. At the 2020 Eifel Grand Prix, he broke the record for most starts in Formula One.

Räikkönen entered Formula One as a regular driver for Sauber-Petronas in 2001, having competed in only 23 car races previously. He joined McLaren-Mercedes in 2002, and became a title contender by finishing runner-up in the championship to Michael Schumacher in 2003, and Fernando Alonso in 2005. Räikkönen''s seasons at McLaren were plagued by severe unreliability from his cars, prompting a move to Ferrari in 2007. This change saw him crowned Formula One World Drivers'' Champion that season, pipping both McLaren drivers – Lewis Hamilton and Fernando Alonso – to the title by one point. In 2008 he equalled the record for the greatest number of fastest laps in a season for the second time.

Räikkönen left both Scuderia Ferrari and the sport after the 2009 season, his sole victory that year having come in that season''s Belgian Grand Prix due to driving an uncompetitive Ferrari F60. On his return to Formula One, Räikkönen drove for Lotus in 2012 and 2013, scoring the team''s only victories. In September 2013, Ferrari announced his re-signing on a two-year contract, beginning in the 2014 season.[6] This contract was subsequently extended until the end of the 2018 season. During his second Ferrari stint, Räikkönen scored 26 podiums, two pole positions and a victory at the 2018 United States Grand Prix, 113 Grands Prix after his last victory. Räikkönen finished among the top four overall in the championship on multiple occasions during his second Ferrari stint, finishing his total eight-year long Ferrari career with a third place in the 2018 championship.[7]

Räikkönen left Ferrari at the end of the 2018 season, and moved to Alfa Romeo Racing on a two year contract, Räikkönen is currently contracted to drive for Alfa Romeo until the end of 2021.

In the World Rally Championship, Räikkönen drove a Citroën C4 WRC for the Citroën Junior Team in 2010, and a Citroën DS3 WRC for ICE 1 Racing in 2011. His stint in the WRC saw him beat some more experienced rally drivers with a best result of fifth, a stage win and 10th in the championship in both seasons. Concurrently, Räikkönen also competed in NASCAR,[8] and made his debut for Kyle Busch Motorsports in the Camping World Truck Series.

Forbes magazine listed Räikkönen 36th in their 2008 ''Celebrity 100'' as the 26th highest paid celebrity and fifth highest paid sportsman.[9] The same list in 2009 recorded him as the second highest-paid athlete.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (15, N'MAGNUSSEN', N'Kevin', 28, N'Haas-Ferrari', N'Kevin Jan Magnussen (doğum 5 Ekim 1992) Danimarkalı yarış pilotu, Haas-Ferrari için yarışmaktadır. Ayrıca Jan Magnussen''in oğludur.2014''te Magnussen McLaren için yarışmıştır. 2015''te McLaren test plotu olarak yarışmıştır. 2016 Renault için yarışmakdadır. İlk en hızlı tur zamanına 2018 Singapur Grand Prix''inin 50 turunda 1.41.905 ile elde etmiştir.[2]

2018 sezonunu takviminde yer alan 21 yarışın 11''inde ilk 10''a girdi, 2 yarışta finişi göremedi ve 1 yarışa diskalifiye oldu. Sezonu 56 puanla 9. sırada tamamladı.', 0, 1, N'Roskilde,Danimarka', 0, 1, 0, N'DANİMARKA', 82, N'Roskilde, Denmark', N'DENMARK', N'Kevin Jan Magnussen (born 5 October 1992) is a Danish racing driver currently competing in Formula One for the Haas F1 Team.[1] The son of four-time Le Mans GT class winner, GM factory driver and former Formula One driver Jan Magnussen, Kevin Magnussen came up through McLaren Formula One team''s Young Driver Programme and drove for McLaren in the 2014 Formula One World Championship, before a stint with Renault in 2016. Magnussen has driven for Haas since 2017 and is due to leave the team at the end of the 2020 season.[2][3] He will move to the WeatherTech SportsCar Championship in 2021 driving for Chip Ganassi Racing.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (16, N'GROSJEAN', N'Romain', 34, N'Haas-Ferrari', N'2012''de Grosjean Lotus F1 takımı ile beraber yarışmıştır. 2016''da Haas F1 Takımı''na Esteban Gurierrez''in takım arkadaşı olarak katılmıştır. 2017 yılından beri ise Kevin Magnussen ile birlikte Haas takımının iki pilotundan biridir.

2018 sezonunu takviminde yer alan 21 yarışın 7''sinde ilk 10''a girdi, 5 yarışta finişi göremedi ve 1 yarışa diskalifiye oldu. Sezonu 37 puanla 14. sırada tamamladı

2020 Bahreyn Grand Prix''de aracı yüksek hızla bariyerlere çarparak alevler içinde kalmıştır. Mucize eseri Grosjean 53 g kuvvetine maruz kaldığı kazadan sağ salim kurtulmuştur.', 0, 10, N'Cenevre,İsviçre', 0, 1, 0, N'FRANSA', 169, N'Geneva, Switzerland', N'SWITZERLAND', N'Romain Grosjean (French: [??m?˜ g?o??˜]; born 17 April 1986) is a racing driver with French-Swiss nationality who most recently raced under the French flag for the Haas F1 Team.[1]

He dominated the 2005 French Formula Renault championship at his first attempt and joined the Renault young driver programme. He was the 2007 Formula 3 Euro Series drivers'' champion. In 2008 he became the inaugural GP2 Asia Series champion and came 4th in his first year in GP2. In 2009 he made his Formula One debut for Renault at the European Grand Prix and came 4th again in GP2 despite missing the final eight races. After being dropped by Renault he returned to junior formulae, winning the 2010 Auto GP championship at the first attempt and winning the 2011 GP2 Asia Series and GP2 Series becoming the first – and as of 2018, only – two-time GP2 Asia champion and the only driver to hold both the GP2 Asia series and main GP2 series titles simultaneously. Due to the Asia and Main GP2 series being combined, it is likely that this will remain true for the foreseeable future.

In 2012, Grosjean returned to Formula One with the Lotus F1 Team, alongside Kimi Räikkönen.[2] He took his first Formula One podium at the 2012 Bahrain Grand Prix and took his first fastest lap in the 2012 Spanish Grand Prix. He became the first driver since 1994 to receive a race ban after causing a multi-car pile up, at the 2012 Belgian Grand Prix. In 2013 he remained with Lotus, taking six podiums. He drove for Lotus again alongside Venezuelan Pastor Maldonado in the 2014 and 2015 seasons before moving to Haas from 2016 to 2020. In what would be his final Formula One race, Grosjean survived a dramatic crash during the 2020 Bahrain Grand Prix when his car separated in two and caught fire after penetrating a metal guardrail on the first lap. Grosjean sustained minor burns and credited the halo with saving his life.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (17, N'GASLY', N'Pierre', 24, N'Scuderia AlphaTauri-Honda', N'2017 ve 2018 sezonlarında Scuderia Toro Rosso-Honda takımıyla yarıştı.[1] 2018 sezonunu takviminde yer alan 21 yarışın 5''inde ilk 10''a girdi, 5 yarışta finişi göremedi. Sezonu 29 puanla 15. sırada tamamladı.20 Ağustos 2018 tarihinde Red Bull takımı Gasly''nin 2019 Formula 1 sezonu''nda Red Bull Racing-Honda ile yarışacağını açıkladı.[2]

Belçika Grand Prix''ten önce kötü giden performansı yüzünden Toro Rosso''ya düşürüldü.Yerine Alexander Albon geldi.

Brezilya Grand Prix''te 2. Olarak ilk defa podyuma çıktı.2020 İtalya Monza Grand Prix''sinde ilk birinciliğini aldı.', 1, 2, N'Rouen,Fransa', 0, 2, 0, N'FRANSA', 62, N'Rouen, France', N'FRANCE', N'Pierre Gasly (French pronunciation: ?[pj?? gasli]; born 7 February 1996) is a French racing driver, currently competing in Formula One under the French flag, racing for Scuderia AlphaTauri. He is the 2016 GP2 Series champion, and the runner-up in the 2014 Formula Renault 3.5 Series and the 2017 Super Formula Championship. He made his Formula One debut with Toro Rosso at the 2017 Malaysian Grand Prix.[4] He moved to Red Bull Racing in 2019, before moving back after trading with Alexander Albon from Toro Rosso between the Hungarian and Belgian rounds to partner Daniil Kvyat.[5] Gasly took his maiden Formula One victory at the 2020 Italian Grand Prix while driving for AlphaTauri.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (18, N'KVYAT', N'Daniil', 26, N'Scuderia AlphaTauri-Honda', N'2014''te Kvyat Scuderia Toro Rosso ile yarışmıştır. 2014''te İlk yarışı (19 yaş) Avustralya Grand Prix''sinde 9. olarak Sebastian Vettel''in kırdığı en genç puan alan sürücü (21 yaş 91 gün) rekorunu kırmıştır. Bu rekor sonra Max Verstappen tarafından yeniden kırılmıştır. Kvyat''ın performansından memnun olan Red Bull Racing''e geçmiştir. 2016''da Rusya Grand Prix''inde yaptığı disiplinsizlik nedeniyle tekrar Toro Rosso''ya geçmiştir.

29 Eylül 2018 tarihinde Toro Rosso, Red Bull Racing takımı ile tekrar anlaştığı açıklanmıştır.', 0, 3, N'Ufa,Rusya', 0, 1, 0, N'RUSYA', 98, N'Ufa, Russia', N'RUSSIA', N'Daniil Vyacheslavovich Kvyat (Russian: ?????´? ???????´????? ????, IPA: [d?n??''il v??t??''slav?v??t? kv?at], born 26 April 1994) is a Russian racing driver who last competed in Formula One for Scuderia AlphaTauri, racing under the Russian flag. He became the second Formula One driver from Russia and is the most successful of the three Russian drivers to date.

He was runner-up at the 2012 Eurocup Formula Renault 2.0, and a champion in 2012 Formula Renault 2.0 Alps Series and 2013 GP3 Series. He made his debut in Formula One as a Toro Rosso driver in 2014 finishing 15th in the World Championship. He then moved on to Red Bull Racing to partner Daniel Ricciardo for the 2015 season. He scored his first Formula One podium finish at the 2015 Hungarian Grand Prix, finishing second behind Sebastian Vettel. In his first season with Red Bull Racing, Kvyat finished 7th in the Drivers'' Championship, ahead of his teammate. He started the 2016 season with Red Bull Racing, scoring his second podium, finishing third at the 2016 Chinese Grand Prix. However, following a controversial collision during the opening lap of his home race in Sochi, Kvyat was demoted to Toro Rosso ahead of the 2016 Spanish Grand Prix, where he finished the season and was retained by the team for the next season. Although consistently demonstrating solid qualifying performances in 2017, his season was plagued by various problems, including several retirements in races where he could have scored points. After the 2017 United States Grand Prix, Kvyat and Red Bull parted ways, effectively terminating his contract. Kvyat spent 2018 as a development driver for Scuderia Ferrari, before being re-signed by Toro Rosso for the 2019 season. At the 2019 German Grand Prix Kvyat claimed the third podium of his career by finishing third; this was also Scuderia Toro Rosso''s second podium finish after they won the 2008 Italian Grand Prix with Sebastian Vettel.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (19, N'RUSSELL', N'George', 22, N'Williams-Mercedes', N'George Russell (d. 15 Şubat 1998), Britanyalı Formula 1 pilotu. 2017''de GP3, 2018''de Formula 2 şampiyonu olduktan sonra 2019''da Williams takımıyla Formula 1''de yarışmaya başlamıştır.', 0, 0, N'Norfolk,İngiltere', 0, 0, 0, N'BİRLEŞİK KRALLIK', 36, N'Norkfolk, England', N'ENGLAND', N'George William Russell (born 15 February 1998) is a British racing driver currently competing in Formula One, contracted to Williams.[3] He was the 2018 FIA Formula 2 Champion for ART and the 2017 GP3 Series Champion. Following his Formula 2 championship win, Russell signed for Williams in 2019, making his début at the 2019 Australian Grand Prix, alongside Robert Kubica. Russell is contracted to drive for Williams until the conclusion of the 2021 season, although he stood in for Lewis Hamilton at Mercedes at the 2020 Sakhir Grand Prix.')
INSERT [dbo].[Pilotlar] ([ID], [Soyad], [Ad], [Yas], [Takim], [Biyografi], [YarisGalibiyet], [PodyumSayi], [DogumYeri], [SampiyonlukSayisi], [EnHizliTur], [Pole], [Ulke], [YarisSayisi], [DogumYeriENG], [UlkeENG], [BiyografiENG]) VALUES (20, N'LATIFI', N'Nicholas', 25, N'Williams-Mercedes', N'29 Haziran 1995''te doğan Nicholas Latifi, SOFİNA Foods''un CEO''su Michael Latifi''nin oğludur. Profesyonel pilotluğa 2012 yılında, İtalyan Formula 3 Şampiyonasında başlamıştır. 2014 yılında Avrupa Formula 3 Şampiyonası''nı 10. bitirip, bir sonraki yıl GP2''ye geçmiştir. Klasmandaki ilk iki yıkı (2015 ve 2016), pek başarılı geçmemiştir. 2017 yılında GP2 Formula 2 olunca DAMS takımında 1 yarış kazanarak sezonu 5. bitirmiştir. 2018''de yine 1 yarış kazanmasına rağmen sezonu 9. bitirmiştir.

Latifi, 2019 Formula 2 Şampiyonası''nı 4 yarış kazanarak Nyck de Vries''in ardından ikinci bitirmiştir. Bu başarı, onu 2020 yılında Williams''ın ikinci pilot koltuğuna getirmiştir. Şu ana kadar 6 kez Formula 1''de yarışan Latifi, henüz bir puan alamamıştır.', 0, 0, N'Montreal,Quebec,Kanada', 0, 0, 0, N'KANADA', 15, N'Montreal, Quebec, Canada', N'CANADA', N'Nicholas Daniel Latifi (born 29 June 1995)[3][4] is an Iranian-Canadian racing driver currently competing in Formula One for Williams under the Canadian flag. He made his Formula One debut at the 2020 Austrian Grand Prix.')
GO
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (1, NULL, N'Lewis HAMILTON', 347)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (2, NULL, N'Valtteri BOTTAS', 223)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (3, NULL, N'Max VERSTAPPEN', 214)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (4, NULL, N'Sergio PEREZ', 125)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (5, NULL, N'Daniel RICCIARDO', 119)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (6, NULL, N'Carlos SAINZ', 105)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (7, NULL, N'Alexander ALBON', 105)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (8, NULL, N'Charles LECLERC', 98)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (9, NULL, N'Lando NORRIS', 97)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (10, NULL, N'Pierre GASLY', 75)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (11, NULL, N'Lance STROLL', 75)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (12, NULL, N'Esteban OCON', 62)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (13, NULL, N'Sebastian VETTEL', 33)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (14, NULL, N'Daniil KVYAT', 32)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (15, NULL, N'Kimi RAIKKONEN', 4)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (16, NULL, N'Antonio GIOVINAZZI', 4)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (17, NULL, N'George RUSSELL', 3)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (18, NULL, N'Romain GROSJEAN', 2)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (19, NULL, N'Kevin MAGNUSSEN', 1)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (20, NULL, N'Nicholas LATIFI', 0)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (21, N'Mercedes AMG-PETRONAS', NULL, 573)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (22, N'Red Bull Racing', NULL, 319)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (23, N'McLaren', NULL, 202)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (24, N'Racing Point', NULL, 195)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (25, N'Renault', NULL, 181)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (26, N'Scuderia Ferrari', NULL, 131)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (27, N'AlphaTauri', NULL, 107)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (28, N'Alfa Romeo Racing', NULL, 8)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (29, N'Haas F1 Team', NULL, 3)
INSERT [dbo].[PuanDurumu] ([ID], [Takim], [Pilot], [Puan]) VALUES (30, N'Williams', NULL, 0)
GO
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (1, N'Merdes AMG-PETRONAS', N'Brackley , Birleşik Krallık', N'Toto Wolff', N'James Allison', N'W11', N'Mercedes', N'1970', 7, N'1 (x106)', 118, 75, N'Brackley , United Kingdom')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (2, N'Scuderia Ferrari Mission Winnow', N'Maranello, Italya', N'Mattia Binotto', N'	Simone Resta', N'SF1000', N'	Ferrari', N'	1950', 16, N'1 (x238)', 221, 253, N'Maranello, Italy')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (3, N'Aston Martin Red Bull Racing', N'Milton Keynes, Birleşik Krallık', N'Christian Horner', N'	Pierre Waché', N'	RB16', N'	Honda', N'1997', 4, N'1 (x64)', 63, 68, N'Milton Keynes, United Kingdom')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (4, N'McLaren F1 Team', N'Woking, Birleşik Krallık', N'Andreas Seidl', N'James Key', N'MCL35', N'Renault', N'	1966', 8, N'1 (x182)', 155, 158, N'Woking, United Kingdom')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (5, N'	Renault DP World F1 Team', N'Enstone, Birleşik Krallık', N'Cyril Abiteboul', N'-', N'R.S.20', N'Renault', N'1986', 2, N'1 (x20)', 20, 15, N'Enstone , United Kingdom')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (6, N'BWT Racing Point F1 Team', N'Silverstone, Birleşik Krallık', N'Otmar Szafnauer', N'Andrew Green', N'RP20', N'BWT Mercedes', N'2018', 0, N'1 (x1)', 1, 0, N'Silverstone, United Kingdom')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (7, N'Alfa Romeo Racing ORLEN', N'Hinwil, İsviçre', N'Frédéric Vasseur', N'Jan Monchaux', N'C39', N'Ferrari', N'1993', 0, N'1 (x1)', 1, 5, N'Hinwil, Switzerland')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (8, N'Haas F1 Team', N'Kannapolis, Birleşik Devletler', N'Guenther Steiner', N'Rob Taylor', N'	VF-20', N'Ferrari', N'2016', 0, N'4 (x1)', 0, 2, N'Kannapolis, United States')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (9, N'Scuderia AlphaTauri Honda', N'Faenza, Italya', N'Franz Tost', N'Jody Egginton', N'AT01', N'Honda', N'1985', 0, N'1 (x1)', 1, 1, N'Faenza, Italy')
INSERT [dbo].[Takimlar] ([ID], [TakimAdi], [TakimMerkezi], [TakimPatronu], [TeknikSef], [Sasi], [GucUnitesi], [KurulusTarihi], [DunyaSampiyonluklari], [EnIyiSonuc], [PolePozisyonu], [EnHizliTur], [MerkezENG]) VALUES (10, N'Williams Racing', N'Grove, Birleşik Krallık', N'Simon Roberts', N'-', N'FW43', N'Mercedes', N'1978', 9, N'1 (x114)', 129, 133, N'Grove, United Kingdom')
GO
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (1, N'Austrian GP', N'Valtteri Bottas', N'Charles Leclerc', N'Lando Norris', N'Lewis Hamilton', N'Carlos Sainz', N'Sergio Perez', N'Pierre Gasly', N'Esteban Ocon', N'Antonio Giovinazzi', N'Sebastian Vettel', N'Nicholas Latifi', N'Daniil Kvyat', N'Alexander Albon', N'Kimi Raikkonen', N'George Russell', N'Romain Grosjean', N'Kevin Magnussen', N'Lance Stroll', N'Daniel Ricciardo', N'Max Verstappen', N'AVUSTURYA', N'Lando Norris', N'Red Bull Ring', CAST(N'2020-07-05' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (2, N'Austrian GP 2', N'Lewis Hamilton', N'Valtteri Bottas', N'Max Verstappen', N'Alexander Albon', N'Lando Norris', N'Sergio Perez', N'Lance Stroll', N'Daniel Ricciardo', N'Carlos Sainz', N'Daniil Kvyat', N'Kimi Raikkonen', N'Kevin Magnussen', N'Romain Grosjean', N'Antonio Giovinazzi', N'Pierre Gasly', N'George Russell', N'Nicholas Latifi', N'Esteban Ocon', N'Charles Leclerc', N'Sebastian Vettel', N'AVUSTURYA', N'Carlos Sainz', N'Red Bull Ring', CAST(N'2020-07-12' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (3, N'Hungarian GP', N'Lewis Hamilton', N'Max Verstappen', N'Valtteri Bottas', N'Lance Stroll', N'Alexander Albon', N'Sebastian Vettel', N'Sergio Perez', N'Daniel Ricciardo', N'Carlos Sainz Jr', N'Kevin Magnussen', N'Charles Leclerc', N'Daniil Kvyat', N'Lando Norris', N'Esteban Ocon', N'Kimi Raikkonen', N'Romain Grosjean', N'Antonio Giovinazzi', N'George Russell', N'Nicholas Latifi', N'Pierre Gasly', N'MACARİSTAN', N'Lewis Hamilton', N'Hungaroring', CAST(N'2020-07-19' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (4, N'British GP', N'Lewis Hamilton', N'Max Verstappen', N'Charles Leclerc', N'Daniel Ricciardo', N'Lando Norris', N'Esteban OCon', N'Pierre Gasly', N'Alex Albon', N'Lance Stroll', N'Sebastian Vettel', N'Valtteri Bottas', N'George Russell', N'Carlos Sainz Jr', N'Antonio Giovinazzi', N'Nicholas Latifi', N'Romain Grosjean', N'Kimi Raikkonen', N'Daniil Kvyat', N'Kevin Magnussen', N'Nico Hulkenber', N'İNGİLTERE', N'Max Verstappen', N'Silverstone', CAST(N'2020-08-02' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (5, N'British GP 2', N'Max Verstappen', N'Lewis Hamilton', N'Valtteri Bottas', N'Charles Leclerc', N'Alex Albon', N'Lance Stroll', N'Nico Hulkenberg', N'Esteban Ocon', N'Lando Norris', N'Daniil Kvyat ', N'Pierre Gasly', N'Sebastian Vettel', N'Carlos Sainz Jr', N'Daniel Ricciardo', N'Kimi Raikkonen', N'Romain Grosjean', N'Antonio Giovinazzi', N'George Russell', N'Nicholas Latifi', N'Kevin Magnussen', N'İNGİLTERE', N'Lewis Hamilton', N'Silverstone', CAST(N'2020-08-09' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (6, N'Spanish GP', N'Lewis Hamilton', N'Max Verstappen ', N'Valtteri Bottas', N'Lance Stroll', N'Sergio Perez', N'Carlos Sainz Jr', N'Sebastian Vettel', N'Alex Albon', N'Pierre Gasly', N'Lando Norris', N'Daniel Ricciardo', N'Daniil Kvyat', N'Esteban Ocon', N'Kimi Raikkonen', N'Kevin Magnussen', N'Antonio Giovinazzi', N'George Russell', N'Nicholas Latifi', N'Romain Grosjean', N'Charles Leclerc', N'İSPANYA', N'Valtteri Bottas', N'Circuit De Barcelona', CAST(N'2020-08-16' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (7, N'Belgian GP', N'Lewis Hamiton', N'Valtteri Bottas', N'Max Verstappen', N'Daniel Ricciardo', N'Esteban ocon', N'Alex Albon', N'Lando Norris', N'Pierre Gasly', N'Lance Stroll', N'Sergio Perez', N'Daniil Kvyat', N'Kimi Raikkonen', N'Sebastian Vettel', N'Charles Leclerc', N'Romain Grosjean', N'Nicholas Latifi', N'Kevin Magnussen', N'Antonio Giovinazzi', N'George Russell', N'Carlos Sainz Jr', N'BELÇİKA', N'Daniel Ricciardo', N'Spa Franchosamps', CAST(N'2020-08-30' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (8, N'Italian GP', N'Pierre Gasly', N'Carlos Sainz Jr', N'Lance Stroll', N'Lando Norris', N'Valtteri Bottas', N'Daniel Ricciardo', N'Lewis Hamilton', N'Esteban Ocon', N'Daniil Kvyat', N'Sergio Perez', N'Nicholas Latifi', N'Romain Grosjean', N'Kimi Raikkonen', N'George Russell', N'Alex Albon', N'Antonio Giovinazzi', N'Max Verstappen', N'Charles Leclerc', N'Kevin Magnussen', N'Sebastian Vettel', N'İTALYA', N'Lewis Hamilton', N'Monza', CAST(N'2020-09-06' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (9, N'Tuscany GP', N'Lewis Hamilton', N'Valtteri Bottas', N'ALex Albon', N'Daniel Ricciardo', N'Sergio Perez', N'Lando Norris', N'Daniil Kvyat ', N'Charles Leclerc', N'Kimi Raikkonen', N'Sebastian Vettel', N'George Russell', N'Romain Grosjean', N'Lance Stroll', N'Esteban Ocon', N'Nicholas Latifi', N'Kevin Magnussen', N'Antonio Giovinazzi', N'Carlos Sainz Jr', N'Max Verstappen', N'Pierre Gasyl', N'İTALYA', N'Lewis Hamilton', N'Mugello', CAST(N'2020-09-13' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (10, N'Russian GP', N'Valtteri Bottas', N'Max Verstappen', N'Lewis Hamilton', N'Sergio Perez', N'Daniel Ricciardo', N'Charles Leclerc', N'Esteban Ocon', N'Daniil Kvyat', N'Pierre Gasly', N'Alex Albon', N'Antonio Giovinazzi', N'Kevin Magnussen', N'Sebastian Vettel', N'Kimi Raikkonen', N'Lando Norris', N'Nicholas Latifi', N'Romain Grosjeann', N'George Russell', N'Carlos Sainz Jr', N'Lance Stroll', N'RUSYA', N'Valtteri Bottas', N'Sochi Autodrom', CAST(N'2020-09-27' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (11, N'Eifel GP', N'Lewis Hamilton', N'Max Verstappen', N'Daniel Ricciardo', N'Sergio Perez', N'Carlos Sainz Jr', N'Pierre Gasly', N'Charles Leclerc', N'Nico Hulkenberg', N'Romain Grosjena', N'Antonio Gionavinazzi', N'Sebastian Vettel', N'Kimi Raikkonen', N'Kevin Magnussen', N'Nicholas Latifi', N'Daniil Kvyat', N'Lando Norris', N'Alex Albon', N'Esteban Ocon', N'Valtteri Bottas', N'George Russell', N'ALMANYA', N'Max Verstappen', N'Nurbring', CAST(N'2020-10-11' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (12, N'Portugal GP', N'Lewis Hamilton', N'Valtteri Bottas', N'Max Verstappen', N'Charles Leclerc', N'Pierre Gasly', N'Carlos Sainz Jr', N'Sergio Perez', N'Esteban Ocon', N'Daniel Ricciardo', N'Sebastian Vettel', N'Kimi Raikkonen', N'Alex Albon', N'Lando Norris', N'George Russell', N'Antonio Giovinazzi', N'Kevin Magnussen', N'Romain Grosjean', N'Nicholas Latifi', N'Daniil Kvyat', N'Lance Stroll', N'PORTEKİZ', N'Lewis Hamilton', N'Portimao', CAST(N'2020-10-25' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (13, N'Emilia Romagna GP', N'Lewis Hamilton', N'Valtteri Bottas', N'Daniel Ricciardo', N'Daniil Kvyat', N'Charles Leclerc', N'Sergio Perez', N'Carlos Sainz', N'Lando Norris ', N'Kimi Raikkonen', N'Antonio Giovinazzi', N'Nicholas Latifi', N'Sebastian Vettel', N'Lance Stroll', N'Romain Grosjean', N'Alex Albon ', N'George Russell', N'Max Versteppen', N'Kevin Magnussen', N'Esteban Ocon', N'Pierre Gasly', N'İTALYA', N'Lewis Hamilton', N'İmola', CAST(N'2020-11-01' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (14, N'Turkish GP', N'Lewis Hamilton', N'Sergio Perez', N'Sebastian Vettel', N'Charles Leclerc', N'Carlos Sainz Jr', N'Max Verstappen', N'Alex Albon', N'Lando Norris', N'Lance Stroll', N'Daniel Ricciardo', N'Esteban Ocon', N'Daniil Kvyat', N'Pierre Gasly', N'Valtteri Bottas', N'Kimi Raikkonen', N'George Russell', N'Kevin Magnussen', N'Romain Grosjean', N'Nicholas Latifi', N'Antonio Giovinazzi', N'TÜRKİYE', N'Lando Norris', N'Istanbul Park', CAST(N'2020-11-15' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (15, N'Bahrain GP', N'Lewis Hamilton', N'Max Verstappen', N'Alex Albon', N'Lando Norris', N'Carlos Sainz Jr', N'Pierre Gasly', N'Daniel Ricciardo', N'Valtteri Bottas', N'Esteban Ocon', N'Charles Leclerc', N'Daniil Kvyat', N'George Russell', N'Sebastian Vettel', N'Nicholas Latifi', N'Kimi Raikkonen', N'Antonio Giovinazzi', N'Kevin Magnussen', N'Sergio Perez', N'Lance Stroll', N'Romain Grosjean', N'BAHREYN', N'Max Verstappen', N'Bahrain International Circuit', CAST(N'2020-11-29' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (16, N'Sakhir GP', N'Sergio Perez', N'Esteban Ocon', N'Lance Stroll', N'Carlos Sainz Jr', N'Daniel Ricciardo', N'Alex Albon', N'Daniil Kvyat ', N'Valtteri Bottas', N'George Russell', N'Lando Norris', N'Pierre Gasly', N'Sebastian Vettel', N'Antonio Giovinazzi', N'Kimi Raikkonnen', N'Kevin Magnussen', N'Jack Aitken', N'Pietro Fittipaldi', N'Nicholas Latifi', N'Max Verstappen', N'Charles Leclerc', N'BAHREYN', N'George Russell', N'Bahrain International Circuit', CAST(N'2020-12-06' AS Date))
INSERT [dbo].[Takvim] ([ID], [YarisAdi], [Birinci], [Ikinci], [Ucuncu], [Dorduncu], [Besinci], [Altinci], [Yedinci], [Sekizinci], [Dokuzuncu], [Onuncu], [OnBirinci], [OnIkinci], [OnUcuncu], [OnDorduncu], [OnBesinci], [OnAltinci], [OnYedinci], [OnSekizinci], [OnDokuzuncu], [Yirminci], [Ulke], [EnHizliTur], [PistAdi], [Tarih]) VALUES (17, N'Abu Dhabi GP', N'Max Verstappen', N'Valtteri Bottas', N'Lewis Hamilton', N'Alex Albon ', N'Lando Norris', N'Carlos Sainz Jr', N'Daniel Ricciardo', N'Pierre Gasly', N'Esteban Ocon', N'Lance Stroll', N'Daniil Kvyat', N'Kimi Raikkonen', N'Charles Leclerc', N'Sebastian Vettel', N'George Russell', N'Antonio Giovinazzi', N'Nicholas Latifi', N'Kevin Magnussen', N'Pietro Fittipaldi', N'Sergio Perez', N'ABU DHABI', N'Daniel Ricciardo', N'Yas Marina Circuit', CAST(N'2020-12-13' AS Date))
GO
INSERT [dbo].[Tarihce] ([ID], [Tarihce], [TarihceENG]) VALUES (1, N'Kısaltması F1 olan, Grand Prix Yarışları olarak da bilinen Formula 1; tek kişilik, açık tekerlekli otomobil yarışlarının en yüksek düzeyini oluşturan yarışlar dizisidir.
F1; bir yıl boyunca, her birine Grand Prix adı verilen ve değişik ülkelerde özel yollarda koşulan yarışlardan oluşur. Yıl sonunda toplanan puanlara göre Pilotlar Şampiyonluğu ile Takımlar Şampiyonası (Otomobil Yapımcıları Birinciliği) ödülleri verilir.
Yarışları Jean Todt''un başkanlığını yaptığı FIA (Uluslararası Otomobil Federasyonu) düzenler. F1''in geçmişinde yarışların çoğunluğu Avrupa''da yapılmış olmasına karşın, son yıllarda artan sayıda yarışlar Avrupa dışına kaydırılmaktadır. Bunda ana neden, FIA''nın gelişen yeni pazarlara açılmak istemesi olsa da, yasal düzenlemelerin AB ülkelerindeki kadar sıkı olmadığı ülkelerin çekiciliği de bu kararda etkin olmuştur. Son yıllarda AB''deki yarışlarda, sağlık gerekçeleriyle tütün ürünlerinin tanıtımlarının yasaklanması, ölümle sonuçlanan bazı kazaların yerel savcılıklarca (takımların savsaması sonucu olup olmadığının) soruşturulması, FIA''ca hoş karşılanmamıştır.Dünyanın en çok izlenen spor dallarındandır. 2010 yılında dünya çapında 527 milyon televizyon izleyicisine ulaşmıştır.
Formula 1 yarışlarının kökeni 1920''ler ve 1930''lar da yapılan Avrupa Grand Prix motor yarışlarına dayanır. Formula tüm katılımcıların ve arabaların uymak zorunda oldukları kurallar bütünüdür. Formula 1, II. Dünya Savaşından sonra 1946 yılında üzerinde anlaşılan yeni kuralların adıdır. Savaştan önce Dünya Şampiyonası için pek çok Grand Prix yarış organizasyonu düzenlenmiştir, ancak Dünya Sürücüler Şampiyonası 1947’den önce biçimlendirilememiştir. İlk dünya şampiyonası yarışı 1950 yılında İngiltere’nin Silverstone pistinde yapıldı. Üreticiler için şampiyona 1958 yılında yapılmaya başlamıştır. 1960''lar ve 1970''ler de Güney Afrika ve İngiltere de ulusal şampiyonalar yapılmaktaydı. Şampiyona dışı Formula 1 yarışları pek çok yılda yapılmıştır, fakat artan maliyetler dolayısıyla bunlardan sonuncusu 1983 yılında yapılmıştır.
İlk Formula 1 Dünya Şampiyonası olan 1950 Formula 1 Sezonu''nu İtalyan Nino Farina Alfa Romeo (Formula 1) ile kazanmıştır. Arjantinli takım arkadaşı Juan Manuel Fangio''yu ucu ucuna geçerek birinci olabilmiştir. Buna rağmen, Fangio 1951 Formula 1 sezonu, 1954 Formula 1 sezonu, 1955 Formula 1 sezonu, 1956 Formula 1 sezonu & 1957 Formula 1 sezonunu kazandı, onun bu serisi iki kez dünya şampiyonu Ferrariden Alberto Ascari tarafından kesilmiştir. Britanya’dan Stirling Moss da düzenli olarak rekabet halinde olsa da, asla Dünya Şampiyonluğunu kazanamamıştır, ve hala bu başarıyı elde edememiş en büyük pilot olarak anılır. Fangio Formula 1 yarışlarının ilk on yılını domine eden kişi olarak anılmaktadır. Uzun bir süre boyunca Formula 1’in “büyük ustası” olarak anılmıştır.
Bu dönem yol aracı üreten üreticiler tarafından domine edilmiştir - Alfa Romeo, Ferrari, Mercedes-Benz ve Maserati – bu üreticilerin tamamı savaştan önce de yarışıyorlardı. İlk sezonlar Alfa''nın 158’si gibi savaş öncesi arabaları kullanarak geçti. Bunlar önden motorlu, dar tırtıklı lastikleri olan ve 1.5 litre kompresörlü ya da 4.5 litre normal doğal emişli motoru olan arabalardı. 1952 Formula 1 sezonu ve 1953 Formula 1 sezonu dünya şampiyonaları mevcut Formula 1 araba sayısından duyulan endişeler sebebi ile, daha küçük ve daha az güce sahip arabalar için olan Formula Two kurallarına göre koşuldu. 1954 yılında Formula 1’e motorların 2.5 litre ile sınırlandırılması kuralı eklendiğinde Mercedes-Benz geliştirlmiş W196yı ortaya çıkardı. Bu araba desmodromic valfler ve yakıt enjeksiyonu gibi yenilikleri içermesinin yanında akış çizgilerini de içeren şasi tasarımına sahipti. Mercedes, 1955 Le Mans faciasından sonra tüm motor sporlarından çekilene kadar, sürücüler şampiyonluğunu iki yıl boyunca kazandı.
1999 ile 2004 yılları arasında Michael Schumacher ve Ferrari benzeri görülmemiş beş art arda sürücüler şampiyonluğu ve altı art arda üreticiler şampiyonluğu kazanmıştır. Schumacher pek çok yeni rekor kırmıştır. Bunların arasında Grand Prix galibiyet sayısı (91), bir sezonda galibiyet sayısı (18 yarışın 13 ü) ve en çok şampiyon olan sürücü (7).[1] Schumacher''in şampiyonlukları 25 Eylül 2005''te Renault sürücüsü Fernando Alonso’nun Formula 1’in en genç şampiyonu olması ile sona erdi. 2006’da, Renault ve Alonso şampiyonluğu yeniden kazandı. Yedi kez Dünya Şampiyonu Schumacher, Formula 1’de geçirilen 16 yılın ardından 2006 sonunda emekliye ayrıldı.
Bu süreç içerisinde şampiyonanın kuralları pistteki rekabeti geliştirmek ve maliyetleri azaltmak amacı ile sık sık FIA tarafından değiştirilmiştir. Şampiyonanın başladığı 1950 yılından itibaren yasal olan Takım emirleri, 2003 yılında takımların açık açık yarış sonuçlarına hile karıştırmalarından sonra yaşanan pek çok olaydan sonra olumsuz bir kamuoyu yarattı ve yasaklandı. Bu yaşanan olaylardan en meşhuru 2002 Avusturya Grand Prix’inde Ferrari tarafından yapılmıştır. Diğer değişiklikler sıralama formatı, puanlama sistemin, teknik düzenlemeler ile motor ve lastiklerin ne kadar süre ile kullanılması gerektiğini düzenleyen kuralları içermektedir. Lastik sağlayacı firmalar Michelin ile Bridgestone arasındaki savaş tur sürelerini azaltmasına rağmen, 2005 Amerika Grand Prix’inde Indianapolis’de Michelin lastiklerini kullanan on takımdan yedisi lastiklerinin güvensiz olduğu gerekçesi ile yarışmadı. 2006’nın sonunda Max Moseley, Formula 1 için “yeşil” bir gelecek çizdi ve bundan sonra enerjinin verimli kullanımı önemli bir faktör haline geldi.
1983''ten beri, Formula 1 yarışları Williams, Mc Laren ve Benetton gibi uzman yarış takımları tarafından domine edilmiştir. Bu takımlar Mercedes-Benz, Handa, Renault ve Ford gibi büyük araba üretricisi firmaların motorlarını kullanmaktadır. 2000 yılında Ford’un çok başarısız olan projesi Jaguar takımı ile, 1985 yılında Alfa Romeo ve Renault’un yarışlara girmesinden bu yana ilk kez yeni üretici firma takımları Formula 1’e girmeye başladı. 2006 itibarıyla, üretici firma takımları – Renault, BMW, Toyota, Honda ve Ferrari – şampiyonayı domine ettiler ve üreticiler şampiyonasındaki ilk altı pozisyondan beşini aldılar. Tek istisna Mercedes-Benz ile ortaklık yapan Mc Laren takımı olmuştur. Grand Prix Manufacturers Association (GPMA) {Grand Prix Üreticiler Birliği} vasıtası ile Formula 1’in ticari karından daha büyük bir pay almışlar ve sporun geleceği ile ilgili daha çok söz sahibi olmuşlardır.
Günümüzde, "Formula 1 yarışı" ve "Dünya Şampiyonası yarışı" terimleri uygulamada tamamen aynı anlamı taşımaktadır; 1984''ten bu yana, her Formula 1 yarışı Dünya Şampiyonası için puanlanmış, ve her Dünya Şampiyonası yarışı Formula 1 kurallarına göre yapılmıştır. Bu her zaman böyle değildi. Formula 1’in eski zamanlarında dünya şampiyonası dışında pek çok yarış daha düzenlenirdi.', N'Formula One (also known as Formula 1 or F1) is the highest class of international auto racing for single-seater racing cars sanctioned by the Fédération Internationale de l''Automobile (FIA). The series is owned by Liberty Media, an American mass media company controlled by its founder and chairman John C. Malone, through its wholly owned subsidiary, the Formula One Group. The World Drivers'' Championship, which became the FIA Formula One World Championship in 1981, has been one of the premier forms of racing around the world since its inaugural season in 1950. The word formula in the name refers to the set of rules to which all participants'' cars must conform.[1] A Formula One season consists of a series of races, known as Grands Prix (French for ''grand prizes'' or ''great prizes''), which take place worldwide on purpose-built circuits and on closed public roads.
The start of 2018 Austrian Grand Prix
The results of each race are evaluated using a points system to determine two annual World Championships: one for drivers, the other for constructors. Each driver must hold a valid Super Licence, the highest class of racing licence issued by the FIA. The races must run on tracks graded "1" (formerly "A"), the highest grade-rating issued by the FIA.[2] Most events occur in rural locations on purpose-built tracks, but several events take place on city streets.
Formula One cars are the fastest regulated road-course racing cars in the world, owing to very high cornering speeds achieved through the generation of large amounts of aerodynamic downforce. The cars underwent major changes in 2017, allowing wider front and rear wings, and wider tyres, resulting in peak cornering forces near 6.5 lateral g and top speeds of up to approximately 350 km/h (215 mph).[4][5] As of 2019 the hybrid engines are limited in performance to a maximum of 15,000 rpm; the cars are very dependent on electronics and aerodynamics, suspension and tyres. Traction control and other driving aids have been banned since 2008.[6]
While Europe is the sport''s traditional base, the championship operates globally, with 11 of the 21 races in the 2019 season taking place outside Europe. With the annual cost of running a mid-tier team—designing, building, and maintaining cars, pay, transport—being US$120 million,[7] its financial and political battles are widely reported. Its high profile and popularity have created a major merchandising environment, which has resulted in large investments from sponsors and budgets (in the hundreds of millions for the constructors). On 23 January 2017 Liberty Media confirmed the completion of the acquisition of Delta Topco, the company that controls Formula One, from private-equity firm CVC Capital Partners for $8 billion.
In August 2020, a new Concorde Agreement was signed by all ten F1 teams committing them to the sport until 2025, including a $145M budget cap for car development to support equal competition and sustainable development in the future.
The Formula One series originated with the European Championship of Grand Prix motor racing (q.v. for pre-1947 history) of the 1920s and 1930s. The formula consists of a set of rules that all participants'' cars must meet. Formula One was a new formula agreed upon during 1946 after World War II, with the first non-championship races taking place that year. The first Formula 1 race was the 1946 Turin Grand Prix. A number of Grand Prix racing organisations had laid out rules for a world championship before the war, but due to the suspension of racing during the conflict, the World Drivers'' Championship did not become formalised until 1947. The first world championship race took place at Silverstone in the United Kingdom in 1950. A championship for constructors followed in 1958. National championships existed in South Africa and the UK in the 1960s and 1970s. Non-championship Formula One events were held[by whom?] for many years, but due to the increasing cost of competition, the last of these occurred in 1983.
On 26 November 2017 Formula One unveiled its new logo, following the 2017 season finale in Abu Dhabi during the Abu Dhabi Grand Prix at Yas Marina Circuit. The new logo replaced F1''s iconic "flying one", which had been the sport''s trademark since 1993
After a hiatus in European motor racing brought about by the outbreak of World War II in Europe in 1939, the Italian Giuseppe Farina in his Alfa Romeo won the first World Championship for Drivers in 1950, narrowly defeating his Argentine teammate Juan Manuel Fangio. However, Fangio won the title in 1951, 1954, 1955, 1956, and 1957 (his record of five World Championship titles stood for 45 years until German driver Michael Schumacher took his sixth title in 2003). Fangio''s streak was interrupted (after an injury) by two-time champion Alberto Ascari of Ferrari. Although the UK''s Stirling Moss was able to compete regularly, he was never able to win the world championship and is now widely considered statistically to be the greatest driver never to have won the title. In a seven-year span between 1955 and 1961 Moss finished as championship runner-up four times and in third place the other three times.[14][15] Fangio, however, has a reputation for dominating Formula One''s first decade and has long been considered the "Grand Master" of Formula One.
This period featured teams managed by road-car manufacturers Alfa Romeo, Ferrari, Mercedes-Benz, and Maserati; all of which had competed before the war. The first seasons featured pre-war cars like Alfa''s 158. They were front-engined, with narrow tyres and 1.5-litre supercharged or 4.5-litre naturally aspirated engines. The 1952 and 1953 World Championships were run to Formula Two regulations, for smaller, less powerful cars, due to concerns over the paucity of Formula One cars available.[16][17] When a new Formula One formula, for engines limited to 2.5 litres, was reinstated to the world championship for 1954, Mercedes-Benz introduced the advanced W196, which featured innovations such as desmodromic valves and fuel injection as well as enclosed streamlined bodywork. Mercedes drivers won the championship for two years, before the team withdrew from all motorsport in the wake of the 1955 Le Mans disaster.
An era of British dominance was ushered in by Mike Hawthorn and Vanwall''s championship wins in 1958, although Stirling Moss had been at the forefront of the sport without ever securing the world title. Between Hawthorn, Jim Clark, Jackie Stewart, John Surtees and Graham Hill, British drivers won nine Drivers'' Championships and British teams won fourteen Constructors'' Championship titles between 1958 and 1974. The iconic British Racing Green Lotus, with a revolutionary aluminium-sheet monocoque chassis instead of the traditional space-frame design, was the dominant car, and in 1968, the team broke new boundaries, when they were the first to carry advertising on their cars
he first major technological development, Bugatti''s re-introduction of mid-engined cars (following Ferdinand Porsche''s pioneering Auto Unions of the 1930s), occurred with the Type 251, which was unsuccessful. Australian Jack Brabham, world champion during 1959, 1960, and 1966, soon proved the mid-engined design''s superiority. By 1961, all regular competitors had switched to mid-engined cars. The Ferguson P99, a four-wheel drive design, was the last front-engined F1 car to enter a world championship race. It was entered in the 1961 British Grand Prix, the only front-engined car to compete that year.[20]
During 1962, Lotus introduced a car with an aluminium-sheet monocoque chassis instead of the traditional space-frame design. This proved to be the greatest technological breakthrough since the introduction of mid-engined cars. During 1968, Rhodesian duo John Love and Sam Tingle were the first to run cigarette sponsorship on their cars, which ran in orange, brown and gold Team Gunston colours in the South African Grand Prix on 1 January 1968, five months before Lotus painted an Imperial Tobacco livery on their cars, thus introducing sponsorship to the sport.[21][22]
Aerodynamic downforce slowly gained importance in car design with the appearance of aerofoils during the late 1960s. During the late 1970s, Lotus introduced ground-effect aerodynamics (previously used on Jim Hall''s Chaparral 2J during 1970) that provided enormous downforce and greatly increased cornering speeds. So great were the aerodynamic forces pressing the cars to the track (up to five times the car''s weight), extremely stiff springs were needed to maintain a constant ride height, leaving the suspension virtually solid, depending entirely on the tyres for any small amount of cushioning of the car and driver from irregularities of the road surface
Michael Schumacher and Ferrari won five consecutive Drivers'' Championships (2000–2004) and six consecutive Constructors'' Championships (1999–2004). Schumacher set many new records, including those for Grand Prix wins (91, since beaten by Lewis Hamilton), wins in a season (thirteen of eighteen), and most Drivers'' Championships (seven, tied with Lewis Hamilton as of 2020).[37] Schumacher''s championship streak ended on 25 September 2005, when Renault driver Fernando Alonso became Formula One''s youngest champion at that time (until Lewis Hamilton in 2008 and followed by Sebastian Vettel in 2010). During 2006, Renault and Alonso won both titles again. Schumacher retired at the end of 2006 after sixteen years in Formula One, but came out of retirement for the 2010 season, racing for the newly formed Mercedes works team, following the rebrand of Brawn GP.
During this period, the championship rules were changed frequently by the FIA with the intention of improving the on-track action and cutting costs.[38] Team orders, legal since the championship started during 1950, were banned during 2002, after several incidents, in which teams openly manipulated race results, generating negative publicity, most famously by Ferrari at the 2002 Austrian Grand Prix. Other changes included the qualifying format, the points scoring system, the technical regulations, and rules specifying how long engines and tyres must last. A "tyre war" between suppliers Michelin and Bridgestone saw lap times fall, although, at the 2005 United States Grand Prix at Indianapolis, seven out of ten teams did not race when their Michelin tyres were deemed unsafe for use, leading to Bridgestone becoming the sole tyre supplier to Formula One for the 2007 season. During 2006, Max Mosley outlined a "green" future for Formula One, in which efficient use of energy would become an important factor.[39]
Since 1983, Formula One had been dominated by specialist race teams like Williams, McLaren, and Benetton, using engines supplied by large car manufacturers like Mercedes-Benz, Honda, Renault, and Ford. Starting in 2000, with Ford''s purchase of Stewart Grand Prix to form the Jaguar Racing team, new manufacturer-owned teams entered Formula One for the first time since the departure of Alfa Romeo and Renault at the end of 1985. By 2006, the manufacturer teams—Renault, BMW, Toyota, Honda, and Ferrari—dominated the championship, taking five of the first six places in the Constructors'' Championship. The sole exception was McLaren, which at the time was part-owned by Mercedes-Benz. Through the Grand Prix Manufacturers Association (GPMA), the manufacturers negotiated a larger share of Formula One''s commercial profit and a greater say in the running of the sport')
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 3.01.2021 19:28:10 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 3.01.2021 19:28:10 ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 3.01.2021 19:28:10 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 3.01.2021 19:28:10 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 3.01.2021 19:28:10 ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 3.01.2021 19:28:10 ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 3.01.2021 19:28:10 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
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
USE [master]
GO
ALTER DATABASE [web] SET  READ_WRITE 
GO
