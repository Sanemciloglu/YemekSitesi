USE [master]
GO
/****** Object:  Database [yemektarifi]    Script Date: 15.05.2020 21:39:07 ******/
CREATE DATABASE [yemektarifi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'yemektarifi', FILENAME = N'D:\Users\sanem\Downloads\Microsoft  SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\yemektarifi.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'yemektarifi_log', FILENAME = N'D:\Users\sanem\Downloads\Microsoft  SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\yemektarifi_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [yemektarifi] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [yemektarifi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [yemektarifi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [yemektarifi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [yemektarifi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [yemektarifi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [yemektarifi] SET ARITHABORT OFF 
GO
ALTER DATABASE [yemektarifi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [yemektarifi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [yemektarifi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [yemektarifi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [yemektarifi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [yemektarifi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [yemektarifi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [yemektarifi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [yemektarifi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [yemektarifi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [yemektarifi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [yemektarifi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [yemektarifi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [yemektarifi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [yemektarifi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [yemektarifi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [yemektarifi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [yemektarifi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [yemektarifi] SET  MULTI_USER 
GO
ALTER DATABASE [yemektarifi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [yemektarifi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [yemektarifi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [yemektarifi] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [yemektarifi] SET DELAYED_DURABILITY = DISABLED 
GO
USE [yemektarifi]
GO
/****** Object:  Table [dbo].[Tbl_GununYemegi]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_GununYemegi](
	[GununYemegiid] [smallint] IDENTITY(1,1) NOT NULL,
	[GununyemegiAd] [varchar](50) NULL,
	[GununYemegiMalzeme] [varchar](500) NULL,
	[GununYemegiTarif] [varchar](max) NULL,
	[GununYemegiResim] [varchar](100) NULL,
	[GununYemegiPuan] [tinyint] NULL,
	[GununYemegiTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_GununYemegi_GununYemegiTarih]  DEFAULT (getdate()),
 CONSTRAINT [PK_Tbl_GununYemegi] PRIMARY KEY CLUSTERED 
(
	[GununYemegiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Hakkımızda]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Hakkımızda](
	[Metin] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Kategoriler]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Kategoriler](
	[Kategoriid] [smallint] IDENTITY(1,1) NOT NULL,
	[KategoriAd] [varchar](50) NULL CONSTRAINT [DF_Tbl_Kategoriler_KategoriAd]  DEFAULT ((0)),
	[KategoriAdet] [smallint] NULL CONSTRAINT [DF_Tbl_Kategoriler_KategoriAdet]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Kategoriler] PRIMARY KEY CLUSTERED 
(
	[Kategoriid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Mesajlar]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Mesajlar](
	[Mesajid] [smallint] IDENTITY(1,1) NOT NULL,
	[MesajGönderen] [varchar](50) NULL,
	[MesajMail] [varchar](50) NULL,
	[MesajBaşlık] [varchar](50) NULL,
	[Mesajİçerik] [varchar](500) NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_tarifler]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_tarifler](
	[Tarifid] [smallint] IDENTITY(1,1) NOT NULL,
	[TarifAd] [varchar](50) NULL,
	[TarifMalzeme] [varchar](500) NULL,
	[TarifYapılış] [varchar](max) NULL,
	[TarifResim] [varchar](50) NULL,
	[TarifSahip] [varchar](50) NULL,
	[TarifSahipMail] [varchar](50) NULL,
	[TarifDurum] [bit] NULL CONSTRAINT [DF_Tbl_tarifler_TarifDurum]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_tarifler] PRIMARY KEY CLUSTERED 
(
	[Tarifid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yemekler]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yemekler](
	[Yemekidd] [smallint] IDENTITY(1,1) NOT NULL,
	[YemekAd] [varchar](50) NULL,
	[YemekMalzeme] [varchar](max) NULL,
	[YemekTarif] [varchar](max) NULL,
	[YemekResim] [varchar](100) NULL,
	[YemekTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yemekler_YemekTarih]  DEFAULT (getdate()),
	[YemekPuan] [float] NULL,
	[Kategoriid] [smallint] NULL,
	[Durum] [bit] NULL CONSTRAINT [DF_Tbl_Yemekler_Durum]  DEFAULT ((0)),
 CONSTRAINT [PK_Tbl_Yemekler] PRIMARY KEY CLUSTERED 
(
	[Yemekidd] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yonetici]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yonetici](
	[Yoneticiid] [tinyint] IDENTITY(1,1) NOT NULL,
	[YoneticiAd] [varchar](50) NULL,
	[YoneticiSifre] [varchar](50) NULL,
 CONSTRAINT [PK_Tbl_Yonetici] PRIMARY KEY CLUSTERED 
(
	[Yoneticiid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Tbl_Yorumla]    Script Date: 15.05.2020 21:39:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tbl_Yorumla](
	[Yorumid] [smallint] IDENTITY(1,1) NOT NULL,
	[YorumAdSoyad] [varchar](50) NULL,
	[YorumMail] [varchar](50) NULL,
	[YorumTarih] [smalldatetime] NULL CONSTRAINT [DF_Tbl_Yorumla_YorumTarih]  DEFAULT (getdate()),
	[YorumOnay] [bit] NULL CONSTRAINT [DF_Tbl_Yorumla_YorumOnay]  DEFAULT ((0)),
	[Yorumİçerik] [varchar](500) NULL,
	[Yemekidd] [smallint] NULL,
 CONSTRAINT [PK_Tbl_Yorumla] PRIMARY KEY CLUSTERED 
(
	[Yorumid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] ON 

INSERT [dbo].[Tbl_GununYemegi] ([GununYemegiid], [GununyemegiAd], [GununYemegiMalzeme], [GununYemegiTarif], [GununYemegiResim], [GununYemegiPuan], [GununYemegiTarih]) VALUES (1, N'Tavuk Sote', N'
    Yarım kg tavuk göğsü
    2 yemek kaşığı sıvı yağ
    1 tatlı kaşığı domates salçası
    2 adet yeşil biber
    1 adet kırmızı biber
    1 adet soğan
    2 diş sarımsak
    2 adet domates
    Karabiber
    Pul biber
    Tuz
    1 su bardağı su
', N'
    Tavuk etini kuşbaşı doğrayın.
    Soğanları yemeklik, biberleri julyen doğrayın, domatesleri de küp küp doğrayın.
    Kısık ateşte tavukları arada karıştırarak kavurun.
    Suyunu biraz çektikten sonra soğanları ve ince kesilmiş sarımsağı ekleyin.
    1-2 dk kavurduktan sonra biberleri ilave edin.
    Biberler de sotelenince domatesi, salçayı, baharatları ve tuzu ekleyip pişirmeye devam edin.
    Son olarak 1 bardak suyu ekleyin ve etler pişene kadar kapağı kapalı bir şekilde pişirin.

Tavuk sote çok pratik bir yemek, isterseniz makarna ile de servis edebilirsiniz.', NULL, 8, NULL)
SET IDENTITY_INSERT [dbo].[Tbl_GununYemegi] OFF
INSERT [dbo].[Tbl_Hakkımızda] ([Metin]) VALUES (N'1998 yılında "En yeni iletişim ve bilgisayar teknolojilerini kullanarak müşterilerine dünya standartlarında çözümler sunmak" ilkesiyle yola çıkan isimtescil.net, geçen 16 yıllık süreçte Dünya ve Türkiye’ye, en büyük domain ve hosting firmalarından biri olmayı başarmıştır.

2008 yılında alan adları standartlarını belirleyen ve denetleyen tek otorite ICANN''e akredite olan isimtescil.net, 2010 yılından beri Türkiye''nin en büyük 500 bilişim şirketi arasında yer almakta ve kurulduğu günden buyana 1 milyonun üzerinde domain kaydı ve 200 bininin üzerinde barındırma hizmetne ev sahipliği yapmıştır...')
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] ON 

INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (1, N'Çorbalar', 3)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (2, N'Sebze Yemekleri', 3)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (3, N'Et Yemekleri', 2)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (4, N'Makarna Çeşitleri', 2)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (5, N'Tavuk Yemekleri', 1)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (6, N'Tatlılar', 4)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (7, N'İçecekler', 4)
INSERT [dbo].[Tbl_Kategoriler] ([Kategoriid], [KategoriAd], [KategoriAdet]) VALUES (8, N'Ara Sıcak', 3)
SET IDENTITY_INSERT [dbo].[Tbl_Kategoriler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] ON 

INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGönderen], [MesajMail], [MesajBaşlık], [Mesajİçerik]) VALUES (1, N'Kübra Akça', N'akça@hotmail.com', N'Günün yemeği', N'Günün yemeği bölümü çok faydalı')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGönderen], [MesajMail], [MesajBaşlık], [Mesajİçerik]) VALUES (2, N'Hasan Köse', N'köse@hotmail.com', N'site', N'Çok yararlı bir site olmuş ')
INSERT [dbo].[Tbl_Mesajlar] ([Mesajid], [MesajGönderen], [MesajMail], [MesajBaşlık], [Mesajİçerik]) VALUES (3, N'Ayşe Hür', N'hür@hotmail.com', N'Tarif Öner', N'Önerdiğim tarifi yayınlamadınz
')
SET IDENTITY_INSERT [dbo].[Tbl_Mesajlar] OFF
SET IDENTITY_INSERT [dbo].[Tbl_tarifler] ON 

INSERT [dbo].[Tbl_tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapılış], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (2, N'Yayla Çorbası', N'
    1 fincan pirinç (Türk kahvesi fincanı)
    7 su bardağı su
    1 su bardağı yoğurt
    1 yumurta
    Yarım fincandan biraz fazla un (Türk kahvesi fincanı)
    3 yemek kaşığı sıvı yağ
    2 yemek kaşığı tereyağı
    Tuz
    Nane
', N'
    Su, sıvı yağ, tuz ve pirinçler tencereye alınır. Pirinçler yumuşayıncaya kadar kaynatılır.
    Ayrı bir kasede yoğurt, yumurta ve un, 1 su bardağına yakın su ile birlikte iyice çırpılır.
    Pirinçler yumuşayınca hızlıca karıştırarak yoğurtlu karışım çorbaya eklenir. Kaynayana kadar karıştırılır. Kaynayınca kısık ateşte 10-15 dk kaynatılır. Ara sıra karıştırmayı ihmal etmeyin.
    Çorbamız piştikten sonra altı kapatılır.
    Şık bir sunum olması açısından;
    Çorba kaselere alınır. Ayrı bir yerde tereyağı kızdırılarak nane ile karıştırılır. Ve kaselerdeki çorbaların üzerinde gezdirilir. Kalan naneli tereyağını tenceredeki çorbaya koyup karıştırın.
    Mis kokulu yayla çorbamız servise hazır.
', N'YaylaÇorbası.jpeg', N'Sanem Çiloğlu', N'sanem@hotmail.com', 1)
INSERT [dbo].[Tbl_tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapılış], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (3, N'Güveçte Patatesli Kavurma', N'
    2 adet patates
    100 gram kavurmalık dana et
    1 adet küçük boy soğan
    Zeytinyağı
    Kekik
    Pul biber
    Karabiber
    Tuz
    Kaşar peyniri
', N'Öncelikle etimizi çok küçük parçalarda doğruyoruz ve sade olarak biraz zeytinyağ ile kavuruyoruz.
Patateslerimizi çok iri olmayacak şekilde küp küp doğruyoruz.
Doğramış olduğumuz patateslerimizi yağlı kağıt serili tepsimize alıp 180 derece fırında yumuşayana kadar yaklaşık 15 dakika pişiriyoruz.
Soğanımızı julien doğruyoruz.
Pişirmiş olduğumuz patatesimiz, kavurmanız ve doğradığımız soğanımızı bir kaba alıp harmanlıyoruz.
Üzerine biraz zeytinyağı, tuz, kekik, pul biber, karabiber ekleyip karıştırıyoruz güveç kabımıza alıyoruz.
Güveçlerimizi önceden ısıtılmış 180 derece fırında 15 dakika kadar pişirdikten sonra rendelenmiş kaşarı güvecin üzerine serpiyoruz.
Kaşarlarımız kızarınca yemeğimizi fırından alıyoruz.', NULL, N'Kevser Çoban', N'kevser@hotmail.com', 0)
INSERT [dbo].[Tbl_tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapılış], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (4, N'Mücver', N'
    2 yumurta
    2 kabak
    Yarım su bardağı un
    2 dal yeşil soğan
    Bir avuç maydanoz
    Pulbiber
    Karabiber
    Tuz
    Toz biber
', N'
    Öncelikle alacalı soyduğumuz kabaklarımızı rendeleyelim.
    Rendelenmiş kabakların suyunu iyice sıkalım.
    Suyu sıkılan kabakların üzerine bütün malzemeleri koyup karıştıralım.
    Bir tavaya kızartmaya yetecek kadar yağ dökelim ve ısınmaya bırakalım.
    Isınan yağın içerisine kaşık yardımıyla mücverden koyalım. Arkalı önlü kızartalım.
    Bütün harç bitene kadar aynı işlemi uygulayalım. Sıcak sıcak servis edelim.
', NULL, N'Tuğba Gamze', N'gamze@hotmail.com', 1)
INSERT [dbo].[Tbl_tarifler] ([Tarifid], [TarifAd], [TarifMalzeme], [TarifYapılış], [TarifResim], [TarifSahip], [TarifSahipMail], [TarifDurum]) VALUES (5, N'Fincan Tatlısı', N'
    1 litre süt (5 su bardağı)
    2 türk kahvesi fincanı tepeleme un
    2,5 türk kahvesi fincanı şeker
    1 paket vanilya
    1 yemek kaşığı tereyağı

Süslemek için;

    Hindistan cevizi tozu
    Çikolata
', N'Öncelikle tencereye sütü un şekeri alıp karıştıralım.
Kıvam alıncaya göz göz olana kadar karıştırıp ocaktan alalım.
Vanilyayı ve tereyağını da ekleyip iyice karıştıralım.
Fincanlara kepçe veya kaşık yardımıyla dolduralım ve biraz soğumasını bekleyelim.
Dolapta 4-5 saat dinlendirelim.
Dolaptan çıkarıp fincanların kenarlarına bastırarak çıkartıp hindistan cevizine bulayalım.
Dilediğiniz gibi süsleyip servis edebilirsiniz.', NULL, N'Elif Atalar', N'atalarelif@hotmail.com', 1)
SET IDENTITY_INSERT [dbo].[Tbl_tarifler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] ON 

INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (1, N'Sütlaç', N'
    1 litre süt
    1 çay bardağı pirinç
    1 su bardağı tozşeker
    1 paket vanilya
    1 tatlı kaşığı nişasta
', N'
    Yıkanan pirinçler uygun bir tencereye alınır.
    Üzerini 1 parmak geçecek kadar su konulup suyunu çekene kadar pişirilir.
    Ayrı bir yerde sütü ılıtalım.
    Ilıyan sütü pirinçlere ilave edip pişip kıvam almaya bırakalım (yaklaşık 20- 25 dk).
    Kıvamlaşan süte şekeri ve vanilyayı ilave edip 10dk daha pişirelim.
    Küçük bir kasede nişastayı çok az suyla çözüp sütlaca ekleyip sürekli karıştırarak bir taşım kaynatıp altını kapalım.
    Sunum kaselerine paylaştırıp oda sıcaklığına ulaşmasını bekledikten sonra ister tüketin ister buzdolabına kaldırıp soğuk tüketin. Deneyeceklere afiyet olsun.
', N'~/resimler/sutlac.jpeg', CAST(N'2020-05-07 05:00:00' AS SmallDateTime), 8.2, 6, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (2, N'Çökertme Kebabı', N'
    4 tane ince dilimlenmiş patates)
    300 gram kuşbaşı et küçük kesilmiş
    3 yemek kaşığı zeytinyağı
    1 kuru soğan
    1 tatlı kaşığı domates salçası
    1 tatlı kaşığı biber salçası
    Tuz, karabiber, pulbiber
 Salçalı sos için

    2 yemek kaşığı sıvı yağ
    1er tatlı kaşığı domates ve biber salçası
    Yarım çay bardağı su
    Kekik, nane, tuz, karabiber, pulbiber ????

Yoğurt sosu için;

    4 yemek kaşığı yoğurt
    1 diş sarımsak
', N'Kesilmiş etleri düdüklüde 20 dk kadar pişiriyoruz yumuşayan etlerin kalan suyu varsa süzüyoruz.
Yağ ekleyip imce kesilmiş soğanı ilave edip karıştırıyoruz.
Salçalarıda ilave edip yarım çay bardağı kadar kaynamış su koyup karıştırıp ocaktan alıyoruz.
İncecik kesilen patatesleri az yağda kızartıyoruz.
Servis tabağına alıyoruz.
Tavaya yağ, salça ve baharatları ekliyoruz salça kokusu çıktığında su ekleyip iyice karıştırıp biraz pişirdikten sonra ocaktan alıyoruz.
Yoğurdun içine sarımsak ekleyip çırpıyoruz.
Servis tabağına alınan patatesin üzerine önce yoğurdu sonra salçalı sosu son olarak etimizi döküp servise hazır hale getiriyoruz. ', N'~/resimler/ç.kebap.jpg', CAST(N'2020-05-07 05:20:00' AS SmallDateTime), 7.1, 3, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (3, N'KFC Çıtır Tavuk', N' 2 paket tavuk göğsü
    1 su bardağından 1 parmak eksik un
    2 yumurta
    1 şişe maden suyu
    İsteğe göre, köri, tuz, pul biber, karabiber
    Sade mısır gevreği
', N'
    Tavuklarımızı jülyen kesiyoruz.
    2 yumurtayı kırıp çırpıyoruz.
    Üzerine maden suyunu boşaltıyoruz.
    Üzerine unu ekliyoruz.
    Daha sonra bahratlarımızı ekliyoruz.
    Bu dolapta bir bir buçuk saat marine oluyor.
    Mısır gevreğimizi çok ufaltmadan robottan geçiriyoruz.
    Daha sonra marine olan tavuklarımızı mısır gevreğine buluyoruz.
    Kızarmış yağımıza atıyoruz ve hazır.
', N'~/resimler/kfc.jpg', CAST(N'2020-05-07 05:30:00' AS SmallDateTime), 9.1, 5, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (4, N'Fırında Makarna', N'
    1 paket fırın makarna

Beşamel sos için;

    1 çay bardağı sıvı yağ
    2 yemek kaşığı un
    4 su bardağı süt
    Yarım yemek kaşığı tuz

Üzeri için;

    Rendelenmiş kaşar peyniri
    Tereyağı (yoksa margarinde olabilir)
', N'Önce makarnamızı tuzlu suda haşlıyoruz.
O haşlanırken beşamel sosumuzu hazırlıyoruz. Tüm malzemeleri küçük bir tencerede muhallebi kıvamına gelip fokurdayana kadar orta ateşte pişiriyoruz.
Daha sonra makarnamızı süzüp borcama yerleştiriyoruz. (Ben oval borcam kullanıyorum tam geliyor)
Daha sonra beşamel sosumuzu üzerine gezdiriyoruz.
Kuru bir yer kalmamalı. Sonra üzerine rendelenmiş kaşar peynirimizi serpiyoruz.
En son tereyağından bıçak ucuyla kesip küçük parçalar halinde aralıklarla kenarlarına koyuyoruz.
Sonunda ortalarına da bir kaç parça koyuyoruz ve 180 derece ısıtılmış fırına sürüyoruz.
Yarım saat kadar pişiriyoruz. Size tavsiyem fırında piştikten sonra 15 dakika kadar içini çekmesi için bekletmeniz.', N'~/resimler/fırındamakarna.jpg', CAST(N'2020-05-07 06:00:00' AS SmallDateTime), 8.5, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (5, N'Pesto Soslu Makarna', N'
    Yarım paket penne makarna
    3 yemek kaşığı pesto sos
    3 yemek kaşığı krema
    2 yemek kaşığı zeytinyağı
    Tuz ve haşlamak için su
', N'Öncelikle haşlamak için suyu koyun, içine tuz atın ve kaynamaya bırakın ve kaynayan suya makarnayı atın, 8-10 dk arası pişirin.
Sos için zeytinyağı ve pesto sosu alın tavaya ısınınca kremayı ekleyin ve çok kaynatmadan alın ocaktan.
Haşlanan makarnayı süzün.
Biraz suyundan sosuna ekleyin kıvam arttırmak isterseniz.
Sos ile makarnayı iyice harmanlayın.
Ve sıcak olarak tavuk yanında yada tek başına bir öğün olarak tüketin', N'~/resimler/petsomakarna.jpg', CAST(N'2020-05-07 06:23:00' AS SmallDateTime), 9.8, 4, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (6, N'ŞekerPare', N'
    Yarım paket margarin
    1 su bardağı pudra şekeri
    2 adet yumurta
    1 paket şekerli vanilin
    1 paket kabartma tozu
    4 yemek kaşığı irmik
    3 su bardağı un

ŞERBETİ İÇİN:

    2 su bardağı toz şeker
    3 su bardağı su
    3 damla limonun suyu

ÜZERİ İÇİN:

    20 adet fındık
', N'
    Öncelikle şerbeti hazırlamalısınız. Derin bir tencereye şeker ve su alınarak kaynatılır. Kaynadıktan sonra limon suyu eklenip 1-2 dakika daha kaynatılıp altı kapatılır ve soğumaya alınır.
    Hamurunu hazırlamak için derin bir karıştırma kâsesine öncelikle oda sıcaklığında beklettiğiniz margarini alınız. Üzerine; pudra şekeri, yumurta, irmik, şekerli vanilin, kabartma tozu ve azar azar unu ekleyip güzelce yoğurunuz.
    Hamurunuzu yoğurduktan sonra 15 dk buzdolabında dinlendiriniz. Dinlendirdiğiniz hamurdan ceviz büyüklüğünde parçalar alarak yuvarlayınız ve yağlı kâğıt serdiğiniz fırın tepsinize yerleştiriniz.
    Fındıklarınızı şekerparelerinizin tam ortalarına bastırarak yerleştiriniz.
    Önceden ısıtılmış 180°C fırında 25 dk pişiriniz.
    Şekerpareleriniz sıcakken, soğuttuğunuz şerbeti üzerine dökünüz. Şerbeti çeken şekerparelerinizi süsleyerek servis edebilirsiniz.
', N'~/resimler/şekerpare.jpg', CAST(N'2020-05-10 18:35:00' AS SmallDateTime), 7.2, 6, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (7, N'Ezogelin Çorbası', N'1 su bardağıkırmızı mercimek
1 adet büyük boysoğan
2 yemek kaşığıbiber salçası
1 yemek kaşığıtereyağı
1/2 çay bardağısıvı yağ
1 yemek kaşığıpirinç
2 yemek kaşığıbulgur
1 tatlı kaşığıpul biber
1 çay kaşığıkarabiber
6 - 6,5 su bardağısıcak su
1 çay kaşığıtuz', N'    Tereyağı, zeytinyağı ve soğanları tencerenin içerisine alın. Hafifçe kavurun.

    Üzerine salçayı ve yıkanmış mercimekleri ilave ederek kavurmaya devam edin.

    Ardından üzerine tüm baharatları, pirinç ve bulguru ekleyerek kavurun. Son olarak suyunu ilave edip kapağını kapatın ve ocağınızın altını kısarak pişmeye bırakın.

    15 dakikanın sonunda tencerenizin kapağını açın. Çorbanızı güzelce karıştırın ve servis edin. Afiyetler olsun!', N'~/resimler/ezogelin.jpg', CAST(N'2020-05-10 18:49:00' AS SmallDateTime), 6.7, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (8, N'Sütlü Domates Çorbası', N'
    2 yemek kaşığı sıvı yağ
    1 yemek kaşığı tereyağı
    2 tepeleme yemek kaşığı un
    1 yemek kaşığı domates salçası
    5 adet domates
    Yarım su bardağı süt
    Tuz
', N'
    Tereyağı ve sıvı yağ tencereye alınır, un eklenerek biraz kavrulur.
    Domates salçası ve rendelenmiş domatesler eklenir. 3-4 dk daha kavrulur.
    4 su bardağı su eklenerek çırpılır.
    Tuzu damak tadınıza göre ayarlanır.
    Kaynayana kadar karıştırılarak, kaynadıktan sonra yaklaşık 15dk kısık ateşte pişirilir.
    Servis yapmadan önce tencereye süt ilave edilerek, karıştırılır.
     İsteğe göre üzerine kaşar peyniri rendesi ve karabiber serpilir.
    Nefis Sütlü domates çorbası tarifimiz servise hazır. Deneyeceklere afiyet olsun.
', N'~/resimler/domates-corbasi.jpg', CAST(N'2020-05-10 18:51:00' AS SmallDateTime), 6.1, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (9, N'Frappe', N'
    1,5 tatlı kaşığı nescafe
    İstenilen miktarda şeker
    4-5 tatlı kaşığı su
    Soğuk süt
    1-2 adet buz küpü

Servis için;

    Vanilyalı dondurma
', N'
    Bir karıştırıcıya nescafe, şeker ve su koyularak en az 30 sn çalkalanır.
    Çalkaladıktan sonra krema kıvamında bir karışım elde edeceksiniz.
    Uzun bir cam bardağın dibine 1-2 adet buz küpü koyulur.
    Üzerine çalkalayarak elde ettiğimiz karışım dökülür.
    Daha sonra bu karışımın üstüne soğuk süt ilave edilir. (Bu aşamada su ilave edip ardından süt ile doldurulabilir ama ben süt ile daha güzel olduğu kanısındayım, o yüzden sadece süt ile yaptım).
    En son üzerine dondurma koyularak servis yapılır.
', N'~/resimler/frappe.jpg', CAST(N'2020-05-10 18:52:00' AS SmallDateTime), 8.6, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (10, N'Limonata', N'
    3 büyük veya 4 orta boy limon
    7-8 yemek kaşığı şeker
    1,5 lt su
', N'
    Limonlar iyice yıkanıp, kabukları rendenin ince kısmıyla rendelenir.
    Rendelenmiş kabuklar şekerle iyice ovulur.
    Limonları suları sıkılıp karışıma ilave edilir ve karıştırılır.
    1,5 lt su eklenerek karıştırılır ve buzdolabında en az 2 saat bekletilir (Arada gidip karıştırın ki dibe çökmesin).
    Daha sonra beklemiş limonata süzülür. Afiyet olsun.
', N'~/resimler/limonata.jpg', CAST(N'2020-05-10 18:52:00' AS SmallDateTime), 9.8, 7, 1)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (11, N'Ev Yapımı Mocha', N'
    2 yemek kaşığı granül nescafe
    2 yemek kaşığı su
    2 yemek kaşığı şeker
    2 fincan süt
', N'Öncelikle su, nescafe ve şekeri blender yardımıyla köpük köpük olana kadar çırpıyoruz.
1 er kaşık fincanlara koyarak sıcak sütü üzerine döküyoruz.
Üzerini çikolata sosu ile süsleyerek servis yapıyorum deneyenlere şimdiden afiyet olsun', N'~/resimler/mocha.jpg', CAST(N'2020-05-10 18:53:00' AS SmallDateTime), 8.3, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (12, N'Atom (Soğuk İçecek)', N'
    1 kase çilek
    3 tane orta boy muz
    3 yemek kaşığı bal
    1 tane kabuğu soyulmuş orta boyutta ananas
    1 şeker kaşığı çekilmiş ceviz
    1 şeker kaşığı çekilmiş antepfıstığı
    1 şeker kaşığı çekilmiş fındık
    Yarım litre süt

Süslemek için

    1 tane kivi
    Tercihen kalıp buz
', N'Tüm meyveleri kabuğunu soyup yıkayıp doğrayalım, kivi hariç bütün malzemeleri rondoya koyalım ve iyice çekelim.
Malzemeler homojen kıvama gelince bardaklara dolduralım.
Süslemek için bir tane kiviyi dairesel kesip ortasına çizik atıp bardağın kenarına koyalım. Servise hazır. Afiyet olsun', N'~/resimler/atom.jpg', CAST(N'2020-05-10 18:55:00' AS SmallDateTime), 8.7, 7, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (13, N'Ekşi Terbiyeli Enginar Festivali', N'
    5 adet enginar
    2 avuç bakla içi (200-250 gr)
    1 kuru soğan
    5-6 yemek kaşığı garnitür
    3-4 yemek kaşığı zeytinyağı
    2 su bardağı su
    2 yemek kaşığı un
    1 limon
    1 tatlı kaşığı tuz

Üzeri için :

    dereotu
', N'
     Enginarları limonlu suda 5-10 dk haşlıyoruz.
     Bakla içlerini 5-10 dk haşlıyoruz ( baklaların dış kabuklarını çıkartıp iç bakla halinde kullanacağız).
     Soğanı piyazlık doğruyoruz.
     Enginarları fotoğraflardaki gibi büyükçe doğruyoruz.
     Borcama; soğanı, zeytinyağını, garnitürü, bakla içlerini, tuzunu, doğradığımız enginarları koyup güzelce harmanlıyoruz.
     Ayrı bir kapta ekşi terbiyesini yapacağız. Bunun için suyu ve unu güzelce karıştırıp içine 1 adet limon sıkıyoruz. ( ben enginarları haşladığım limonlu sudan da ekledim 1 bardak kadar, ekşisi bol olsun isterseniz !).
     Bu hazırladığımız terbiyeyi borcama döküp tekrar karıştırıyoruz.
     180-200 derece fırında 25 dk yeterli oluyor. ( ben önce fanlı sonrasında alt üst pişirme açıyorum üzeri hafif kızarması için ).
     Fırından çıkınca üzerine dereotunu serperek servis yapıyoruz.
', N'~/resimler/enginar.jpg', CAST(N'2020-05-10 18:56:00' AS SmallDateTime), 7.5, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (14, N'Zeytinyağlı Barbunya Pilaki', N'
    500 g taze barbunya
    Yarım su bardağı zeytinyağı
    1 adet soğan
    1 orta boy patates
    1 adet havuç
    2 yemek kaşığı domates salçası
    1 çay kaşığı şeker
    2-3 diş sarımsak
    Tuz
', N'
    İlk olarak barbunyaları bir tencereye alarak  üzerini geçecek kadar su ekleyin ve 10 dakika kadar kaynatarak çıkan suyu süzün (barbunyalar pişsin ama dağılmasına izin vermeyin).
    Diğer yandan soğanları yemeklik doğrayın ve tencerede yarım su bardağı su ile pişirmeye başlayın.
    Soğanlar yumuşadıktan sonra zeytinyağını ilave ederek önce salçayı sonra da küp küp doğradığınız patatesleri, ince halkalar halinde doğradığınız havucu ve ince kestiğiniz sarımsakları ilave edin.
    2 dakika kadar yağda çevirdikten sonra şeker, tuz ve 1 su bardağı kadar kaynar suyu ilave edin ve 10 dakika kadar patates ve havuçları pişirin.
    Daha sonra barbunyaları ilave ederek, suyu kontrol edin çok azalmışsa bir miktar daha kaynar su ilave edebilirsiniz.
    Patatesler ve havuçlar pişene kadar tencerenin kapağı kapalı ve kısık ateşte kaynatın. Suyunu kontrol etmeyi unutmayın ki tencerenin tabanı tutmasın.
    Yemeğiniz piştikten sonra ocaktan alıp soğuduktan sonra servis edebilirsiniz. Afiyet olsun.
', N'~/resimler/barbunya.jpg', CAST(N'2020-05-10 18:56:00' AS SmallDateTime), 7.8, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (15, N'Etsiz Bamya Yemeği', N'
    Yarım kg taze bamya
    2 adet domates
    1 adet soğan
    3 adet yeşil biber
    Yarım yemek kaşığı salça
    2 yemek kaşığı sıvı yağ
    Yarım limon
    baharat ( karabiber, pulbiber)
    Tuz
    5 su bardağı sıcak su
', N'
    Soğanı yemeklik doğrayarak kavurun.
    Pembeleşince doğranmış biberi ilave ederek biberleri de kavurun.
    Küp küp doğranmış domates ve salçayı ilave edin.
    2-3 dk karıştırın ve yıkanmış temizlenmiş bamyaları ekleyin.
    1-2 dk da bamyalar kavrulunca yarım limon suyunu sıkın ve sıcak su ilave edin.
    Son olarak tuz ve baharatları ekleyerek çok karıştırmadan pişmeye bırakın.
', N'~/resimler/zeytinyaglbamya.jpg', CAST(N'2020-05-10 18:58:00' AS SmallDateTime), 6.8, 2, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (16, N'Kıbrıs Tatlısı', N'
    3 adet yumurta
    yarım su bardağı şeker
    yarım su bardağı sıvı yağ
    1 su bardağı galeta unu
    1 su bardağı kırılmış ceviz
    1 su bardağı hindistan cevizi
    bir paket kabartma tozu

Kreması için

    1 litre süt
    1 su bardağı nişasta
    Yarım su bardağı şeker
    1 paket vanilya
    1 paket krem şanti

Şerbeti için

    2 su bardağı su
    1.5 su bardağı şeker
    1 paket vanilya

', N'Kıbrıs tatlısı yapmak için öncelikle şerbeti yapın, çünkü kekin üzerine şerbet soğuk dökülecek. Bir tencereye suyu ve şekeri dökün, kaynamaya başladıktan sonra altını kısıp 15 dakika daha kaynatın.
Şerbet hazır olunca altını kapatın ve vanilyayı ekleyip soğuması için bekletin.
Keki için yumurtaları ve şekeri iyice çırpın, diğer malzemeleri de ekleyip karıştırın.
Yağlanmış bir tepsiye (ben büyük kare borcam kullandım) dökün.
160 derece fırında 30 dakika pişirin.
Fırından çıkar çıkmaz soğuk şerbeti üzerine dökün, soğuması için bekletin.
Kreması için krem şanti hariç diğer malzemeleri bir tencerede muhallebi kıvamına gelene kadar pişirin.
Altını kapatın, toz krem şantiyi ekleyin ve blendırla 5 dakika çırpın.
Soğumuş şerbetli kekin üzerine bu kremsi muhallebiyi dökün.
Üzerine bolca hindistan cevizi (ben ceviz serptim)serpin.
Kıbrıs tatlısını buzdolabında 2-3 saat bekletip servis yapın', N'~/resimler/kıbrıstatlısı.jpg', CAST(N'2020-05-10 19:00:00' AS SmallDateTime), 9.5, 6, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (17, N'Fırında kaşarlı mantar', N'1,5 yemek kaşığıtereyağı
8 adetmantar
2 dişsarımsak
1 çay kaşığıtuz
1 çay kaşığıkarabiber
2 daltaze kekik
80 gramkaşar peyniri(dilimlenmiş)', N'1,5 yemek kaşığı tereyağını bir tavada eritin ve doğradığınız 8 adet mantar sapını da ilave edip soteleyin. Halka halksa doğranmış 2 diş sarımsağı da üzerine ilave edinve 3-4 dakika daha soteleyin.Son olarak 1''er çay kaşığı tuz, karabiber ve 2 dal kekiği de mantarların üzerine ilave edin ve tavayı ocaktan alın.Sapları çıkan 8 adet mantarı, fırına dayanıklı bir kabın içerisine yerleştirin. Üstüne sotelenen mantar saplarını ve dilimlediğiniz kaşar peynirlerini yerleştirin.180 dereceye ayarlanmış fırında, kaşar peynirleri eriyinceye kadar, yaklaşık 15 dakika pişirin. Fırından çıkar çıkmaz servis edin, afiyet olsun!', N'~/resimler/mantar.jpg', CAST(N'2020-05-13 23:38:00' AS SmallDateTime), 8.4, 8, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (18, N'Patatesli sigara böreği', N'4 adetpatates
1 tatlı kaşığıtuz
1 çay kaşığıpul biber
1 adetsoğan
1 tatlı kaşığıtereyağı
3 adetyufka
4 yemek kaşığıkızartma yağı', N'Patateslerin kabuklarını soyun ve haşlayın.

Soğanı yemeklik küp küp doğrayın.

Tereyağını eritin ve soğanları kavurun.

Patatesleri püre kıvamına getirin ve soğanlarla beraber kavurun. Tuz, karabiber ve pul biberi ilave edin. Tahta kaşık yardımıyla iyice karıştırarak pişirin.

Yufkaları ortadan ikiye bölün ve 8 eşit üçgen dilim olacak şekilde porsiyonlayın.

 

Üçgenin taban kısmına patatesli harcı yerleştirin ve sarın.

Yufkanın ucunu su yardımıyla açılmaması için sabitleyin.

İyice ısınan kızartma yağında börekleri kızartın. İyice kızaran börekleri fazla yağını çekmesi için havlu kağıt üzerine bekletin ve servis edin.', N'~/resimler/sigarab.jpg', CAST(N'2020-05-13 23:45:00' AS SmallDateTime), 6, 8, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (19, N'Et Sote', N'
    5 yemek kaşığı sıvı yağ
    1 yemek kaşığı tereyağı
    1 adet soğan
    500g kuşbaşı et
    2 adet domates
    4 adet sivri biber
    Pul biber
    Karabiber
    Kekik
    Sıcak su (üzerini geçecek kadar)
    Tuz
', N'Tavaya sıvı yağ ve tereyağını alalım.
 Tereyağı eridikten sonra doğranmış soğanı ekleyerek kavuralım.
 Kuşbaşı doğranmış eti de ilave edelim.
 Tencerenin kapağını kapatalım ve ara ara karıştırarak etler suyunu salıp çekinceye kadar pişirelim.
 Doğranmış domates ve doğranmış sivribiberi ilave edelim.
 Tencerenin kapağını kapatıp domatesler suyunu salıncaya kadar pişirmeye devam edelim.
 Daha sonra pul biber, karabiber ve kekiği ekleyerek karıştıralım.
 Etlerin üzerini geçecek şekilde sıcak suyu ilave edip karıştıralım ve tencerenin kapağını tekrar kapatalım.
 Etimiz lokum gibi yumuşayıncaya kadar pişirelim.
 Son olarak tuzunu ayarlayıp karıştıralım.
 5 dk daha pişirdikten sonra ocağı kapatalım. Et sote yemeğimiz servise hazır.', N'~/resimler/etsote.jpg', CAST(N'2020-05-14 17:58:00' AS SmallDateTime), 9, 3, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (22, N'Mücver', N'
    2 yumurta
    2 kabak
    Yarım su bardağı un
    2 dal yeşil soğan
    Bir avuç maydanoz
    Pulbiber
    Karabiber
    Tuz
    Toz biber
', N'
    Öncelikle alacalı soyduğumuz kabaklarımızı rendeleyelim.
    Rendelenmiş kabakların suyunu iyice sıkalım.
    Suyu sıkılan kabakların üzerine bütün malzemeleri koyup karıştıralım.
    Bir tavaya kızartmaya yetecek kadar yağ dökelim ve ısınmaya bırakalım.
    Isınan yağın içerisine kaşık yardımıyla mücverden koyalım. Arkalı önlü kızartalım.
    Bütün harç bitene kadar aynı işlemi uygulayalım. Sıcak sıcak servis edelim.
', N'~/resimler/mücver.jpg', CAST(N'2020-05-15 04:46:00' AS SmallDateTime), 7, 8, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (23, N'Yayla Çorbası', N'
    1 fincan pirinç (Türk kahvesi fincanı)
    7 su bardağı su
    1 su bardağı yoğurt
    1 yumurta
    Yarım fincandan biraz fazla un (Türk kahvesi fincanı)
    3 yemek kaşığı sıvı yağ
    2 yemek kaşığı tereyağı
    Tuz
    Nane
', N'
    Su, sıvı yağ, tuz ve pirinçler tencereye alınır. Pirinçler yumuşayıncaya kadar kaynatılır.
    Ayrı bir kasede yoğurt, yumurta ve un, 1 su bardağına yakın su ile birlikte iyice çırpılır.
    Pirinçler yumuşayınca hızlıca karıştırarak yoğurtlu karışım çorbaya eklenir. Kaynayana kadar karıştırılır. Kaynayınca kısık ateşte 10-15 dk kaynatılır. Ara sıra karıştırmayı ihmal etmeyin.
    Çorbamız piştikten sonra altı kapatılır.
    Şık bir sunum olması açısından;
    Çorba kaselere alınır. Ayrı bir yerde tereyağı kızdırılarak nane ile karıştırılır. Ve kaselerdeki çorbaların üzerinde gezdirilir. Kalan naneli tereyağını tenceredeki çorbaya koyup karıştırın.
    Mis kokulu yayla çorbamız servise hazır.
', N'~/resimler/yaylaç.jpg', CAST(N'2020-05-15 04:47:00' AS SmallDateTime), 8, 1, 0)
INSERT [dbo].[Tbl_Yemekler] ([Yemekidd], [YemekAd], [YemekMalzeme], [YemekTarif], [YemekResim], [YemekTarih], [YemekPuan], [Kategoriid], [Durum]) VALUES (24, N'Fincan Tatlısı', N'
    1 litre süt (5 su bardağı)
    2 türk kahvesi fincanı tepeleme un
    2,5 türk kahvesi fincanı şeker
    1 paket vanilya
    1 yemek kaşığı tereyağı

Süslemek için;

    Hindistan cevizi tozu
    Çikolata
', N'Öncelikle tencereye sütü un şekeri alıp karıştıralım.
Kıvam alıncaya göz göz olana kadar karıştırıp ocaktan alalım.
Vanilyayı ve tereyağını da ekleyip iyice karıştıralım.
Fincanlara kepçe veya kaşık yardımıyla dolduralım ve biraz soğumasını bekleyelim.
Dolapta 4-5 saat dinlendirelim.
Dolaptan çıkarıp fincanların kenarlarına bastırarak çıkartıp hindistan cevizine bulayalım.
Dilediğiniz gibi süsleyip servis edebilirsiniz.', N'~/resimler/fincan-tatlisi-tarifi.jpg', CAST(N'2020-05-15 04:53:00' AS SmallDateTime), 9, 6, 0)
SET IDENTITY_INSERT [dbo].[Tbl_Yemekler] OFF
SET IDENTITY_INSERT [dbo].[Tbl_Yorumla] ON 

INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (1, N'selen yılmaz', N'selen@hotmail.com', CAST(N'2020-05-08 01:38:00' AS SmallDateTime), 1, N'mükemmel bir tatlı çok hafif', 1)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (2, N'ahmet ak', N'ahmet@hotmail.com', CAST(N'2020-05-08 01:40:00' AS SmallDateTime), 1, N'kebap çok güzel oldu elinize sağlık', 2)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (3, N'ayşe yılmaz', N'ayşe@hotmail.com', CAST(N'2020-05-08 01:41:00' AS SmallDateTime), 1, N'çıtır tavuk güzel oldu pişirirken yakmamak lazım hemen kızarıyor', 3)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (4, N'ali otlu', N'ali@hotmail.com', CAST(N'2020-05-08 01:43:00' AS SmallDateTime), 1, N'tatlı güzel oldu fakat biraz sıvı geldi. Elinize Sağlık.', 1)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (5, N'ceren güney', N'ceren@hotmail.com', CAST(N'2020-05-08 01:44:00' AS SmallDateTime), 0, N'çok pratik bir tarif elinize sağlık', 4)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (6, N'Murat Kaya', N'Kaya@hotmail.com', CAST(N'2020-05-09 18:11:00' AS SmallDateTime), 0, N'Kreması ile tuzunu iyi ayarlamak lazım. Birlikte çok tuzlu olabiliyor.', 5)
INSERT [dbo].[Tbl_Yorumla] ([Yorumid], [YorumAdSoyad], [YorumMail], [YorumTarih], [YorumOnay], [Yorumİçerik], [Yemekidd]) VALUES (10, N'Betül Yldız', N'Yıldız@hotmail.com', CAST(N'2020-05-09 18:52:00' AS SmallDateTime), 1, N'Fazla yağ çekiyor biraz sağlıksız ama çok lezzetli', 3)
SET IDENTITY_INSERT [dbo].[Tbl_Yorumla] OFF
ALTER TABLE [dbo].[Tbl_Yemekler]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler] FOREIGN KEY([Kategoriid])
REFERENCES [dbo].[Tbl_Kategoriler] ([Kategoriid])
GO
ALTER TABLE [dbo].[Tbl_Yemekler] CHECK CONSTRAINT [FK_Tbl_Yemekler_Tbl_Kategoriler]
GO
ALTER TABLE [dbo].[Tbl_Yorumla]  WITH CHECK ADD  CONSTRAINT [FK_Tbl_Yorumla_Tbl_Yemekler] FOREIGN KEY([Yemekidd])
REFERENCES [dbo].[Tbl_Yemekler] ([Yemekidd])
GO
ALTER TABLE [dbo].[Tbl_Yorumla] CHECK CONSTRAINT [FK_Tbl_Yorumla_Tbl_Yemekler]
GO
USE [master]
GO
ALTER DATABASE [yemektarifi] SET  READ_WRITE 
GO
