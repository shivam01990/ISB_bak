USE [ISBDev]
GO
/****** Object:  Table [dbo].[Accesses]    Script Date: 7/2/2016 11:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Accesses](
	[AccessNum] [int] IDENTITY(1,1) NOT NULL,
	[CoreModuleNum] [int] NULL,
	[VocabularyDisplayNum] [int] NULL,
	[AccessGroupNum] [int] NULL,
	[Code] [nvarchar](8) NULL,
	[Name] [nvarchar](15) NULL,
	[Active] [bit] NOT NULL CONSTRAINT [DF_Accesses_Active]  DEFAULT ((0)),
 CONSTRAINT [PK_Accesses] PRIMARY KEY CLUSTERED 
(
	[AccessNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AccessGroups]    Script Date: 7/2/2016 11:51:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccessGroups](
	[AccessGroupNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](50) NULL,
	[VocabularyDisplayNum] [int] NULL,
	[Active] [bit] NOT NULL,
 CONSTRAINT [PK_AccessGroups] PRIMARY KEY CLUSTERED 
(
	[AccessGroupNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Adresses]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Adresses](
	[AdressNum] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](35) NULL,
	[AdressType] [nvarchar](1) NULL,
	[Adress1] [nvarchar](30) NULL,
	[Adress2] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[StateNum] [int] NULL,
	[ZipCode] [nvarchar](10) NULL,
	[CountryNum] [int] NULL,
	[Active] [bit] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_Adresses] PRIMARY KEY CLUSTERED 
(
	[AdressNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BP]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BP](
	[BPNum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Adress1] [nvarchar](30) NULL,
	[Adress2] [nvarchar](30) NULL,
	[City] [nvarchar](30) NULL,
	[State] [nvarchar](30) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[Country] [nvarchar](30) NULL,
	[Balance] [float] NULL,
	[TotalCredit] [float] NULL,
	[LogoPath] [nvarchar](100) NULL,
	[InternNote] [text] NULL,
	[OrderNote] [text] NULL,
	[Email] [nvarchar](100) NULL,
	[WebSite] [nvarchar](100) NULL,
	[FaceBook] [nvarchar](50) NULL,
	[Active] [bit] NULL,
	[GlobalCategoryNum] [int] NULL,
	[BusinessCategoryNum] [int] NULL,
	[TaxGroupNum] [int] NULL,
	[CurrencyNum] [int] NULL,
	[PaymentTermsNum] [int] NULL,
	[RatingValueNum] [int] NULL,
	[CustomField1Name] [nvarchar](15) NULL,
	[CustomField1Value] [nvarchar](50) NULL,
	[CustomField1Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField1Vis]  DEFAULT ((1)),
	[CustomField2Name] [nvarchar](15) NULL,
	[CustomField2Value] [nvarchar](50) NULL,
	[CustomField2Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField2Vis]  DEFAULT ((1)),
	[CustomField3Name] [nvarchar](15) NULL,
	[CustomField3Value] [nvarchar](50) NULL,
	[CustomField3Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField3Vis]  DEFAULT ((1)),
	[CustomField4Name] [nvarchar](15) NULL,
	[CustomField4Value] [nvarchar](50) NULL,
	[CustomField4Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField4Vis]  DEFAULT ((1)),
	[CustomField5Name] [nvarchar](15) NULL,
	[CustomField5Value] [nvarchar](50) NULL,
	[CustomField5Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField5Vis]  DEFAULT ((1)),
	[CustomField6Name] [nvarchar](15) NULL,
	[CustomField6Value] [nvarchar](50) NULL,
	[CustomField6Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField6Vis]  DEFAULT ((1)),
	[CustomField7Name] [nvarchar](15) NULL,
	[CustomField7Value] [nvarchar](50) NULL,
	[CustomField7Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField7Vis]  DEFAULT ((1)),
	[CustomField8Name] [nvarchar](15) NULL,
	[CustomField8Value] [nvarchar](50) NULL,
	[CustomField8Vis] [bit] NULL CONSTRAINT [DF_BP_CustomField8Vis]  DEFAULT ((1)),
 CONSTRAINT [PK_BP] PRIMARY KEY CLUSTERED 
(
	[BPNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BusinessCategories]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BusinessCategories](
	[BusinessCategoryNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_BusinessCategories] PRIMARY KEY CLUSTERED 
(
	[BusinessCategoryNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categories]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[CategoryNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[CategoryNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[CountryNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](60) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[CountryNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Currencies]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Currencies](
	[CurrencyNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_Currencies] PRIMARY KEY CLUSTERED 
(
	[CurrencyNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DBChangesLog]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DBChangesLog](
	[DBChangesLogNum] [int] IDENTITY(1,1) NOT NULL,
	[CoreModuleNum] [int] NOT NULL,
	[UserNum] [int] NOT NULL,
	[ChangeType] [nvarchar](10) NOT NULL,
	[SQLQuery] [nvarchar](255) NOT NULL,
	[ChangeDateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_DBChangesLog] PRIMARY KEY CLUSTERED 
(
	[DBChangesLogNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DocStates]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocStates](
	[DocSatesNum] [int] IDENTITY(1,1) NOT NULL,
	[VocabularyDisplayNum] [int] NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](20) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_DocStates] PRIMARY KEY CLUSTERED 
(
	[DocSatesNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EndUserTexts]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EndUserTexts](
	[EndUserTextNum] [int] NOT NULL,
	[UserLanguageNum] [int] NULL,
	[TextMessage] [nvarchar](200) NULL,
	[autoNum] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_EndUserTexts] PRIMARY KEY CLUSTERED 
(
	[EndUserTextNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Genders]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genders](
	[GenderNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Genders] PRIMARY KEY CLUSTERED 
(
	[GenderNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GeneralSettings]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GeneralSettings](
	[GeneralSettingNum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NULL,
	[UserLanguageNum] [int] NULL,
	[CustomFieldVis1] [bit] NULL,
	[CustomFieldVis2] [bit] NULL,
	[CustomFieldVis3] [bit] NULL,
	[CustomFieldVis4] [bit] NULL,
	[CustomFieldVis5] [bit] NULL,
	[CustomFieldVis6] [bit] NULL,
	[CustomFieldVis7] [bit] NULL,
	[CustomFieldVis8] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GlobalCategories]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalCategories](
	[GlobalCategoryNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_GlobalCategories] PRIMARY KEY CLUSTERED 
(
	[GlobalCategoryNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Items]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Items](
	[ItemNum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NOT NULL,
	[Code] [nvarchar](20) NULL,
	[Description] [nvarchar](50) NULL,
	[UPC] [nvarchar](20) NULL,
	[EAN13] [nvarchar](30) NULL,
	[ItemTypeNum] [int] NULL,
	[CategoryNum] [int] NULL,
	[SubCategoryNum] [int] NULL,
	[DefaultSupplierBPNum] [int] NULL,
	[PicturePath] [nvarchar](30) NULL,
	[CountryOfOriginNum] [int] NULL,
	[UMOItemNum] [int] NULL,
	[Volume] [int] NULL,
	[NetWeight] [float] NULL,
	[GrossWeight] [float] NULL,
	[IsBuyItem] [bit] NULL,
	[IsPurchaseItem] [bit] NULL,
	[AllowReturn] [bit] NULL,
	[CustomField1Name] [nvarchar](15) NULL,
	[CustomField1Value] [nvarchar](50) NULL,
	[CustomField1Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField1Vis]  DEFAULT ((1)),
	[CustomField2Name] [nvarchar](15) NULL,
	[CustomField2Value] [nvarchar](50) NULL,
	[CustomField2Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField2Vis]  DEFAULT ((1)),
	[CustomField3Name] [nvarchar](15) NULL,
	[CustomField3Value] [nvarchar](50) NULL,
	[CustomField3Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField3Vis]  DEFAULT ((1)),
	[CustomField4Name] [nvarchar](15) NULL,
	[CustomField4Value] [nvarchar](50) NULL,
	[CustomField4Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField4Vis]  DEFAULT ((1)),
	[CustomField5Name] [nvarchar](15) NULL,
	[CustomField5Value] [nvarchar](50) NULL,
	[CustomField5Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField5Vis]  DEFAULT ((1)),
	[CustomField6Name] [nvarchar](15) NULL,
	[CustomField6Value] [nvarchar](50) NULL,
	[CustomField6Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField6Vis]  DEFAULT ((1)),
	[CustomField7Name] [nvarchar](15) NULL,
	[CustomField7Value] [nvarchar](50) NULL,
	[CustomField7Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField7Vis]  DEFAULT ((1)),
	[CustomField8Name] [nvarchar](15) NULL,
	[CustomField8Value] [nvarchar](50) NULL,
	[CustomField8Vis] [bit] NULL CONSTRAINT [DF_Items_CustomField8Vis]  DEFAULT ((1)),
	[Active] [bit] NULL,
 CONSTRAINT [PK_Items] PRIMARY KEY CLUSTERED 
(
	[ItemNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemsPackMsr]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemsPackMsr](
	[ItemsPackMsrNum] [int] IDENTITY(1,1) NOT NULL,
	[ItemNum] [int] NULL,
	[GlobalCustomerNum] [int] NULL,
	[Code] [nvarchar](8) NOT NULL,
	[Description] [nvarchar](30) NULL,
	[UnitPerPack] [int] NULL,
	[IsPurchaseDefault] [bit] NULL,
	[IsSalesDefault] [bit] NULL,
	[IsBaseUOM] [bit] NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ItemsPackMsr] PRIMARY KEY CLUSTERED 
(
	[ItemsPackMsrNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ItemTypes]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ItemTypes](
	[ItemTypeNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ItemTypes] PRIMARY KEY CLUSTERED 
(
	[ItemTypeNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Languages]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Languages](
	[LanguageNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Languages] PRIMARY KEY CLUSTERED 
(
	[LanguageNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentTerms]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentTerms](
	[PaymentTermNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_PaymentTerms] PRIMARY KEY CLUSTERED 
(
	[PaymentTermNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PO](
	[PONum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NOT NULL,
	[BPNum] [int] NOT NULL,
	[AdressNum] [int] NOT NULL,
	[SODate] [date] NOT NULL,
	[SODueDate] [date] NOT NULL,
	[LanguageNum] [int] NOT NULL,
	[DocSatesCode] [int] NOT NULL,
	[SORef] [nvarchar](20) NULL,
	[InternNote] [text] NULL,
	[VisibleNote] [text] NULL,
	[SOTotal] [float] NULL,
	[SOSubTotal] [float] NULL,
	[SOTaxTotal] [float] NULL,
	[SODiscountTotal] [float] NULL,
	[CreatedBy] [nchar](10) NULL,
	[UserNum] [int] NULL,
	[UserNum_SalesRep] [int] NULL,
 CONSTRAINT [PK_PO] PRIMARY KEY CLUSTERED 
(
	[PONum] ASC,
	[GlobalCustomerNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PO_L]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PO_L](
	[PO_LNum] [int] IDENTITY(1,1) NOT NULL,
	[PONum] [int] NOT NULL,
	[ItemNum] [int] NULL,
	[ItemType] [varchar](10) NOT NULL,
	[LineDesc] [nvarchar](65) NULL,
	[Discount] [float] NULL,
	[UnitPrice] [float] NULL,
	[ItemsPackMsrNum] [int] NULL,
	[Quantity] [float] NULL,
	[TaxGroupNum] [int] NOT NULL,
	[TaxNum_1] [int] NULL,
	[TaxNum_2] [int] NULL,
	[LineTotal] [float] NULL,
	[DocSatesNum] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Positions]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Positions](
	[PositionNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_Positions] PRIMARY KEY CLUSTERED 
(
	[PositionNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[RatingValues]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RatingValues](
	[RatingValueNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
 CONSTRAINT [PK_RatingValues] PRIMARY KEY CLUSTERED 
(
	[RatingValueNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ReferalTypes]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReferalTypes](
	[ReferalTypeNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_ReferalTypes] PRIMARY KEY CLUSTERED 
(
	[ReferalTypeNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SO](
	[SONum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NOT NULL,
	[BPNum] [int] NOT NULL,
	[AdressNum] [int] NOT NULL,
	[SODate] [date] NOT NULL,
	[SODueDate] [date] NOT NULL,
	[LanguageNum] [int] NOT NULL,
	[DocSatesCode] [int] NOT NULL,
	[SORef] [nvarchar](20) NULL,
	[InternNote] [text] NULL,
	[VisibleNote] [text] NULL,
	[SOTotal] [float] NULL,
	[SOSubTotal] [float] NULL,
	[SOTaxTotal] [float] NULL,
	[SODiscountTotal] [float] NULL,
	[CreatedBy] [nchar](10) NULL,
	[UserNum] [int] NULL,
	[UserNum_SalesRep] [int] NULL,
 CONSTRAINT [PK_SO] PRIMARY KEY CLUSTERED 
(
	[SONum] ASC,
	[GlobalCustomerNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SO_L]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SO_L](
	[SO_LNum] [int] IDENTITY(1,1) NOT NULL,
	[SONum] [int] NOT NULL,
	[ItemNum] [int] NULL,
	[ItemType] [varchar](10) NOT NULL CONSTRAINT [DF_SO_L_ItemType]  DEFAULT ('I'),
	[LineDesc] [nvarchar](65) NULL,
	[Discount] [float] NULL,
	[UnitPrice] [float] NULL,
	[ItemsPackMsrNum] [int] NULL,
	[Quantity] [float] NULL,
	[TaxGroupNum] [int] NOT NULL,
	[TaxNum_1] [int] NULL,
	[TaxNum_2] [int] NULL,
	[LineTotal] [float] NULL,
	[DocSatesNum] [int] NULL,
 CONSTRAINT [PK_SO_L] PRIMARY KEY CLUSTERED 
(
	[SO_LNum] ASC,
	[SONum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[States]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[StateNum] [int] NOT NULL,
	[CountryNum] [int] NULL,
	[Code] [nvarchar](5) NULL,
	[Name] [nvarchar](30) NULL,
	[VocabularyDisplayNum] [int] NULL,
 CONSTRAINT [PK_States] PRIMARY KEY CLUSTERED 
(
	[StateNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SubCategories]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubCategories](
	[SubCategoryNum] [int] NOT NULL,
	[CategoryNum] [int] NOT NULL,
	[Code] [nvarchar](10) NOT NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL,
 CONSTRAINT [PK_SubCategories] PRIMARY KEY CLUSTERED 
(
	[SubCategoryNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Taxes]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Taxes](
	[TaxeNum] [int] IDENTITY(1,1) NOT NULL,
	[StateNum] [int] NULL,
	[Code] [nvarchar](5) NULL,
	[Name] [nvarchar](20) NULL,
	[VocabularyDisplayNum] [int] NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TaxGroups]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaxGroups](
	[TaxGroupNum] [int] IDENTITY(1,1) NOT NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[CountryNum] [int] NULL,
	[StateNum] [int] NULL,
	[TaxeNum_1] [int] NULL,
	[TaxeNum_2] [int] NULL,
	[Active] [bit] NULL,
	[VocabularyDisplayNum] [int] NULL,
 CONSTRAINT [PK_TaxGroups] PRIMARY KEY CLUSTERED 
(
	[TaxGroupNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UOMItems]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UOMItems](
	[UOMItemNum] [int] IDENTITY(1,1) NOT NULL,
	[ItemNum] [int] NULL,
	[Code] [nvarchar](10) NULL,
	[Name] [nvarchar](30) NULL,
	[Active] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserAccesses]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccesses](
	[UserAccessNum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NOT NULL,
	[UserNum] [int] NOT NULL,
	[CoreModuleNum] [int] NULL,
	[AccessNum] [int] NULL,
	[ReadAccess] [bit] NULL CONSTRAINT [DF_UserAccesses_Read]  DEFAULT ((0)),
	[WriteAccess] [bit] NULL CONSTRAINT [DF_UserAccesses_WriteAccess]  DEFAULT ((0)),
 CONSTRAINT [PK_UserAccesses] PRIMARY KEY CLUSTERED 
(
	[UserAccessNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[UserNum] [int] IDENTITY(1,1) NOT NULL,
	[GlobalCustomerNum] [int] NULL,
	[FirstName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NULL,
	[Adress1] [nvarchar](40) NULL,
	[City] [nvarchar](20) NULL,
	[State] [nvarchar](20) NULL,
	[ZipCode] [nvarchar](10) NULL,
	[CountryNum] [int] NULL,
	[HourlyRate] [float] NULL,
	[HourlyRateOT] [float] NULL,
	[LogoPath] [nvarchar](255) NULL,
	[PrimaryPhone] [nvarchar](20) NULL,
	[GenderNum] [int] NULL,
	[BirthDate] [date] NULL,
	[BirthCountryNum] [int] NULL,
	[ReferalTypeNum] [int] NULL,
	[SocialID] [nvarchar](20) NULL,
	[Active] [bit] NULL,
	[UserName] [nvarchar](30) NULL,
	[Password] [nvarchar](15) NULL,
	[PasswordExpDate] [date] NULL,
	[Title] [nvarchar](20) NULL,
	[LanguageNum] [int] NULL,
	[IsManager] [bit] NULL,
	[PositionNum] [int] NULL,
	[CitizenshipCountryNum] [int] NULL,
	[CitizenshipID] [varchar](20) NULL,
	[CitizenshipExpDate] [date] NULL,
	[PassportCountryNum] [int] NULL,
	[PassportID] [nvarchar](20) NULL,
	[PassportExpDate] [date] NULL,
	[ResidentCountryNum] [int] NULL,
	[ResidentCountryID] [nvarchar](20) NULL,
	[ResidentIDExpDate] [date] NULL,
	[WorkVisaID] [nvarchar](20) NULL,
	[WorkVisaExpDate] [date] NULL,
	[ReferalName] [nvarchar](50) NULL,
	[SASId] [nvarchar](30) NULL,
	[Commission] [int] NULL CONSTRAINT [DF_Users_Commission]  DEFAULT ((0)),
	[ResidentID] [nvarchar](20) NULL,
	[CustomField1Name] [nvarchar](15) NULL,
	[CustomField1Value] [nvarchar](50) NULL,
	[CustomField1Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField1Vis]  DEFAULT ((1)),
	[CustomField2Name] [nvarchar](15) NULL,
	[CustomField2Value] [nvarchar](50) NULL,
	[CustomField2Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField2Vis]  DEFAULT ((1)),
	[CustomField3Name] [nvarchar](15) NULL,
	[CustomField3Value] [nvarchar](50) NULL,
	[CustomField3Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField3Vis]  DEFAULT ((1)),
	[CustomField4Name] [nvarchar](15) NULL,
	[CustomField4Value] [nvarchar](50) NULL,
	[CustomField4Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField4Vis]  DEFAULT ((1)),
	[CustomField5Name] [nvarchar](15) NULL,
	[CustomField5Value] [nvarchar](50) NULL,
	[CustomField5Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField5Vis]  DEFAULT ((1)),
	[CustomField6Name] [nvarchar](15) NULL,
	[CustomField6Value] [nvarchar](50) NULL,
	[CustomField6Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField6Vis]  DEFAULT ((1)),
	[CustomField7Name] [nvarchar](15) NULL,
	[CustomField7Value] [nvarchar](50) NULL,
	[CustomField7Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField7Vis]  DEFAULT ((1)),
	[CustomField8Name] [nvarchar](15) NULL,
	[CustomField8Value] [nvarchar](50) NULL,
	[CustomField8Vis] [bit] NULL CONSTRAINT [DF_Users_CustomField8Vis]  DEFAULT ((1)),
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UserNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VocabularyDisplay]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VocabularyDisplay](
	[VocabularyDisplayNum] [int] NOT NULL,
	[UserLanguageNum] [int] NOT NULL,
	[TextValue] [nvarchar](30) NULL,
	[AutoInt] [int] NOT NULL,
 CONSTRAINT [PK_VocabularyDisplay] PRIMARY KEY CLUSTERED 
(
	[VocabularyDisplayNum] ASC,
	[UserLanguageNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Accesses] ON 

INSERT [dbo].[Accesses] ([AccessNum], [CoreModuleNum], [VocabularyDisplayNum], [AccessGroupNum], [Code], [Name], [Active]) VALUES (1, NULL, 5002, 2, N'ITEM', N'Item Management', 1)
INSERT [dbo].[Accesses] ([AccessNum], [CoreModuleNum], [VocabularyDisplayNum], [AccessGroupNum], [Code], [Name], [Active]) VALUES (4, NULL, 5003, 2, N'BP', N'BP Management', 1)
INSERT [dbo].[Accesses] ([AccessNum], [CoreModuleNum], [VocabularyDisplayNum], [AccessGroupNum], [Code], [Name], [Active]) VALUES (5, NULL, 5004, 2, N'USER', N'User Management', 1)
SET IDENTITY_INSERT [dbo].[Accesses] OFF
SET IDENTITY_INSERT [dbo].[AccessGroups] ON 

INSERT [dbo].[AccessGroups] ([AccessGroupNum], [Code], [Name], [VocabularyDisplayNum], [Active]) VALUES (2, N'01', N'Group 1', 5001, 1)
SET IDENTITY_INSERT [dbo].[AccessGroups] OFF
SET IDENTITY_INSERT [dbo].[Adresses] ON 

INSERT [dbo].[Adresses] ([AdressNum], [Name], [AdressType], [Adress1], [Adress2], [City], [StateNum], [ZipCode], [CountryNum], [Active], [Deleted]) VALUES (1, N'fdfdfdfdf', N'2', NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL)
INSERT [dbo].[Adresses] ([AdressNum], [Name], [AdressType], [Adress1], [Adress2], [City], [StateNum], [ZipCode], [CountryNum], [Active], [Deleted]) VALUES (3, N'Steeve', N'1', N'Adress1', N'Address 2', N'City', 1, N'226016', 2, 0, NULL)
INSERT [dbo].[Adresses] ([AdressNum], [Name], [AdressType], [Adress1], [Adress2], [City], [StateNum], [ZipCode], [CountryNum], [Active], [Deleted]) VALUES (4, N'shivam', N'1', N'117/800 M.block', N'Kakadeo', N'Kanpur', 1, N'208019', 2, 0, NULL)
INSERT [dbo].[Adresses] ([AdressNum], [Name], [AdressType], [Adress1], [Adress2], [City], [StateNum], [ZipCode], [CountryNum], [Active], [Deleted]) VALUES (6, N'shivam1', N'1', N'117/800', N'M.Block', N'My city', 1, N'208019', 2, 0, NULL)
INSERT [dbo].[Adresses] ([AdressNum], [Name], [AdressType], [Adress1], [Adress2], [City], [StateNum], [ZipCode], [CountryNum], [Active], [Deleted]) VALUES (1005, N'Shiv', N'1', N'Ad1', N'Ad2', N'Adress3', 1, N'222222', 2, 1, NULL)
SET IDENTITY_INSERT [dbo].[Adresses] OFF
SET IDENTITY_INSERT [dbo].[BP] ON 

INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (1, 1, N'fdfdf', N'dsdsd', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (2, 1, N'1234', N'Shivam', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (3, 1, N'6541', N'Steeve', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (4, 1, N'1111', N'Dave', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (5, 1, N'1112', N'Frank', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (6, 1, N'3333', N'jhon', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (7, 1, N'3334', N'phil', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (8, 1, N'3335', N'hari', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (9, 1, N'00122', N'Benny', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (10, 1, N'5435', N'Dan', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (11, 1, N'5463', N'Randy', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (12, 1, N'3532', N'sandy', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (13, 1, N'6455', N'Tim', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (14, 1, N'6846356', N'Harrison', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (15, 1, N'684546356', N'David ', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (16, 1, N'5463212', N'Harry1', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (17, 1, N'ygygj', N'hjghjjj', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (18, 1, N'ygygjjj', N'vaunglii', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (19, 1, N'564565', N'aksjay', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (20, 1, N'5312', N'liee', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (21, 1, N'8888', N'nbnbn', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (22, 1, N'64653', N'Andy', N'Address1', N'Address2', N'My city', N'My State', N'12132456', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, 2, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (23, 1, N'86543', N'Richard', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (24, 1, N'87422', N'Richards', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (25, 1, N'5454656', N'Bob', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (26, 1, N'77756', N'Piclo', N'', N'', N'', N'', N'', N'', 0, 0, N'~/LogoDB/26.jpg', N'', N'', N'sandy@gmil.com', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
INSERT [dbo].[BP] ([BPNum], [GlobalCustomerNum], [Code], [Name], [Adress1], [Adress2], [City], [State], [ZipCode], [Country], [Balance], [TotalCredit], [LogoPath], [InternNote], [OrderNote], [Email], [WebSite], [FaceBook], [Active], [GlobalCategoryNum], [BusinessCategoryNum], [TaxGroupNum], [CurrencyNum], [PaymentTermsNum], [RatingValueNum], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (27, 1, N'', N'', N'', N'', N'', N'', N'', N'', 0, 0, N'', N'', N'', N'', N'', N'', 1, NULL, NULL, NULL, NULL, NULL, NULL, N'Field 1', N'', 1, N'Field 2', N'', 1, N'Field 3', N'', 1, N'Field 4', N'', 1, N'Field 5', N'', 1, N'Field 6', N'', 1, N'Field 7', N'', 1, N'Field 8', N'', 1)
SET IDENTITY_INSERT [dbo].[BP] OFF
SET IDENTITY_INSERT [dbo].[BusinessCategories] ON 

INSERT [dbo].[BusinessCategories] ([BusinessCategoryNum], [Code], [Name]) VALUES (1, N'01', N'Sample 01')
SET IDENTITY_INSERT [dbo].[BusinessCategories] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([CategoryNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Sample', 1)
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Sample 01', 1)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (2, N'1', N'Country', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (3, N'2', N'Afghanistan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (4, N'3', N'Albania', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (5, N'4', N'Algeria', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (6, N'5', N'Andorra', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (7, N'6', N'Angola', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (8, N'7', N'Antigua and Barbuda', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (9, N'8', N'Argentina', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (10, N'9', N'Armenia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (11, N'10', N'Australia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (12, N'11', N'Austria', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (13, N'12', N'Azerbaijan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (14, N'13', N'Bahamas', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (15, N'14', N'Bahrain', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (16, N'15', N'Bangladesh', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (17, N'16', N'Barbados', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (18, N'17', N'Belarus', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (19, N'18', N'Belgium', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (20, N'19', N'Belize', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (21, N'20', N'Benin', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (22, N'21', N'Bhutan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (23, N'22', N'Bolivia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (24, N'23', N'Bosnia and Herzegovina', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (25, N'24', N'Botswana', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (26, N'25', N'Brazil', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (27, N'26', N'Brunei Darussalam', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (28, N'27', N'Bulgaria', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (29, N'28', N'Burkina Faso', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (30, N'29', N'Burundi', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (31, N'30', N'Cabo Verde', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (32, N'31', N'Cambodia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (33, N'32', N'Cameroon', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (34, N'33', N'Canada', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (35, N'34', N'Central African Republic', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (36, N'35', N'Chad', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (37, N'36', N'Chile', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (38, N'37', N'China', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (39, N'38', N'Colombia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (40, N'39', N'Comoros', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (41, N'40', N'Congo', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (42, N'41', N'Costa Rica', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (43, N'42', N'Côte d''Ivoire', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (44, N'43', N'Croatia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (45, N'44', N'Cuba', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (46, N'45', N'Cyprus', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (47, N'46', N'Czech Republic', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (48, N'47', N'Democratic People''s Republic of Korea (North Korea)', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (49, N'48', N'Democratic Republic of the Cong', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (50, N'49', N'Denmark', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (51, N'50', N'Djibouti', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (52, N'51', N'Dominica', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (53, N'52', N'Dominican Republic', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (54, N'53', N'Ecuador', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (55, N'54', N'Egypt', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (56, N'55', N'El Salvador', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (57, N'56', N'Equatorial Guinea', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (58, N'57', N'Eritrea', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (59, N'58', N'Estonia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (60, N'59', N'Ethiopia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (61, N'60', N'Fiji', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (62, N'61', N'Finland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (63, N'62', N'France', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (64, N'63', N'Gabon', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (65, N'64', N'Gambia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (66, N'65', N'Georgia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (67, N'66', N'Germany', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (68, N'67', N'Ghana', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (69, N'68', N'Greece', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (70, N'69', N'Grenada', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (71, N'70', N'Guatemala', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (72, N'71', N'Guinea', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (73, N'72', N'Guinea-Bissau', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (74, N'73', N'Guyana', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (75, N'74', N'Haiti', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (76, N'75', N'Honduras', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (77, N'76', N'Hungary', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (78, N'77', N'Iceland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (79, N'78', N'India', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (80, N'79', N'Indonesia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (81, N'80', N'Iran', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (82, N'81', N'Iraq', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (83, N'82', N'Ireland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (84, N'83', N'Israel', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (85, N'84', N'Italy', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (86, N'85', N'Jamaica', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (87, N'86', N'Japan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (88, N'87', N'Jordan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (89, N'88', N'Kazakhstan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (90, N'89', N'Kenya', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (91, N'90', N'Kiribati', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (92, N'91', N'Kuwait', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (93, N'92', N'Kyrgyzstan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (94, N'93', N'Lao People''s Democratic Republic (Laos)', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (95, N'94', N'Latvia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (96, N'95', N'Lebanon', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (97, N'96', N'Lesotho', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (98, N'97', N'Liberia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (99, N'98', N'Libya', NULL)
GO
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (100, N'99', N'Liechtenstein', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (101, N'100', N'Lithuania', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (102, N'101', N'Luxembourg', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (103, N'102', N'Macedonia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (104, N'103', N'Madagascar', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (105, N'104', N'Malawi', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (106, N'105', N'Malaysia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (107, N'106', N'Maldives', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (108, N'107', N'Mali', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (109, N'108', N'Malta', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (110, N'109', N'Marshall Islands', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (111, N'110', N'Mauritania', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (112, N'111', N'Mauritius', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (113, N'112', N'Mexico', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (114, N'113', N'Micronesia (Federated States of)', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (115, N'114', N'Monaco', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (116, N'115', N'Mongolia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (117, N'116', N'Montenegro', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (118, N'117', N'Morocco', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (119, N'118', N'Mozambique', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (120, N'119', N'Myanmar', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (121, N'120', N'Namibia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (122, N'121', N'Nauru', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (123, N'122', N'Nepal', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (124, N'123', N'Netherlands', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (125, N'124', N'New Zealand', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (126, N'125', N'Nicaragua', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (127, N'126', N'Niger', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (128, N'127', N'Nigeria', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (129, N'128', N'Norway', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (130, N'129', N'Oman', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (131, N'130', N'Pakistan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (132, N'131', N'Palau', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (133, N'132', N'Panama', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (134, N'133', N'Papua New Guinea', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (135, N'134', N'Paraguay', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (136, N'135', N'Peru', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (137, N'136', N'Philippines', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (138, N'137', N'Poland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (139, N'138', N'Portugal', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (140, N'139', N'Qatar', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (141, N'140', N'Republic of Korea (South Korea)', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (142, N'141', N'Republic of Moldova', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (143, N'142', N'Romania', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (144, N'143', N'Russian Federation', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (145, N'144', N'Rwanda', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (146, N'145', N'Saint Kitts and Nevis', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (147, N'146', N'Saint Lucia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (148, N'147', N'Saint Vincent and the Grenadines', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (149, N'148', N'Samoa', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (150, N'149', N'San Marino', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (151, N'150', N'Sao Tome and Principe', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (152, N'151', N'Saudi Arabia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (153, N'152', N'Senegal', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (154, N'153', N'Serbia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (155, N'154', N'Seychelles', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (156, N'155', N'Sierra Leone', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (157, N'156', N'Singapore', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (158, N'157', N'Slovakia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (159, N'158', N'Slovenia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (160, N'159', N'Solomon Islands', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (161, N'160', N'Somalia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (162, N'161', N'South Africa', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (163, N'162', N'South Sudan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (164, N'163', N'Spain', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (165, N'164', N'Sri Lanka', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (166, N'165', N'Sudan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (167, N'166', N'Suriname', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (168, N'167', N'Swaziland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (169, N'168', N'Sweden', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (170, N'169', N'Switzerland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (171, N'170', N'Syrian Arab Republic', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (172, N'171', N'Tajikistan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (173, N'172', N'Thailand', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (174, N'173', N'Timor-Leste', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (175, N'174', N'Togo', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (176, N'175', N'Tonga', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (177, N'176', N'Trinidad and Tobago', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (178, N'177', N'Tunisia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (179, N'178', N'Turkey', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (180, N'179', N'Turkmenistan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (181, N'180', N'Tuvalu', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (182, N'181', N'Uganda', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (183, N'182', N'Ukraine', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (184, N'183', N'United Arab Emirates', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (185, N'184', N'United Kingdom of Great Britain and Northern Ireland', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (186, N'185', N'United Republic of Tanzania', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (187, N'186', N'United States of America', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (188, N'187', N'Uruguay', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (189, N'188', N'Uzbekistan', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (190, N'189', N'Vanuatu', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (191, N'190', N'Venezuela', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (192, N'191', N'Vietnam', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (193, N'192', N'Yemen', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (194, N'193', N'Zambia', NULL)
INSERT [dbo].[Countries] ([CountryNum], [Code], [Name], [Active]) VALUES (195, N'194', N'Zimbabwe', NULL)
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET IDENTITY_INSERT [dbo].[Currencies] ON 

INSERT [dbo].[Currencies] ([CurrencyNum], [Code], [Name]) VALUES (1, N'01', N'Sample 01')
SET IDENTITY_INSERT [dbo].[Currencies] OFF
SET IDENTITY_INSERT [dbo].[DocStates] ON 

INSERT [dbo].[DocStates] ([DocSatesNum], [VocabularyDisplayNum], [Code], [Name], [Active]) VALUES (1, 1, N'N', N'New', 1)
INSERT [dbo].[DocStates] ([DocSatesNum], [VocabularyDisplayNum], [Code], [Name], [Active]) VALUES (2, 1, N'C', N'Cancel', 1)
INSERT [dbo].[DocStates] ([DocSatesNum], [VocabularyDisplayNum], [Code], [Name], [Active]) VALUES (3, 1, N'F', N'Completed', 1)
SET IDENTITY_INSERT [dbo].[DocStates] OFF
SET IDENTITY_INSERT [dbo].[EndUserTexts] ON 

INSERT [dbo].[EndUserTexts] ([EndUserTextNum], [UserLanguageNum], [TextMessage], [autoNum]) VALUES (1, 1, N'Saved Successfully', 1)
INSERT [dbo].[EndUserTexts] ([EndUserTextNum], [UserLanguageNum], [TextMessage], [autoNum]) VALUES (2, 1, N'Code Already Exist', 2)
INSERT [dbo].[EndUserTexts] ([EndUserTextNum], [UserLanguageNum], [TextMessage], [autoNum]) VALUES (3, 1, N'Not Saved : Database error', 3)
INSERT [dbo].[EndUserTexts] ([EndUserTextNum], [UserLanguageNum], [TextMessage], [autoNum]) VALUES (4, 1, N'Logo error', 4)
SET IDENTITY_INSERT [dbo].[EndUserTexts] OFF
SET IDENTITY_INSERT [dbo].[Genders] ON 

INSERT [dbo].[Genders] ([GenderNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Sample 01', 1)
SET IDENTITY_INSERT [dbo].[Genders] OFF
SET IDENTITY_INSERT [dbo].[GlobalCategories] ON 

INSERT [dbo].[GlobalCategories] ([GlobalCategoryNum], [Code], [Name]) VALUES (1, N'01', N'Sample 01')
SET IDENTITY_INSERT [dbo].[GlobalCategories] OFF
SET IDENTITY_INSERT [dbo].[Items] ON 

INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (1, 1, N'Item 1', N'Test Item', N'ddsd', N'', NULL, NULL, NULL, NULL, N'', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (2, 1, N'Item 1', N'Test Item', N'ddsd', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (3, 1, N'TestSteeve', N'Steeve Test 1', N'', N'', NULL, NULL, NULL, NULL, N'', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (4, 1, N'TestSteeve', N'Steeve Test 1', N'dsd', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (5, 1, N'Test1', N'Test1', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (6, 1, N'Item Code', N'DESC', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (7, 1, N'Item Code', N'DESC', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (8, 1, N'Test245', N'Test2332', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (9, 0, N'5757', N'asdasd', N'', N'asdas', 1, 1, 1, NULL, N'          ', 17, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (10, 1, N'2344', N'322432432', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (11, 1, N'Test245', N'Test2332', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (12, 1, N'Test245', N'Test2332', N'', N'', NULL, NULL, NULL, NULL, N'          ', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (13, 1, N'Test25', N'Test25', N'Test 25', N'', NULL, NULL, NULL, NULL, N'/PictureDB/13.jpg', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (1013, 1, N'sdsdsd', N'dsdsdsds', N'', N'', NULL, NULL, NULL, NULL, N'', NULL, NULL, 0, 0, 0, 1, 1, 1, N'', N'dsds', 1, N'', N'sdsd', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
INSERT [dbo].[Items] ([ItemNum], [GlobalCustomerNum], [Code], [Description], [UPC], [EAN13], [ItemTypeNum], [CategoryNum], [SubCategoryNum], [DefaultSupplierBPNum], [PicturePath], [CountryOfOriginNum], [UMOItemNum], [Volume], [NetWeight], [GrossWeight], [IsBuyItem], [IsPurchaseItem], [AllowReturn], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis], [Active]) VALUES (1014, 1, N'32333', N'dsfds', N'', N'', 1, 1, 1, 2, N'', 2, 1, 0, 0, 0, 1, 1, 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, 1)
SET IDENTITY_INSERT [dbo].[Items] OFF
SET IDENTITY_INSERT [dbo].[ItemsPackMsr] ON 

INSERT [dbo].[ItemsPackMsr] ([ItemsPackMsrNum], [ItemNum], [GlobalCustomerNum], [Code], [Description], [UnitPerPack], [IsPurchaseDefault], [IsSalesDefault], [IsBaseUOM], [Active]) VALUES (1, 13, 1, N'1', N'Test', 1, 1, 1, 1, 1)
INSERT [dbo].[ItemsPackMsr] ([ItemsPackMsrNum], [ItemNum], [GlobalCustomerNum], [Code], [Description], [UnitPerPack], [IsPurchaseDefault], [IsSalesDefault], [IsBaseUOM], [Active]) VALUES (2, 1014, 1, N'32333', N'dsfds', 1, 0, 0, 1, 1)
SET IDENTITY_INSERT [dbo].[ItemsPackMsr] OFF
SET IDENTITY_INSERT [dbo].[ItemTypes] ON 

INSERT [dbo].[ItemTypes] ([ItemTypeNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Sample', 1)
SET IDENTITY_INSERT [dbo].[ItemTypes] OFF
SET IDENTITY_INSERT [dbo].[Languages] ON 

INSERT [dbo].[Languages] ([LanguageNum], [Code], [Name], [Active]) VALUES (1, N'01', N'French', 1)
INSERT [dbo].[Languages] ([LanguageNum], [Code], [Name], [Active]) VALUES (2, N'02', N'English', 1)
INSERT [dbo].[Languages] ([LanguageNum], [Code], [Name], [Active]) VALUES (3, N'03', N'Spanish', 1)
SET IDENTITY_INSERT [dbo].[Languages] OFF
SET IDENTITY_INSERT [dbo].[PaymentTerms] ON 

INSERT [dbo].[PaymentTerms] ([PaymentTermNum], [Code], [Name]) VALUES (1, N'01', N'Sample 01')
SET IDENTITY_INSERT [dbo].[PaymentTerms] OFF
SET IDENTITY_INSERT [dbo].[PO] ON 

INSERT [dbo].[PO] ([PONum], [GlobalCustomerNum], [BPNum], [AdressNum], [SODate], [SODueDate], [LanguageNum], [DocSatesCode], [SORef], [InternNote], [VisibleNote], [SOTotal], [SOSubTotal], [SOTaxTotal], [SODiscountTotal], [CreatedBy], [UserNum], [UserNum_SalesRep]) VALUES (1, 1, 22, 1005, CAST(N'2016-04-13' AS Date), CAST(N'2016-04-01' AS Date), 1, 1, N'111134', N'Internal Note Customer', N'Noter customer', 0, 0, 0, 0, NULL, 1, 5)
SET IDENTITY_INSERT [dbo].[PO] OFF
SET IDENTITY_INSERT [dbo].[Positions] ON 

INSERT [dbo].[Positions] ([PositionNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Developer', 1)
SET IDENTITY_INSERT [dbo].[Positions] OFF
SET IDENTITY_INSERT [dbo].[RatingValues] ON 

INSERT [dbo].[RatingValues] ([RatingValueNum], [Code], [Name]) VALUES (1, N'01', N'Sample 01')
SET IDENTITY_INSERT [dbo].[RatingValues] OFF
SET IDENTITY_INSERT [dbo].[ReferalTypes] ON 

INSERT [dbo].[ReferalTypes] ([ReferalTypeNum], [Code], [Name], [Active]) VALUES (1, N'01', N'Sample 01', 1)
SET IDENTITY_INSERT [dbo].[ReferalTypes] OFF
SET IDENTITY_INSERT [dbo].[SO] ON 

INSERT [dbo].[SO] ([SONum], [GlobalCustomerNum], [BPNum], [AdressNum], [SODate], [SODueDate], [LanguageNum], [DocSatesCode], [SORef], [InternNote], [VisibleNote], [SOTotal], [SOSubTotal], [SOTaxTotal], [SODiscountTotal], [CreatedBy], [UserNum], [UserNum_SalesRep]) VALUES (1, 1, 22, 1005, CAST(N'2016-03-30' AS Date), CAST(N'2016-03-31' AS Date), 1, 1, N'8888', N'1', N'2', 0, 0, 0, 0, NULL, 1, 5)
INSERT [dbo].[SO] ([SONum], [GlobalCustomerNum], [BPNum], [AdressNum], [SODate], [SODueDate], [LanguageNum], [DocSatesCode], [SORef], [InternNote], [VisibleNote], [SOTotal], [SOSubTotal], [SOTaxTotal], [SODiscountTotal], [CreatedBy], [UserNum], [UserNum_SalesRep]) VALUES (2, 1, 22, 1005, CAST(N'2016-03-09' AS Date), CAST(N'2016-03-31' AS Date), 1, 1, N'65258888', N'1', N'2', 118.5, 130, 0, 15, NULL, 1, 1)
INSERT [dbo].[SO] ([SONum], [GlobalCustomerNum], [BPNum], [AdressNum], [SODate], [SODueDate], [LanguageNum], [DocSatesCode], [SORef], [InternNote], [VisibleNote], [SOTotal], [SOSubTotal], [SOTaxTotal], [SODiscountTotal], [CreatedBy], [UserNum], [UserNum_SalesRep]) VALUES (3, 1, 22, 1, CAST(N'2016-04-13' AS Date), CAST(N'2016-04-19' AS Date), 2, 1, N'1111112', N'Internal note', N'Customer', 0, 0, 0, 0, NULL, 1, 2)
SET IDENTITY_INSERT [dbo].[SO] OFF
SET IDENTITY_INSERT [dbo].[SO_L] ON 

INSERT [dbo].[SO_L] ([SO_LNum], [SONum], [ItemNum], [ItemType], [LineDesc], [Discount], [UnitPrice], [ItemsPackMsrNum], [Quantity], [TaxGroupNum], [TaxNum_1], [TaxNum_2], [LineTotal], [DocSatesNum]) VALUES (1, 2, 1014, N'I', N'', 10, 50, 2, 2, 2, 0, 0, 90, 1)
INSERT [dbo].[SO_L] ([SO_LNum], [SONum], [ItemNum], [ItemType], [LineDesc], [Discount], [UnitPrice], [ItemsPackMsrNum], [Quantity], [TaxGroupNum], [TaxNum_1], [TaxNum_2], [LineTotal], [DocSatesNum]) VALUES (2, 2, 1014, N'I', N'', 5, 15, 2, 2, 2, 0, 0, 28.5, 1)
SET IDENTITY_INSERT [dbo].[SO_L] OFF
INSERT [dbo].[States] ([StateNum], [CountryNum], [Code], [Name], [VocabularyDisplayNum]) VALUES (1, 2, N'1', N'Quebec', 26)
INSERT [dbo].[SubCategories] ([SubCategoryNum], [CategoryNum], [Code], [Name], [Active]) VALUES (1, 1, N'01', N'SubCat Exp', 1)
SET IDENTITY_INSERT [dbo].[Taxes] ON 

INSERT [dbo].[Taxes] ([TaxeNum], [StateNum], [Code], [Name], [VocabularyDisplayNum], [Active]) VALUES (10, 1, N'1', N'Test', 1, 1)
SET IDENTITY_INSERT [dbo].[Taxes] OFF
SET IDENTITY_INSERT [dbo].[TaxGroups] ON 

INSERT [dbo].[TaxGroups] ([TaxGroupNum], [Code], [Name], [CountryNum], [StateNum], [TaxeNum_1], [TaxeNum_2], [Active], [VocabularyDisplayNum]) VALUES (2, N'1', N'GrpTax', 1, 2, 1, 1, 1, 26)
SET IDENTITY_INSERT [dbo].[TaxGroups] OFF
SET IDENTITY_INSERT [dbo].[UOMItems] ON 

INSERT [dbo].[UOMItems] ([UOMItemNum], [ItemNum], [Code], [Name], [Active]) VALUES (1, 13, N'Test25', N'S2 23232', 1)
SET IDENTITY_INSERT [dbo].[UOMItems] OFF
SET IDENTITY_INSERT [dbo].[UserAccesses] ON 

INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (1, 1, 8, NULL, 1, 0, 1)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (2, 1, 8, NULL, 4, 1, 1)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (3, 1, 8, NULL, 5, 1, 1)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (4, 1, 1, NULL, 1, 1, 0)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (5, 1, 1, NULL, 4, 1, 0)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (6, 1, 1, NULL, 5, 0, 0)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (7, 1, 2, NULL, 1, 0, 0)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (8, 1, 2, NULL, 4, 0, 0)
INSERT [dbo].[UserAccesses] ([UserAccessNum], [GlobalCustomerNum], [UserNum], [CoreModuleNum], [AccessNum], [ReadAccess], [WriteAccess]) VALUES (9, 1, 2, NULL, 5, 0, 0)
SET IDENTITY_INSERT [dbo].[UserAccesses] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (1, 1, N'Shivam11', N'Srivastava', N'Address 1', N'your City', N'Your State', N'2008019', 1, 22, 33, N'/LogoDB/1.jpg', N'56626326', 1, CAST(N'2005-11-01' AS Date), 1, 1, NULL, 1, N'Shivam', N'123456', CAST(N'2015-11-30' AS Date), N'Title', 2, 1, 1, 1, N'citizenshipid', CAST(N'2015-11-30' AS Date), 1, N'Passport ID', CAST(N'2015-11-09' AS Date), 1, NULL, CAST(N'2015-11-24' AS Date), N'51535213', CAST(N'2015-11-30' AS Date), N'', N'davea', 5, N'845132.', N'Field 1', N'dk', 1, N'jkj', N'j', 1, N'kj', N'njk', 1, N'jk', N'bjk', 1, N'bjk', N'bjk', 1, N'bjk', N'nnnn', 1, N'jkb', N'jkbmn', 1, N'', N'jkbjk', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (2, 1, N'Steeve', N'Flydancioa', N'ghjg''', N'hj', N'hjghj', N'ghj', 1, 55, 56.560001373291016, N'/LogoDB/2.jpg', N'7786050641', 1, CAST(N'2015-11-19' AS Date), 1, 1, NULL, 1, N'jknfdjkn', N'jjknjknj ''', CAST(N'2015-11-19' AS Date), N'Title', 2, 1, 1, 1, N'454153q', CAST(N'2015-11-18' AS Date), 1, N'7jhghjbhh', CAST(N'2015-11-03' AS Date), 1, NULL, CAST(N'2015-11-26' AS Date), N'86434635468', CAST(N'2015-11-30' AS Date), N'Ref Name', N'SAS No', 55, N'bjbbdmnb', N'sdfdsfdsfdsf', N'jknjkb', 1, N'jb', N'b', 1, N'bmb', N'mnb', 1, N'mnb', N'mnb', 1, N'mnbmn', N'bmn', 1, N'b mnb', N'jkhkj', 1, N'hjkhjk', N'jkhk', 1, N'jhkh', N'jkh', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (3, 1, N'My first Name', N'Last name', N'', N'', N'', N'', 1, 84, 22, N'/LogoDB/3.jpg', N'', 1, NULL, 1, 1, NULL, 0, N'UserName', N'6874312135', CAST(N'2015-11-03' AS Date), N'', 2, 0, 1, 1, N'', NULL, 1, N'', NULL, 1, NULL, NULL, N'', NULL, N'', N'', 0, N'', N'1`', N'11', 1, N'2', N'22', 1, N'3', N'33', 1, N'4', N'44', 1, N'5', N'55', 1, N'6', N'66', 1, N'7', N'77', 1, N'8', N'88', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (4, 1, N'First Name', N'Last Name', N'', N'', N'', N'', 1, 0, 0, N'/LogoDB/4.jpg', N'', 1, NULL, 1, 1, NULL, 0, N'User 4', N'123456', CAST(N'2015-11-03' AS Date), N'', 2, 1, 1, 1, N'sfgklnjk``', CAST(N'2015-11-30' AS Date), 1, N'dshfbhjbhj', CAST(N'2015-11-30' AS Date), 1, NULL, CAST(N'2015-11-30' AS Date), N'jhbhjbhj', CAST(N'2015-11-24' AS Date), N'', N'324324324', 0, N'uhgjhj', N'jhbhjbhj', N'hbhjb', 1, N'hjbhj', N'bhj', 1, N'bhj', N'bhj', 1, N'bhjb', N'hjb', 1, N'hjb', N'hjbhj', 1, N'bhj', N'bhj', 1, N'bhb', N'jkb', 1, N'jhbhjbh', N'hbhjhjhj', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (5, 1, N'First Name', N'Last Name', N'', N'', N'', N'', 1, 0, 0, N'/LogoDB/5.jpg', N'', 1, NULL, 1, 1, NULL, 1, N'User 4', N'123456', CAST(N'2015-11-03' AS Date), N'', 2, 1, 1, 1, N'sfgklnjk``', CAST(N'2015-11-30' AS Date), 1, N'dshfbhjbhj', CAST(N'2015-11-30' AS Date), 1, NULL, CAST(N'2015-11-30' AS Date), N'jhbhjbhj', CAST(N'2015-11-24' AS Date), N'', N'324324324', 0, N'uhgjhj', N'jhbhjbhj', N'hbhjb', 1, N'hjbhj', N'bhj', 1, N'bhj', N'bhj', 1, N'bhjb', N'hjb', 1, N'hjb', N'hjbhj', 1, N'bhj', N'bhj', 1, N'bhb', N'jkb', 1, N'jhbhjbh', N'hbhjhjhj', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (6, 1, N'First Name', N'Last Name', N'', N'', N'', N'', 1, 0, 0, N'/LogoDB/6', N'', 1, NULL, 1, 1, NULL, 0, N'User 4', N'123456', CAST(N'2015-11-03' AS Date), N'', 2, 1, 1, 1, N'sfgklnjk``', CAST(N'2015-11-30' AS Date), 1, N'dshfbhjbhj', CAST(N'2015-11-30' AS Date), 1, NULL, CAST(N'2015-11-30' AS Date), N'jhbhjbhj', CAST(N'2015-11-24' AS Date), N'', N'324324324', 0, N'uhgjhj', N'jhbhjbhj', N'hbhjb', 1, N'hjbhj', N'bhj', 1, N'bhj', N'bhj', 1, N'bhjb', N'hjb', 1, N'hjb', N'hjbhj', 1, N'bhj', N'bhj', 1, N'bhb', N'jkb', 1, N'jhbhjbh', N'hbhjhjhj', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (7, 1, N'dsfdsfsdfdsfhhb', N'dssdf', N'', N'', N'', N'', 1, 0, 0, N'/LogoDB/7.jpg', N'', 1, NULL, 1, 1, NULL, 0, N'bhvh', N'ihdfjhsdfds', NULL, N'', 2, 0, 1, 1, N'', NULL, 1, N'', NULL, 1, NULL, NULL, N'', NULL, N'', N'', 0, N'', N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (8, 1, N'001', N'001', N'1', N'2', N'3', N'5', 4, 5, 6, N'/LogoDB/8.jpg', N'8', 1, CAST(N'2015-11-11' AS Date), 12, 1, NULL, 1, N'11', N'12', CAST(N'2015-11-03' AS Date), N'13', 1, 1, 1, 7, N'14', CAST(N'2015-11-02' AS Date), 18, N'15', CAST(N'2015-11-10' AS Date), 19, NULL, CAST(N'2015-11-03' AS Date), N'17', CAST(N'2015-11-16' AS Date), N'9', N'10', 7, N'16', N'1', N'1', 1, N'2', N'2', 1, N'', N'3', 1, N'', N'4', 1, N'', N'5', 1, N'', N'6', 1, N'', N'7', 1, N'', N'8', 1)
INSERT [dbo].[Users] ([UserNum], [GlobalCustomerNum], [FirstName], [LastName], [Adress1], [City], [State], [ZipCode], [CountryNum], [HourlyRate], [HourlyRateOT], [LogoPath], [PrimaryPhone], [GenderNum], [BirthDate], [BirthCountryNum], [ReferalTypeNum], [SocialID], [Active], [UserName], [Password], [PasswordExpDate], [Title], [LanguageNum], [IsManager], [PositionNum], [CitizenshipCountryNum], [CitizenshipID], [CitizenshipExpDate], [PassportCountryNum], [PassportID], [PassportExpDate], [ResidentCountryNum], [ResidentCountryID], [ResidentIDExpDate], [WorkVisaID], [WorkVisaExpDate], [ReferalName], [SASId], [Commission], [ResidentID], [CustomField1Name], [CustomField1Value], [CustomField1Vis], [CustomField2Name], [CustomField2Value], [CustomField2Vis], [CustomField3Name], [CustomField3Value], [CustomField3Vis], [CustomField4Name], [CustomField4Value], [CustomField4Vis], [CustomField5Name], [CustomField5Value], [CustomField5Vis], [CustomField6Name], [CustomField6Value], [CustomField6Vis], [CustomField7Name], [CustomField7Value], [CustomField7Vis], [CustomField8Name], [CustomField8Value], [CustomField8Vis]) VALUES (9, 1, N'Test Name', N'Test', N'Address', N'bknks', N'', N'', 15, 0, 0, N'/LogoDB/9.jpg', N'', 1, NULL, 18, 1, NULL, 0, N'sssss', N'sss', NULL, N'', 1, 1, 1, 4, N'', NULL, 2, N'', NULL, 13, NULL, NULL, N'', NULL, N'', N'', 0, N'', N'', N'aaaaaaa', 1, N'', N'sssssssssss', 1, N'ss', N'sss', 1, N'sss', N'sss', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1, N'', N'', 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (1, 1, N'Name', 1)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (2, 1, N'Adress 1', 2)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (3, 1, N'Adress 2', 3)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (4, 1, N'City', 4)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (5, 1, N'State', 5)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (6, 1, N'Zip code', 6)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (7, 1, N'Country', 7)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (8, 1, N'Credit Limit', 8)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (9, 1, N'Credit Limit', 9)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (10, 1, N'Logo', 10)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (11, 1, N'Internal Note', 11)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (12, 1, N'Active', 12)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (13, 1, N'Code', 13)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (14, 1, N'Global Category', 14)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (15, 1, N'Business Category', 15)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (16, 1, N'E-Mail', 16)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (17, 1, N'Website', 17)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (18, 1, N'Facebook', 18)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (19, 1, N'Tax Group', 19)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (20, 1, N'Currency', 20)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (21, 1, N'Payment Terms', 21)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (22, 1, N'Order Note', 22)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (23, 1, N'Rating value', 23)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (24, 1, N'Custom field', 24)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (25, 1, N'Value', 25)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (26, 1, N'DefaultValue', 28)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (100, 1, N'First Name', 29)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (101, 1, N'Last Name', 30)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (102, 1, N'Adress 1', 31)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (103, 1, N'City', 32)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (104, 1, N'State', 33)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (105, 1, N'Zip Code', 34)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (106, 1, N'Country', 35)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (107, 1, N'Hourly Rate', 36)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (108, 1, N'OT Rate', 37)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (109, 1, N'Logo', 38)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (110, 1, N'Primary Phone', 39)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (111, 1, N'Gender 2', 40)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (112, 1, N'Birth Date', 41)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (113, 1, N'Birth Country', 42)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (114, 1, N'Referal Type', 43)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (115, 1, N'Social ID', 44)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (116, 1, N'Active', 45)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (117, 1, N'User Name', 46)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (118, 1, N'Password', 47)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (119, 1, N'Password Expiration', 48)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (120, 1, N'Title', 49)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (121, 1, N'Language', 50)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (122, 1, N'Manager', 58)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (123, 1, N'Position', 51)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (124, 1, N'Citizenship Country', 52)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (125, 1, N'Citizenship ID', 53)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (126, 1, N'Citizenship Expiration', 54)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (127, 1, N'Passport Country', 55)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (128, 1, N'Passport ID', 56)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (129, 1, N'Passport Expiration', 57)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (130, 1, N'Resident Country', 59)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (131, 1, N'Resident ID', 60)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (132, 1, N'Resident Exp Date', 61)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (133, 1, N'Work Visa ID', 62)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (134, 1, N'Work Visa Expiration', 63)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (135, 1, N'Column 1', 64)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (136, 1, N'Column 2', 65)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (137, 1, N'Save', 66)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (138, 1, N'Close', 67)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (139, 1, N'Referal Name', 68)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (140, 1, N'SAS Number', 69)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (141, 1, N'Comission', 70)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (300, 1, N'Item Code', 71)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (301, 1, N'Description', 72)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (302, 1, N'UPC', 73)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (303, 1, N'EAN 128', 74)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (304, 1, N'Item Type', 75)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (305, 1, N'Volume', 76)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (306, 1, N'Default Supplier', 77)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (307, 1, N'Gross Weight', 78)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (308, 1, N'Cost Price', 79)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (309, 1, N'Net Weight', 80)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (310, 1, N'Country of Origin', 81)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (311, 1, N'Category', 82)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (312, 1, N'Sub Category', 83)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (313, 1, N'Default UOM', 84)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (314, 1, N'Picture', 85)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (315, 1, N'Buy Item', 86)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (316, 1, N'Purchase Item', 88)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (317, 1, N'Active', 89)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (318, 1, N'Allow Return', 90)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (319, 1, N'Column 1', 91)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (320, 1, N'Column 2', 92)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (321, 1, N'Save', 93)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (322, 1, N'Close', 94)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (323, 1, N'Lead Time', 87)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (5001, 1, N'User Prm 1', 95)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (5002, 1, N'Items Management', 96)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (5003, 1, N'Business Partner Management', 97)
INSERT [dbo].[VocabularyDisplay] ([VocabularyDisplayNum], [UserLanguageNum], [TextValue], [AutoInt]) VALUES (5004, 1, N'User Management', 98)
ALTER TABLE [dbo].[PO_L] ADD  CONSTRAINT [DF_PO_L_ItemType]  DEFAULT ('I') FOR [ItemType]
GO
ALTER TABLE [dbo].[Accesses]  WITH CHECK ADD  CONSTRAINT [FK_Accesses_AccessGroups1] FOREIGN KEY([AccessGroupNum])
REFERENCES [dbo].[AccessGroups] ([AccessGroupNum])
GO
ALTER TABLE [dbo].[Accesses] CHECK CONSTRAINT [FK_Accesses_AccessGroups1]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_BusinessCategories] FOREIGN KEY([BusinessCategoryNum])
REFERENCES [dbo].[BusinessCategories] ([BusinessCategoryNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_BusinessCategories]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_Currencies] FOREIGN KEY([CurrencyNum])
REFERENCES [dbo].[Currencies] ([CurrencyNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_Currencies]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_GlobalCategories] FOREIGN KEY([GlobalCategoryNum])
REFERENCES [dbo].[GlobalCategories] ([GlobalCategoryNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_GlobalCategories]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_PaymentTerms] FOREIGN KEY([PaymentTermsNum])
REFERENCES [dbo].[PaymentTerms] ([PaymentTermNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_PaymentTerms]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_RatingValues] FOREIGN KEY([RatingValueNum])
REFERENCES [dbo].[RatingValues] ([RatingValueNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_RatingValues]
GO
ALTER TABLE [dbo].[BP]  WITH CHECK ADD  CONSTRAINT [FK_BP_TaxGroups] FOREIGN KEY([TaxGroupNum])
REFERENCES [dbo].[TaxGroups] ([TaxGroupNum])
GO
ALTER TABLE [dbo].[BP] CHECK CONSTRAINT [FK_BP_TaxGroups]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_BP] FOREIGN KEY([DefaultSupplierBPNum])
REFERENCES [dbo].[BP] ([BPNum])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_BP]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Categories] FOREIGN KEY([CategoryNum])
REFERENCES [dbo].[Categories] ([CategoryNum])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Categories]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_Countries] FOREIGN KEY([CountryOfOriginNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_Countries]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_ItemTypes] FOREIGN KEY([ItemTypeNum])
REFERENCES [dbo].[ItemTypes] ([ItemTypeNum])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_ItemTypes]
GO
ALTER TABLE [dbo].[Items]  WITH CHECK ADD  CONSTRAINT [FK_Items_SubCategories] FOREIGN KEY([SubCategoryNum])
REFERENCES [dbo].[SubCategories] ([SubCategoryNum])
GO
ALTER TABLE [dbo].[Items] CHECK CONSTRAINT [FK_Items_SubCategories]
GO
ALTER TABLE [dbo].[ItemsPackMsr]  WITH CHECK ADD  CONSTRAINT [FK_ItemsPackMsr_Items] FOREIGN KEY([ItemNum])
REFERENCES [dbo].[Items] ([ItemNum])
GO
ALTER TABLE [dbo].[ItemsPackMsr] CHECK CONSTRAINT [FK_ItemsPackMsr_Items]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_Adresses] FOREIGN KEY([AdressNum])
REFERENCES [dbo].[Adresses] ([AdressNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_Adresses]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_BP] FOREIGN KEY([BPNum])
REFERENCES [dbo].[BP] ([BPNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_BP]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_DocStates] FOREIGN KEY([DocSatesCode])
REFERENCES [dbo].[DocStates] ([DocSatesNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_DocStates]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_Languages] FOREIGN KEY([LanguageNum])
REFERENCES [dbo].[Languages] ([LanguageNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_Languages]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_Users] FOREIGN KEY([UserNum])
REFERENCES [dbo].[Users] ([UserNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_Users]
GO
ALTER TABLE [dbo].[SO]  WITH CHECK ADD  CONSTRAINT [FK_SO_Users1] FOREIGN KEY([UserNum_SalesRep])
REFERENCES [dbo].[Users] ([UserNum])
GO
ALTER TABLE [dbo].[SO] CHECK CONSTRAINT [FK_SO_Users1]
GO
ALTER TABLE [dbo].[SO_L]  WITH CHECK ADD  CONSTRAINT [FK_SO_L_Items] FOREIGN KEY([ItemNum])
REFERENCES [dbo].[Items] ([ItemNum])
GO
ALTER TABLE [dbo].[SO_L] CHECK CONSTRAINT [FK_SO_L_Items]
GO
ALTER TABLE [dbo].[UOMItems]  WITH CHECK ADD  CONSTRAINT [FK_UOMItems_Items] FOREIGN KEY([UOMItemNum])
REFERENCES [dbo].[Items] ([ItemNum])
GO
ALTER TABLE [dbo].[UOMItems] CHECK CONSTRAINT [FK_UOMItems_Items]
GO
ALTER TABLE [dbo].[UserAccesses]  WITH CHECK ADD  CONSTRAINT [FK_UserAccesses_Accesses] FOREIGN KEY([AccessNum])
REFERENCES [dbo].[Accesses] ([AccessNum])
GO
ALTER TABLE [dbo].[UserAccesses] CHECK CONSTRAINT [FK_UserAccesses_Accesses]
GO
ALTER TABLE [dbo].[UserAccesses]  WITH CHECK ADD  CONSTRAINT [FK_UserAccesses_Users] FOREIGN KEY([UserNum])
REFERENCES [dbo].[Users] ([UserNum])
GO
ALTER TABLE [dbo].[UserAccesses] CHECK CONSTRAINT [FK_UserAccesses_Users]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries] FOREIGN KEY([CountryNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries1] FOREIGN KEY([BirthCountryNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries1]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries2] FOREIGN KEY([CitizenshipCountryNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries2]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries4] FOREIGN KEY([ResidentCountryNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries4]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Countries5] FOREIGN KEY([ResidentCountryNum])
REFERENCES [dbo].[Countries] ([CountryNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Countries5]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Genders] FOREIGN KEY([GenderNum])
REFERENCES [dbo].[Genders] ([GenderNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Genders]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Languages] FOREIGN KEY([LanguageNum])
REFERENCES [dbo].[Languages] ([LanguageNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Languages]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Positions] FOREIGN KEY([PositionNum])
REFERENCES [dbo].[Positions] ([PositionNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Positions]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_ReferalTypes] FOREIGN KEY([ReferalTypeNum])
REFERENCES [dbo].[ReferalTypes] ([ReferalTypeNum])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_ReferalTypes]
GO
/****** Object:  StoredProcedure [dbo].[p_AuthenticateUser]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_AuthenticateUser]
@UserName nvarchar(MAX),
@Password nvarchar(MAX)
AS
BEGIN
     SET NOCOUNT ON;
		SELECT [UserNum]
		  ,[GlobalCustomerNum]
		  ,[FirstName]
		  ,[LastName]
		  ,[Adress1]
		  ,[City]
		  ,[State]
		  ,[ZipCode]
		  ,[CountryNum]
		  ,[HourlyRate]
		  ,[HourlyRateOT]
		  ,[LogoPath]
		  ,[PrimaryPhone]
		  ,[GenderNum]
		  ,[BirthDate]
		  ,[BirthCountryNum]
		  ,[ReferalTypeNum]
		  ,[SocialID]
		  ,[Active]
		  ,[UserName]
		  ,[Password]
		  ,[PasswordExpDate]
		  ,[Title]
		  ,[LanguageNum]
		  ,[IsManager]
		  ,[PositionNum]
		  ,[CitizenshipCountryNum]
		  ,[CitizenshipID]
		  ,[CitizenshipExpDate]
		  ,[PassportCountryNum]
		  ,[PassportID]
		  ,[PassportExpDate]
		  ,[ResidentCountryNum]
		  ,[ResidentCountryID]
		  ,[ResidentIDExpDate]
		  ,[WorkVisaID]
		  ,[WorkVisaExpDate]
		  ,[ReferalName]
		  ,[SASId]
		  ,[Commission]
		  ,[ResidentID]
		  ,[CustomField1Name]
		  ,[CustomField1Value]
		  ,[CustomField1Vis]
		  ,[CustomField2Name]
		  ,[CustomField2Value]
		  ,[CustomField2Vis]
		  ,[CustomField3Name]
		  ,[CustomField3Value]
		  ,[CustomField3Vis]
		  ,[CustomField4Name]
		  ,[CustomField4Value]
		  ,[CustomField4Vis]
		  ,[CustomField5Name]
		  ,[CustomField5Value]
		  ,[CustomField5Vis]
		  ,[CustomField6Name]
		  ,[CustomField6Value]
		  ,[CustomField6Vis]
		  ,[CustomField7Name]
		  ,[CustomField7Value]
		  ,[CustomField7Vis]
		  ,[CustomField8Name]
		  ,[CustomField8Value]
		  ,[CustomField8Vis]
	  FROM [dbo].[Users] Where UserName=@UserName 
	  AND Password =@Password
	  AND GlobalCustomerNum=1 AND Active=1
END

GO
/****** Object:  StoredProcedure [dbo].[p_FilterAdresses]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_FilterAdresses]
@AdressNum int,
@OrderBy NVARCHAR(500) = 'AdressNum' ,
@OrderDir NVARCHAR(500) = 'ASC' ,
@PageNumber INT = 0 ,
@PageSize INT = 0
AS
BEGIN
	SET NOCOUNT ON;
	 WITH    AdressData
                  AS (
				  SELECT A.AdressNum
				  ,A.Name
				  ,A.AdressType
				  ,A.Adress1
				  ,A.Adress2
				  ,A.City
				  ,A.StateNum
				  ,S.Name as StateName
				  ,A.ZipCode
				  ,A.CountryNum
				  ,C.Name as CountryName
				  ,A.Active
				  ,A.Deleted
				  , ROW_NUMBER() OVER ( ORDER BY CASE
                                        WHEN @OrderDir = 'DESC'
                                        THEN CASE
                                        WHEN @OrderBy = 'Name'
                                        THEN A.Name
                                        WHEN @OrderBy = 'Adress1'
                                        THEN A.Adress1
                                        WHEN @OrderBy = 'City'
                                        THEN A.City
										WHEN @OrderBy = 'StateName'
                                        THEN S.Name  
										WHEN @OrderBy = 'CountryName'
                                        THEN C.Name                                  
										WHEN @OrderBy = 'ZipCode'
                                        THEN A.ZipCode
                                        END
                                        END DESC, CASE
                                        WHEN @OrderDir = 'DESC'
                                        THEN CASE
                                        WHEN @OrderBy = 'Name'
                                        THEN A.Name
                                        WHEN @OrderBy = 'Adress1'
                                        THEN A.Adress1
                                        WHEN @OrderBy = 'City'
                                        THEN A.City  
										WHEN @OrderBy = 'StateName'
                                        THEN S.Name  
										WHEN @OrderBy = 'CountryName'
                                        THEN C.Name                                    
										WHEN @OrderBy = 'ZipCode'
                                        THEN A.ZipCode
                                        END
                                        END ASC, CASE
                                        WHEN @OrderDir = 'ASC'
                                        THEN CASE
                                        WHEN @OrderBy = 'AdressType'
                                        THEN A.AdressType
                                        END
                                        END ASC, CASE
                                        WHEN @OrderDir = 'DESC'
                                        THEN CASE
                                        WHEN @OrderBy = 'AdressType'
                                        THEN A.AdressType
                                        END
                                        END DESC, CASE
                                        WHEN @OrderDir = 'ASC'
                                        THEN CASE
                                        WHEN @OrderBy = 'AdressNum'
                                        THEN A.AdressNum
                                        END
                                        END ASC, CASE
                                        WHEN @OrderDir = 'DESC'
                                        THEN CASE
                                        WHEN @OrderBy = 'AdressNum'
                                        THEN A.AdressNum
                                        END
                                        END DESC  ) RowNumber
			  FROM [dbo].[Adresses] A
			  LEFT JOIN States S on A.StateNum=S.StateNum
			  LEFT JOIN Countries C on A.CountryNum=C.CountryNum
			  WHERE @AdressNum IN (AdressNum,0)
			 )
         Select 
	     [AdressNum]
		,[Name]
		,[AdressType]
		,[Adress1]
		,[Adress2]
		,[City]
		,[StateNum]
		,[StateName]
		,[ZipCode]
		,[CountryNum]
		,[CountryName]
		,[Active]
		,[Deleted]
	  ,( SELECT COUNT(AdressNum)
			FROM      AdressData
		) TotalRecords from AdressData
		WHERE  ( RowNumber BETWEEN ( ( @PageNumber - 1 ) * @PageSize + 1 )
        AND     ( ( @PageNumber - 1 ) * @PageSize
        + @PageSize ) )
		OR ( @PageSize = 0
				OR @PageNumber = 0
			)
            ORDER BY RowNumber ASC ; 
  
END

GO
/****** Object:  StoredProcedure [dbo].[p_FilterBP]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[p_FilterBP] @BPNum int,
@GlobalCustomerNum INT,
@Name nvarchar(30),
@Code nvarchar(10),
@City nvarchar(30),
@State nvarchar(30),
@ZipCode nvarchar(30),
@Email nvarchar(100),
@Active bit,
@OrderBy nvarchar(100) = 'BPNum',
@OrderDir nvarchar(50) = 'ASC',
@PageNumber int = 0,
@PageSize int = 0
AS
BEGIN

  SET NOCOUNT ON;
  WITH CustomerData
  AS (SELECT
    B.BPNum,
    B.GlobalCustomerNum,
    B.Code,
    B.Name,
    B.Adress1,
    B.Adress2,
    B.City,
    B.State,
    B.ZipCode,
    B.Country,
    B.Balance,
    B.TotalCredit,
    B.LogoPath,
    B.InternNote,
    B.OrderNote,
    B.Email,
    B.WebSite,
    B.FaceBook,
    B.Active,
    B.GlobalCategoryNum,
    GC.Name AS GlobalCategoryName,
    B.BusinessCategoryNum,
    BC.Name AS BusinessCategoryName,
    B.TaxGroupNum,
    B.CurrencyNum,
    B.PaymentTermsNum,
    B.RatingValueNum,
    B.CustomField1Name,
    B.CustomField1Value,
    B.CustomField1Vis,
    B.CustomField2Name,
    B.CustomField2Value,
    B.CustomField2Vis,
    B.CustomField3Name,
    B.CustomField3Value,
    B.CustomField3Vis,
    B.CustomField4Name,
    B.CustomField4Value,
    B.CustomField4Vis,
    B.CustomField5Name,
    B.CustomField5Value,
    B.CustomField5Vis,
    B.CustomField6Name,
    B.CustomField6Value,
    B.CustomField6Vis,
    B.CustomField7Name,
    B.CustomField7Value,
    B.CustomField7Vis,
    B.CustomField8Name,
    B.CustomField8Value,
    B.CustomField8Vis,
    ROW_NUMBER() OVER (ORDER BY CASE
      WHEN @OrderDir = 'DESC' THEN CASE
          WHEN @OrderBy = 'Name' THEN B.Name
          WHEN @OrderBy = 'Code' THEN B.Code
          WHEN @OrderBy = 'City' THEN B.City
          WHEN @OrderBy = 'State' THEN B.State
        END
    END DESC, CASE
      WHEN @OrderDir = 'ASC' THEN CASE
          WHEN @OrderBy = 'Name' THEN B.Name
          WHEN @OrderBy = 'Code' THEN B.Code
          WHEN @OrderBy = 'City' THEN B.City
          WHEN @OrderBy = 'State' THEN B.State
        END
    END ASC, CASE
      WHEN @OrderDir = 'DESC' THEN CASE
          WHEN @OrderBy = 'BPNum' THEN B.BPNum
        END
    END DESC, CASE
      WHEN @OrderDir = 'ASC' THEN CASE
          WHEN @OrderBy = 'BPNum' THEN B.BPNum
        END
    END ASC) RowNumber
  FROM [dbo].[BP] B
  LEFT JOIN GlobalCategories GC
    ON B.GlobalCategoryNum = GC.GlobalCategoryNum
  LEFT JOIN BusinessCategories BC
    ON B.BusinessCategoryNum = BC.BusinessCategoryNum
  WHERE @BPNum IN (B.BPNum, 0)
  AND @GlobalCustomerNum IN (B.GlobalCustomerNum,0)
  AND ((B.Name Like '%'+@Name+'%') OR (@Name=''))
  AND @GlobalCustomerNum IN (B.GlobalCustomerNum,0)
  AND ((B.City LIKE '%'+@City+'%') OR (@City=''))
  AND ((B.State LIKE '%'+@State+'%') OR (@State=''))
  AND ((B.ZipCode LIKE '%'+@ZipCode+'%') OR (@ZipCode=''))
  AND ((B.Email LIKE '%'+@Email+'%') OR (@Email=''))
  AND ((@Active is NULL) OR (B.Active=@Active))
  )

  SELECT
    C.BPNum,
    C.GlobalCustomerNum,
    C.Code,
    C.Name,
    C.Adress1,
    C.Adress2,
    C.City,
    C.State,
    C.ZipCode,
    C.Country,
    C.Balance,
    C.TotalCredit,
    C.LogoPath,
    C.InternNote,
    C.OrderNote,
    C.Email,
    C.WebSite,
    C.FaceBook,
    C.Active,
    C.GlobalCategoryNum,
    C.GlobalCategoryName,
    C.BusinessCategoryNum,
    C.BusinessCategoryName,
    C.TaxGroupNum,
    C.CurrencyNum,
    C.PaymentTermsNum,
    C.RatingValueNum,
    C.CustomField1Name,
    C.CustomField1Value,
    C.CustomField1Vis,
    C.CustomField2Name,
    C.CustomField2Value,
    C.CustomField2Vis,
    C.CustomField3Name,
    C.CustomField3Value,
    C.CustomField3Vis,
    C.CustomField4Name,
    C.CustomField4Value,
    C.CustomField4Vis,
    C.CustomField5Name,
    C.CustomField5Value,
    C.CustomField5Vis,
    C.CustomField6Name,
    C.CustomField6Value,
    C.CustomField6Vis,
    C.CustomField7Name,
    C.CustomField7Value,
    C.CustomField7Vis,
    C.CustomField8Name,
    C.CustomField8Value,
    C.CustomField8Vis,
    (SELECT
      COUNT(BPNum)
    FROM CustomerData)
    TotalRecords
  FROM CustomerData C
  WHERE (RowNumber BETWEEN ((@PageNumber - 1) * @PageSize + 1)
  AND ((@PageNumber - 1) * @PageSize
  + @PageSize))
  OR (@PageSize = 0
  OR @PageNumber = 0
  )
  ORDER BY RowNumber ASC;
END

GO
/****** Object:  StoredProcedure [dbo].[p_FilterItems]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_FilterItems]
@ItemNum int,
@GlobalCustomerNum int,
@Code nvarchar(20),
@EAN13 nvarchar(30),
@ItemTypeNum int,
@CategoryNum int,
@SubCategoryNum int,
@DefaultSupplierBPNum int,
@CountryOfOriginNum int,
@OrderBy nvarchar(100) = 'ItemNum',
@OrderDir nvarchar(50) = 'ASC',
@PageNumber int = 0,
@PageSize int = 0
AS
BEGIN
  SET NOCOUNT ON;
  WITH CTE_Items
  AS (SELECT
    I.ItemNum,
    I.GlobalCustomerNum,
    I.Code,
    I.Description,
    I.UPC,
    I.EAN13,
    I.ItemTypeNum,
    IT.Name AS ItemTypeName,
    I.CategoryNum,
    C.Name AS CategoryName,
    I.SubCategoryNum,
    SC.Name AS SubCategoryName,
    I.DefaultSupplierBPNum,
    I.PicturePath,
    I.CountryOfOriginNum,
	CU.Name as CountryOfOriginName,
    I.UMOItemNum,
    I.Volume,
    I.NetWeight,
    I.GrossWeight,
    I.IsBuyItem,
    I.IsPurchaseItem,
    I.AllowReturn,
    I.CustomField1Name,
    I.CustomField1Value,
    I.CustomField1Vis,
    I.CustomField2Name,
    I.CustomField2Value,
    I.CustomField2Vis,
    I.CustomField3Name,
    I.CustomField3Value,
    I.CustomField3Vis,
    I.CustomField4Name,
    I.CustomField4Value,
    I.CustomField4Vis,
    I.CustomField5Name,
    I.CustomField5Value,
    I.CustomField5Vis,
    I.CustomField6Name,
    I.CustomField6Value,
    I.CustomField6Vis,
    I.CustomField7Name,
    I.CustomField7Value,
    I.CustomField7Vis,
    I.CustomField8Name,
    I.CustomField8Value,
    I.CustomField8Vis,
    I.Active,
    ROW_NUMBER() OVER (ORDER BY CASE
      WHEN @OrderDir = 'DESC' THEN CASE
          WHEN @OrderBy = 'UPC' THEN I.UPC
          WHEN @OrderBy = 'EAN13' THEN I.EAN13
          WHEN @OrderBy = 'Code' THEN I.Code
		  WHEN @OrderBy = 'ItemTypeName' THEN IT.Name
		  WHEN @OrderBy = 'CategoryName' THEN C.Name		  
        END
    END DESC, CASE
      WHEN @OrderDir = 'ASC' THEN CASE
          WHEN @OrderBy = 'UPC' THEN I.UPC
          WHEN @OrderBy = 'EAN13' THEN I.EAN13
          WHEN @OrderBy = 'Code' THEN I.Code
		  WHEN @OrderBy = 'ItemTypeName' THEN IT.Name
		  WHEN @OrderBy = 'CategoryName' THEN C.Name
        END
    END ASC, CASE
      WHEN @OrderDir = 'DESC' THEN CASE
          WHEN @OrderBy = 'ItemNum' THEN I.ItemNum
        END
    END DESC, CASE
      WHEN @OrderDir = 'ASC' THEN CASE
          WHEN @OrderBy = 'ItemNum' THEN I.ItemNum
        END
    END ASC) RowNumber
  FROM [dbo].[Items] I
  LEFT JOIN [dbo].[ItemTypes] IT
    ON I.ItemTypeNum = IT.ItemTypeNum
  LEFT JOIN [dbo].[Categories] C
    ON I.CategoryNum = C.CategoryNum
  LEFT JOIN [dbo].[SubCategories] SC
    ON I.SubCategoryNum = SC.SubCategoryNum
  LEFT JOIN [dbo].[Countries] CU 
    ON CU.CountryNum=I.CountryOfOriginNum
  WHERE @ItemNum IN (I.ItemNum, 0)
  AND ((I.Code LIKE '%'+@Code+'%') OR (@Code=''))
  AND ((I.EAN13 LIKE '%'+@EAN13+'%') OR (@EAN13=''))
  AND @ItemTypeNum IN (I.ItemTypeNum,0)
  AND @CategoryNum IN (I.CategoryNum,0)
  AND @SubCategoryNum IN (I.SubCategoryNum,0)
  AND @DefaultSupplierBPNum IN (I.DefaultSupplierBPNum,0)
  AND @CountryOfOriginNum IN (I.CountryOfOriginNum,0)
  )
  SELECT
    *,
    (SELECT
      COUNT(ItemNum)
    FROM CTE_Items)
    TotalRecords
  FROM CTE_Items
  WHERE (RowNumber BETWEEN ((@PageNumber - 1) * @PageSize + 1)
  AND ((@PageNumber - 1) * @PageSize
  + @PageSize))
  OR (@PageSize = 0
  OR @PageNumber = 0
  )
  ORDER BY RowNumber ASC;
END

GO
/****** Object:  StoredProcedure [dbo].[p_FilterPO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_FilterPO] 
@PONum INT=0,
@GlobalCustomerNum INT=0,
@UserNum_SalesRep INT=0,
@AdressNum INT=0,
@DocSatesCode INT=0,
@BPCode NVARCHAR(MAX) ='',
@SORef nvarchar(20)='',
@SOStartDate Date=null,
@SOEndDate Date=null,
@SODueDateStartDate Date=null,
@SODueDateEndDate Date=null,
@OrderBy nvarchar(100) = 'SODate',
@OrderDir nvarchar(50) = 'DESC',
@PageNumber int = 0,
@PageSize int = 0
AS
BEGIN
	 WITH CTE_PO
	  AS (SELECT 
			   so.PONum
			  ,so.GlobalCustomerNum
			  ,so.BPNum
			  ,BP.Name as BillTo
			  ,BP.Code as BPCode
			  ,so.AdressNum
			  ,a.Name as Adress
			  ,so.SODate
			  ,so.SODueDate
			  ,so.LanguageNum
			  ,so.DocSatesCode
			  ,d.Name as Status
			  ,so.SORef
			  ,so.InternNote
			  ,so.VisibleNote
			  ,so.SOTotal
			  ,so.SOSubTotal
			  ,so.SOTaxTotal
			  ,so.SODiscountTotal
			  ,so.CreatedBy
			  ,so.UserNum
			  ,so.UserNum_SalesRep
			  ,(u.FirstName + ' ' + u.LastName) as Name_SalesRep,
			  ROW_NUMBER() OVER (ORDER BY  CASE
			  WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'Name_SalesRep' THEN u.FirstName				  
				END
				END DESC,
			    CASE
			    WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'SODate' THEN so.SODate	
				WHEN @OrderBy = 'SODueDate' THEN so.SODueDate				  
				END
				END DESC,
				 CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'SODate' THEN so.SODate	
				WHEN @OrderBy = 'SODueDate' THEN so.SODueDate				  
				END
				END ASC,				
				CASE
			    WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'SONum' THEN so.PONum				  
				END
				END DESC,
				CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'SONum' THEN so.PONum				  
				END
				END ASC, CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'Name_SalesRep' THEN u.FirstName				  
				END
				END ASC) RowNumber	  
			 FROM [dbo].[PO] so 
			 LEFT JOIN [dbo].[Users] u on
			 so.UserNum_SalesRep=u.UserNum	
			 LEFT JOIN dbo.BP on BP.BPNum = so.BPNum	
			 LEFT JOIN dbo.Adresses a on so.AdressNum=a.AdressNum 
			 LEFT JOIN [dbo].[DocStates] d on d.DocSatesNum=so.DocSatesCode
			 WHERE @UserNum_SalesRep in (u.UserNum,0)
			 AND ((so.SORef like '%'+@SORef+'%') or @SORef ='')
			 AND ((so.SODate >=@SOStartDate) or (@SOStartDate is null)) 
			 AND ((so.SODate <=@SOEndDate) OR (@SOEndDate is null))
			 AND ((so.SODueDate >=@SODueDateStartDate) or (@SODueDateStartDate is null)) 
			 AND ((so.SODueDate <=@SODueDateEndDate) OR (@SODueDateEndDate is null))
			 AND ((so.SODate <=@SOEndDate) OR (@SOEndDate is null))
			 AND ((@BPCode='') OR (BP.Code=@BPCode))
			 AND ((a.AdressNum=@AdressNum)OR (@AdressNum=0))
			 AND ((so.DocSatesCode=@DocSatesCode)OR (@DocSatesCode=0))
			 AND @PONum in (0,so.PONum)
		 )
	 Select *,
	 (SELECT
      COUNT(PONum)
      FROM CTE_PO)  TotalRecords
      from CTE_PO
	  WHERE (RowNumber BETWEEN ((@PageNumber - 1) * @PageSize + 1)
	  AND ((@PageNumber - 1) * @PageSize
	  + @PageSize))
	  OR (@PageSize = 0
	  OR @PageNumber = 0
	  )
	  ORDER BY RowNumber ASC;

END


GO
/****** Object:  StoredProcedure [dbo].[p_FilterSO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_FilterSO]
@SONum INT=0,
@GlobalCustomerNum INT=0,
@UserNum_SalesRep INT=0,
@AdressNum INT=0,
@DocSatesCode INT=0,
@BPCode NVARCHAR(MAX) ='',
@SORef nvarchar(20)='',
@SOStartDate Date=null,
@SOEndDate Date=null,
@SODueDateStartDate Date=null,
@SODueDateEndDate Date=null,
@OrderBy nvarchar(100) = 'SODate',
@OrderDir nvarchar(50) = 'DESC',
@PageNumber int = 0,
@PageSize int = 0

AS
BEGIN
    SET NOCOUNT ON;
	 WITH CTE_SO
	  AS (SELECT 
			   so.SONum
			  ,so.GlobalCustomerNum
			  ,so.BPNum
			  ,BP.Name as BillTo
			  ,BP.Code as BPCode
			  ,so.AdressNum
			  ,a.Name as Adress
			  ,so.SODate
			  ,so.SODueDate
			  ,so.LanguageNum
			  ,so.DocSatesCode
			  ,d.Name as Status
			  ,so.SORef
			  ,so.InternNote
			  ,so.VisibleNote
			  ,so.SOTotal
			  ,so.SOSubTotal
			  ,so.SOTaxTotal
			  ,so.SODiscountTotal
			  ,so.CreatedBy
			  ,so.UserNum
			  ,so.UserNum_SalesRep
			  ,(u.FirstName + ' ' + u.LastName) as Name_SalesRep,
			  ROW_NUMBER() OVER (ORDER BY  CASE
			  WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'Name_SalesRep' THEN u.FirstName				  
				END
				END DESC,
			    CASE
			    WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'SODate' THEN so.SODate	
				WHEN @OrderBy = 'SODueDate' THEN so.SODueDate				  
				END
				END DESC,
				 CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'SODate' THEN so.SODate	
				WHEN @OrderBy = 'SODueDate' THEN so.SODueDate				  
				END
				END ASC,				
				CASE
			    WHEN @OrderDir = 'DESC' THEN CASE
				WHEN @OrderBy = 'SONum' THEN so.SONum				  
				END
				END DESC,
				CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'SONum' THEN so.SONum				  
				END
				END ASC, CASE
			    WHEN @OrderDir = 'ASC' THEN CASE
				WHEN @OrderBy = 'Name_SalesRep' THEN u.FirstName				  
				END
				END ASC) RowNumber	  
			 FROM [dbo].[SO] so 
			 LEFT JOIN [dbo].[Users] u on
			 so.UserNum_SalesRep=u.UserNum	
			 LEFT JOIN dbo.BP on BP.BPNum = so.BPNum	
			 LEFT JOIN dbo.Adresses a on so.AdressNum=a.AdressNum 
			 LEFT JOIN [dbo].[DocStates] d on d.DocSatesNum=so.DocSatesCode
			 WHERE @UserNum_SalesRep in (u.UserNum,0)
			 AND ((so.SORef like '%'+@SORef+'%') or @SORef ='')
			 AND ((so.SODate >=@SOStartDate) or (@SOStartDate is null)) 
			 AND ((so.SODate <=@SOEndDate) OR (@SOEndDate is null))
			 AND ((so.SODueDate >=@SODueDateStartDate) or (@SODueDateStartDate is null)) 
			 AND ((so.SODueDate <=@SODueDateEndDate) OR (@SODueDateEndDate is null))
			 AND ((so.SODate <=@SOEndDate) OR (@SOEndDate is null))
			 AND ((@BPCode='') OR (BP.Code=@BPCode))
			 AND ((a.AdressNum=@AdressNum)OR (@AdressNum=0))
			 AND ((so.DocSatesCode=@DocSatesCode)OR (@DocSatesCode=0))
			 AND @SONum IN (0,so.SONum)
		 )
	 Select *,
	 (SELECT
      COUNT(SONum)
      FROM CTE_SO)  TotalRecords
      from CTE_SO
	  WHERE (RowNumber BETWEEN ((@PageNumber - 1) * @PageSize + 1)
	  AND ((@PageNumber - 1) * @PageSize
	  + @PageSize))
	  OR (@PageSize = 0
	  OR @PageNumber = 0
	  )
	  ORDER BY RowNumber ASC;
END


GO
/****** Object:  StoredProcedure [dbo].[p_FilterUsers]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_FilterUsers] @UserNum int,
@UserName nvarchar(30),
@GlobalCustomerNum INT,
@Name nvarchar(100),
@City nvarchar(20),
@State nvarchar(20),
@Active bit,
@IsManager bit,
@GenderNum int,
@OrderBy nvarchar(100) = 'UserNum',
@OrderDir nvarchar(50) = 'ASC',
@PageNumber int = 0,
@PageSize int = 0
AS
BEGIN
  SET NOCOUNT ON;
  WITH CTE_UserData
  AS (SELECT
    U.UserNum,
    U.GlobalCustomerNum,
    U.FirstName,
    U.LastName,
    U.Adress1,
    U.City,
    U.State,
    U.ZipCode,
    U.CountryNum,
    UC.Name AS CountryName,
    U.HourlyRate,
    U.HourlyRateOT,
    U.LogoPath,
    U.PrimaryPhone,
    U.GenderNum,
    G.Name AS GenderName,
    U.BirthDate,
    U.BirthCountryNum,
    U.ReferalTypeNum,
    U.SocialID,
    U.Active,
    U.UserName,
    U.Password,
    U.PasswordExpDate,
    U.Title,
    U.LanguageNum,
    U.IsManager,
    U.PositionNum,
    U.CitizenshipCountryNum,
    U.CitizenshipID,
    U.CitizenshipExpDate,
    U.PassportCountryNum,
    U.PassportID,
    U.PassportExpDate,
    U.ResidentCountryNum,
    U.ResidentCountryID,
    U.ResidentIDExpDate,
    U.WorkVisaID,
    U.WorkVisaExpDate,
    U.ReferalName,
    U.SASId,
    U.Commission,
    U.ResidentID,
    U.CustomField1Name,
    U.CustomField1Value,
    U.CustomField1Vis,
    U.CustomField2Name,
    U.CustomField2Value,
    U.CustomField2Vis,
    U.CustomField3Name,
    U.CustomField3Value,
    U.CustomField3Vis,
    U.CustomField4Name,
    U.CustomField4Value,
    U.CustomField4Vis,
    U.CustomField5Name,
    U.CustomField5Value,
    U.CustomField5Vis,
    U.CustomField6Name,
    U.CustomField6Value,
    U.CustomField6Vis,
    U.CustomField7Name,
    U.CustomField7Value,
    U.CustomField7Vis,
    U.CustomField8Name,
    U.CustomField8Value,
    U.CustomField8Vis,
    ROW_NUMBER() OVER (ORDER BY CASE
      WHEN @OrderDir = 'DESC' THEN CASE
          WHEN @OrderBy = 'FirstName' THEN U.FirstName
          WHEN @OrderBy = 'LastName' THEN U.LastName
		  WHEN @OrderBy = 'UserName' THEN U.UserName
          WHEN @OrderBy = 'City' THEN U.City
          WHEN @OrderBy = 'State' THEN U.State
		  WHEN @OrderBy = 'CountryName' THEN UC.Name
        END
    END DESC, CASE
      WHEN @OrderDir = 'ASC' THEN CASE
          WHEN @OrderBy = 'FirstName' THEN U.FirstName
          WHEN @OrderBy = 'LastName' THEN U.LastName
		  WHEN @OrderBy = 'UserName' THEN U.UserName
          WHEN @OrderBy = 'City' THEN U.City
          WHEN @OrderBy = 'State' THEN U.State
		  WHEN @OrderBy = 'CountryName' THEN UC.Name
        END
    END ASC) RowNumber
  FROM [dbo].[Users] U
  LEFT JOIN [dbo].[Genders] G
    ON U.GenderNum = G.GenderNum
  LEFT JOIN [dbo].[Countries] UC
    ON U.CountryNum = UC.CountryNum
  WHERE @UserNum IN (U.UserNum, 0)
  AND @GlobalCustomerNum IN (U.GlobalCustomerNum,0)
  AND ((U.UserName Like '%'+@UserName+'%') OR (@UserName=''))
  AND (((U.FirstName+' '+U.LastName) Like '%'+@Name+'%') OR (@Name=''))
  AND ((U.State LIKE '%'+@State+'%') OR (@State=''))
  AND ((U.City Like '%'+@City+'%') OR (@City=''))
  AND ((U.Active =@Active) OR (@Active is NULL))
  AND ((U.IsManager =@IsManager) OR (@IsManager is NULL))
  )
  SELECT
    *,
    (SELECT
      COUNT(UserNum)
    FROM CTE_UserData)
    TotalRecords
  FROM CTE_UserData
  WHERE (RowNumber BETWEEN ((@PageNumber - 1) * @PageSize + 1)
  AND ((@PageNumber - 1) * @PageSize
  + @PageSize))
  OR (@PageSize = 0
  OR @PageNumber = 0
  )
  ORDER BY RowNumber ASC;
END

GO
/****** Object:  StoredProcedure [dbo].[p_GetCustomerSearch]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


--[dbo].[p_GetCustomerSearch] @name ='sh'
CREATE PROC [dbo].[p_GetCustomerSearch]   --5,1
@Page int =1,
@RecordsPerPage int = 10,
@Name nvarchar(30) =NULL,
@Code nvarchar(10) =NULL,
@City  nvarchar(30) =NULL,
@State nvarchar(30) =NULL,
@ZIPCode nvarchar(10) =NULL,
@InternalNote nvarchar(max) =NULL,
@GlobalCategory int =NULL,
@BusinessCategory int =NULL,
@Email nvarchar(30) =NULL,
@Active bit =NULL
AS

BEGIN
SET NOCOUNT ON


-- Determine the first record and last record 
DECLARE @FirstRec int, @LastRec int

SELECT @FirstRec = (@Page - 1) * @RecordsPerPage
SELECT @LastRec = (@Page * @RecordsPerPage + 1);

WITH TempResult as
(
SELECT ROW_NUMBER() OVER(ORDER BY Bp.BPNum DESC) as RowNum, Bp.BPNum, Bp.Code, Bp.Name, Bp.City,Bp.State, GlobalCategories.Name AS GlobalCategoryName, BusinessCategories.Name AS BusinessCategory,
BP.Active, BP.LogoPath
FROM BP LEFT join GlobalCategories on BP.GlobalCategoryNum = GlobalCategories.GlobalCategoryNum
LEFT join BusinessCategories on BP.BusinessCategoryNum= BusinessCategories.BusinessCategoryNum

WHERE  (@Name IS NULL OR BP.Name LIKE '%' + @Name + '%')
AND (@Code IS NULL OR BP.Code LIKE '%' + @Code + '%')
AND (@City IS NULL OR BP.City LIKE '%' + @City + '%')
AND (@State IS NULL OR BP.State LIKE '%' + @State + '%')
AND (@ZIPCode IS NULL OR BP.ZipCode LIKE '%' + @ZIPCode + '%')
AND (@InternalNote IS NULL OR BP.InternNote LIKE '%' + @InternalNote + '%')
AND (@Email IS NULL OR BP.Email LIKE '%' + @Email + '%')
ANd (@GlobalCategory =0 OR BP.GlobalCategoryNum = @GlobalCategory )
AND (@BusinessCategory =0 OR BP.BusinessCategoryNum = @BusinessCategory )
AND (@Active IS NULL OR BP.Active = @Active )
)
SELECT top (@LastRec-1) *, (SELECT COUNT(RowNum) FROM TempResult) as TotalRecords  FROM TempResult
WHERE RowNum > @FirstRec AND RowNum < @LastRec




END




GO
/****** Object:  StoredProcedure [dbo].[p_InsertUsers]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[p_InsertUsers]
@GlobalCustomerNum int,
@FirstName nvarchar(30),
@LastName nvarchar(30),
@Adress1 nvarchar(40),
@City nvarchar(20),
@State nvarchar(20),
@ZipCode nvarchar(10),
@CountryNum int,
@HourlyRate float,
@HourlyRateOT float,
@LogoPath nvarchar(225),
@PrimaryPhone nvarchar(20),
@GenderNum int,
@BirthDate Date,
@BirthCountryNum int,
@ReferalTypeNum int,
@SocialID nvarchar(20),
@Active bit,
@UserName nvarchar(30),
@Password nvarchar(15),
@PasswordExpDate Date,
@Title nvarchar(20),
@LanguageNum int,
@IsManager bit,
@PositionNum int,
@CitizenshipCountryNum int,
@CitizenshipID varchar(20),
@CitizenshipExpDate Date,
@PassportCountryNum int,
@PassportID nvarchar(20),
@PassportExpDate Date,
@ResidentCountryNum int,
@ResidentCountryID nvarchar(20),
@ResidentIDExpDate Date,
@WorkVisaID nvarchar(20),
@WorkVisaExpDate Date,
@ReferalName nvarchar(50),
@SASId nvarchar(30),
@Commission int,
@ResidentID nvarchar(20),
@CustomField1Name nvarchar(15),
@CustomField1Value nvarchar(50),
@CustomField1Vis bit,
@CustomField2Name nvarchar(15),
@CustomField2Value nvarchar(50),
@CustomField2Vis bit,
@CustomField3Name nvarchar(15),
@CustomField3Value nvarchar(50),
@CustomField3Vis bit,
@CustomField4Name nvarchar(15),
@CustomField4Value nvarchar(50),
@CustomField4Vis bit,
@CustomField5Name nvarchar(15),
@CustomField5Value nvarchar(50),
@CustomField5Vis bit,
@CustomField6Name nvarchar(15),
@CustomField6Value nvarchar(50),
@CustomField6Vis bit,
@CustomField7Name nvarchar(15),
@CustomField7Value nvarchar(50),
@CustomField7Vis bit,
@CustomField8Name nvarchar(15),
@CustomField8Value nvarchar(50),
@CustomField8Vis bit
AS
BEGIN
	SET NOCOUNT ON;
Declare @UserNum int=0
IF NOT EXISTS ( SELECT TOP 1 UserNum from [dbo].[Users] where UserName=@UserName)
BEGIN
                     
INSERT INTO [dbo].[Users]
           ([GlobalCustomerNum]
           ,[FirstName]
           ,[LastName]
           ,[Adress1]
           ,[City]
           ,[State]
           ,[ZipCode]
           ,[CountryNum]
           ,[HourlyRate]
           ,[HourlyRateOT]
           ,[LogoPath]
           ,[PrimaryPhone]
           ,[GenderNum]
           ,[BirthDate]
           ,[BirthCountryNum]
           ,[ReferalTypeNum]
           ,[SocialID]
           ,[Active]
           ,[UserName]
           ,[Password]
           ,[PasswordExpDate]
           ,[Title]
           ,[LanguageNum]
           ,[IsManager]
           ,[PositionNum]
           ,[CitizenshipCountryNum]
           ,[CitizenshipID]
           ,[CitizenshipExpDate]
           ,[PassportCountryNum]
           ,[PassportID]
           ,[PassportExpDate]
           ,[ResidentCountryNum]
           ,[ResidentCountryID]
           ,[ResidentIDExpDate]
           ,[WorkVisaID]
           ,[WorkVisaExpDate]
		   ,[ReferalName]
           ,[SASId]
           ,[Commission]
           ,[ResidentID]
           ,[CustomField1Name]
           ,[CustomField1Value]
           ,[CustomField1Vis]
           ,[CustomField2Name]
           ,[CustomField2Value]
           ,[CustomField2Vis]
           ,[CustomField3Name]
           ,[CustomField3Value]
           ,[CustomField3Vis]
           ,[CustomField4Name]
           ,[CustomField4Value]
           ,[CustomField4Vis]
           ,[CustomField5Name]
           ,[CustomField5Value]
           ,[CustomField5Vis]
           ,[CustomField6Name]
           ,[CustomField6Value]
           ,[CustomField6Vis]
           ,[CustomField7Name]
           ,[CustomField7Value]
           ,[CustomField7Vis]
           ,[CustomField8Name]
           ,[CustomField8Value]
           ,[CustomField8Vis])
     VALUES
           (@GlobalCustomerNum
           ,@FirstName
           ,@LastName
           ,@Adress1
           ,@City
           ,@State
           ,@ZipCode
           ,@CountryNum
           ,@HourlyRate
           ,@HourlyRateOT
           ,@LogoPath
           ,@PrimaryPhone
           ,@GenderNum
           ,@BirthDate
           ,@BirthCountryNum
           ,@ReferalTypeNum
           ,@SocialID
           ,@Active
           ,@UserName
           ,@Password
           ,@PasswordExpDate
           ,@Title
           ,@LanguageNum
           ,@IsManager
           ,@PositionNum
           ,@CitizenshipCountryNum
           ,@CitizenshipID
           ,@CitizenshipExpDate
           ,@PassportCountryNum
           ,@PassportID
           ,@PassportExpDate
           ,@ResidentCountryNum
           ,@ResidentCountryID
           ,@ResidentIDExpDate
           ,@WorkVisaID
           ,@WorkVisaExpDate
		   ,@ReferalName
           ,@SASId
           ,@Commission
           ,@ResidentID
           ,@CustomField1Name
           ,@CustomField1Value
           ,@CustomField1Vis
           ,@CustomField2Name
           ,@CustomField2Value
           ,@CustomField2Vis
           ,@CustomField3Name
           ,@CustomField3Value
           ,@CustomField3Vis
           ,@CustomField4Name
           ,@CustomField4Value
           ,@CustomField4Vis
           ,@CustomField5Name
           ,@CustomField5Value
           ,@CustomField5Vis
           ,@CustomField6Name
           ,@CustomField6Value
           ,@CustomField6Vis
           ,@CustomField7Name
           ,@CustomField7Value
           ,@CustomField7Vis
           ,@CustomField8Name
           ,@CustomField8Value
           ,@CustomField8Vis)

		  SET @UserNum=@@IDENTITY

		  --LogDBChanges (@UserNum,SesUserID,"ADD", Insert SQL Query String,GetDate())

		  Select @UserNum as UserNum
END
ELSE
BEGIN
 Select 0 as UserNum
END
END



GO
/****** Object:  StoredProcedure [dbo].[p_SaveAdresses]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_SaveAdresses]
    @AdressNum  INT,
    @Name       NVARCHAR(35),
	@AdressType NVARCHAR(1),
	@Adress1    NVARCHAR(30),
	@Adress2    NVARCHAR(30),
	@City       NVARCHAR(30),
	@StateNum   INT,
	@ZipCode    NVARCHAR(10),
	@CountryNum INT,
	@Active     BIT,
	@Deleted    BIT
AS
  BEGIN
      SET nocount ON;

      IF @AdressNum = 0
        BEGIN
            IF NOT EXISTS (SELECT TOP 1 [adressnum]
                           FROM   [dbo].[adresses]
                           WHERE  [name] = @Name)
              BEGIN
                  INSERT INTO [dbo].[adresses]
                              ([name],
                               [adresstype],
                               [adress1],
                               [adress2],
                               [city],
                               [statenum],
                               [zipcode],
                               [countrynum],
                               [active],
                               [deleted])
                  VALUES      (@Name,
                               @AdressType,
                               @Adress1,
                               @Adress2,
                               @City,
                               @StateNum,
                               @ZipCode,
                               @CountryNum,
                               @Active,
                               @Deleted)

                  SET @AdressNum= @@IDENTITY

                  SELECT @AdressNum AS AdressNum
              END
            ELSE
              BEGIN
                  SELECT 0 AS AdressNum
              END
        END
      ELSE
        BEGIN
            DECLARE @tempnum INT =0

            SELECT TOP 1 @tempnum = Isnull([adressnum], 0)
            FROM   [dbo].[adresses]
            WHERE  [name] = @Name

            IF @tempnum = 0
                OR @tempnum = @AdressNum
              BEGIN
                  UPDATE [dbo].[adresses]
                  SET    [name] = @Name,
                         [adresstype] = @AdressType,
                         [adress1] = @Adress1,
                         [adress2] = @Adress2,
                         [city] = @City,
                         [statenum] = @StateNum,
                         [zipcode] = @ZipCode,
                         [countrynum] = @CountryNum,
                         [active] = @Active,
                         [deleted] = @Deleted
                  WHERE  adressnum = @AdressNum

                  SELECT @AdressNum AS AdressNum
              END
            ELSE
              BEGIN
                  SELECT 0 AS AdressNum
              END
        END
  END  
GO
/****** Object:  StoredProcedure [dbo].[p_SaveBP]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[p_SaveBP]
		   @BPNum int,
		   @GlobalCustomerNum int,
           @Code nvarchar(10),
           @Name nvarchar(30),
           @Adress1 nvarchar(30),
           @Adress2 nvarchar(30),
           @City nvarchar(30),
           @State nvarchar(30),
           @ZipCode nvarchar(10),
           @Country nvarchar(30),
           @Balance float,
           @TotalCredit float,
           @LogoPath nvarchar(100),
           @InternNote text,
           @OrderNote text,
           @Email nvarchar(100),
           @WebSite nvarchar(100),
           @FaceBook nvarchar(50),
           @Active bit,
           @GlobalCategoryNum int,
           @BusinessCategoryNum int,
           @TaxGroupNum int,
           @CurrencyNum int,
           @PaymentTermsNum int,
           @RatingValueNum int,
           @CustomField1Name nvarchar(15),
           @CustomField1Value nvarchar(50),
           @CustomField1Vis bit,
           @CustomField2Name nvarchar(15),
           @CustomField2Value nvarchar(50),
           @CustomField2Vis bit,
           @CustomField3Name nvarchar(15),
           @CustomField3Value nvarchar(50),
           @CustomField3Vis bit,
           @CustomField4Name nvarchar(15),
           @CustomField4Value nvarchar(50),
           @CustomField4Vis bit,
           @CustomField5Name nvarchar(15),
           @CustomField5Value nvarchar(50),
           @CustomField5Vis bit,
           @CustomField6Name nvarchar(15),
           @CustomField6Value nvarchar(50),
           @CustomField6Vis bit,
           @CustomField7Name nvarchar(15),
           @CustomField7Value nvarchar(50),
           @CustomField7Vis bit,
           @CustomField8Name nvarchar(15),
           @CustomField8Value nvarchar(50),
           @CustomField8Vis bit
           
AS
	BEGIN
	SET NOCOUNT ON;
		IF ISNULL(@BPNum,0) = 0
			BEGIN
			INSERT INTO [dbo].[BP]
					   ([GlobalCustomerNum]
					   ,[Code]
					   ,[Name]
					   ,[Adress1]
					   ,[Adress2]
					   ,[City]
					   ,[State]
					   ,[ZipCode]
					   ,[Country]
					   ,[Balance]
					   ,[TotalCredit]
					   ,[LogoPath]
					   ,[InternNote]
					   ,[OrderNote]
					   ,[Email]
					   ,[WebSite]
					   ,[FaceBook]
					   ,[Active]
					   ,[GlobalCategoryNum]
					   ,[BusinessCategoryNum]
					   ,[TaxGroupNum]
					   ,[CurrencyNum]
					   ,[PaymentTermsNum]
					   ,[RatingValueNum]
					   ,[CustomField1Name]
					   ,[CustomField1Value]
					   ,[CustomField1Vis]
					   ,[CustomField2Name]
					   ,[CustomField2Value]
					   ,[CustomField2Vis]
					   ,[CustomField3Name]
					   ,[CustomField3Value]
					   ,[CustomField3Vis]
					   ,[CustomField4Name]
					   ,[CustomField4Value]
					   ,[CustomField4Vis]
					   ,[CustomField5Name]
					   ,[CustomField5Value]
					   ,[CustomField5Vis]
					   ,[CustomField6Name]
					   ,[CustomField6Value]
					   ,[CustomField6Vis]
					   ,[CustomField7Name]
					   ,[CustomField7Value]
					   ,[CustomField7Vis]
					   ,[CustomField8Name]
					   ,[CustomField8Value]
					   ,[CustomField8Vis])
				 VALUES
				 (@GlobalCustomerNum ,
					   @Code ,
					   @Name ,
					   @Adress1 ,
					   @Adress2 ,
					   @City ,
					   @State,
					   @ZipCode ,
					   @Country ,
					   @Balance ,
					   @TotalCredit ,
					   @LogoPath ,
					   @InternNote ,
					   @OrderNote ,
					   @Email ,
					   @WebSite ,
					   @FaceBook ,
					   @Active ,
					   @GlobalCategoryNum ,
					   @BusinessCategoryNum ,
					   @TaxGroupNum ,
					   @CurrencyNum ,
					   @PaymentTermsNum ,
					   @RatingValueNum ,
					   @CustomField1Name ,
					   @CustomField1Value ,
					   @CustomField1Vis ,
					   @CustomField2Name ,
					   @CustomField2Value ,
					   @CustomField2Vis ,
					   @CustomField3Name ,
					   @CustomField3Value ,
					   @CustomField3Vis ,
					   @CustomField4Name ,
					   @CustomField4Value,
					   @CustomField4Vis ,
					   @CustomField5Name ,
					   @CustomField5Value ,
					   @CustomField5Vis ,
					   @CustomField6Name ,
					   @CustomField6Value ,
					   @CustomField6Vis ,
					   @CustomField7Name ,
					   @CustomField7Value,
					   @CustomField7Vis ,
					   @CustomField8Name ,
					   @CustomField8Value ,
					   @CustomField8Vis )

						SET @BpNum =@@IDENTITY
						SELECT @BpNum as BPNum
				END
		ELSE

		BEGIN
		 UPDATE [dbo].[BP]
		   SET [GlobalCustomerNum] = @GlobalCustomerNum 
			  ,[Code] = @Code 
			  ,[Name] = @Name 
			  ,[Adress1] = @Adress1
			  ,[Adress2] = @Adress2
			  ,[City] = @City
			  ,[State] = @State
			  ,[ZipCode] = @ZipCode
			  ,[Country] = @Country
			  ,[Balance] = @Balance
			  ,[TotalCredit] = @TotalCredit
			  ,[LogoPath] = @LogoPath
			  ,[InternNote] = @InternNote
			  ,[OrderNote] = @OrderNote
			  ,[Email] = @Email
			  ,[WebSite] = @WebSite
			  ,[FaceBook] = @FaceBook
			  ,[Active] = @Active
			  ,[GlobalCategoryNum] = @GlobalCategoryNum
			  ,[BusinessCategoryNum] = @BusinessCategoryNum
			  ,[TaxGroupNum] = @TaxGroupNum
			  ,[CurrencyNum] = @CurrencyNum
			  ,[PaymentTermsNum] = @PaymentTermsNum
			  ,[RatingValueNum] = @RatingValueNum
			  ,[CustomField1Name] = @CustomField1Name
			  ,[CustomField1Value] = @CustomField1Value
			  ,[CustomField1Vis] = @CustomField1Vis
			  ,[CustomField2Name] = @CustomField2Name
			  ,[CustomField2Value] = @CustomField2Value
			  ,[CustomField2Vis] = @CustomField2Vis
			  ,[CustomField3Name] = @CustomField3Name
			  ,[CustomField3Value] =@CustomField3Value 
			  ,[CustomField3Vis] = @CustomField3Vis
			  ,[CustomField4Name] = @CustomField4Name
			  ,[CustomField4Value] = @CustomField4Value
			  ,[CustomField4Vis] = @CustomField4Vis 
			  ,[CustomField5Name] = @CustomField5Name
			  ,[CustomField5Value] = @CustomField5Value
			  ,[CustomField5Vis] = @CustomField5Vis
			  ,[CustomField6Name] = @CustomField6Name
			  ,[CustomField6Value] = @CustomField6Value
			  ,[CustomField6Vis] = @CustomField6Vis
			  ,[CustomField7Name] = @CustomField7Name
			  ,[CustomField7Value] = @CustomField7Value
			  ,[CustomField7Vis] = @CustomField7Vis
			  ,[CustomField8Name] = @CustomField8Name
			  ,[CustomField8Value] = @CustomField8Value
			  ,[CustomField8Vis] = @CustomField8Vis
		 WHERE BPNum = @BPNum
		 SELECT @BpNum as ItemNum
		END
		END








GO
/****** Object:  StoredProcedure [dbo].[p_SaveItem]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[p_SaveItem]
@ItemNum int,
@GlobalCustomerNum	int,
@Code	nvarchar(20),
@Description	nvarchar(50),
@UPC	nvarchar(20),
@EAN13	nvarchar(30),
@ItemTypeNum	int,
@CategoryNum	int,
@SubCategoryNum	int,
@DefaultSupplierBPNum	int,
@PicturePath	nvarchar(30),
@CountryOfOriginNum	int,
@UMOItemNum	int,
@Volume	int,
@NetWeight	float,
@GrossWeight	float,
@IsBuyItem	bit,
@IsPurchaseItem	bit,
@AllowReturn	bit,
@CustomField1Name	nvarchar(15),
@CustomField1Value	nvarchar(50),
@CustomField1Vis	bit,
@CustomField2Name	nvarchar(15),
@CustomField2Value	nvarchar(50),
@CustomField2Vis	bit,
@CustomField3Name	nvarchar(15),
@CustomField3Value	nvarchar(50),
@CustomField3Vis	bit,
@CustomField4Name	nvarchar(15),
@CustomField4Value	nvarchar(50),
@CustomField4Vis	bit,
@CustomField5Name	nvarchar(15),
@CustomField5Value	nvarchar(50),
@CustomField5Vis	bit,
@CustomField6Name	nvarchar(15),
@CustomField6Value	nvarchar(50),
@CustomField6Vis	bit,
@CustomField7Name	nvarchar(15),
@CustomField7Value	nvarchar(50),
@CustomField7Vis	bit,
@CustomField8Name	nvarchar(15),
@CustomField8Value	nvarchar(50),
@CustomField8Vis	bit,
@Active	bit

AS
BEGIN
	SET NOCOUNT ON;
	
	if Isnull(@ItemNum,0) = 0
	Begin
	INSERT INTO [dbo].[Items]
			   ([GlobalCustomerNum]
			   ,[Code]
			   ,[Description]
			   ,[UPC]
			   ,[EAN13]
			   ,[ItemTypeNum]
			   ,[CategoryNum]
			   ,[SubCategoryNum]
			   ,[DefaultSupplierBPNum]
			   ,[PicturePath]
			   ,[CountryOfOriginNum]
			   ,[UMOItemNum]
			   ,[Volume]
			   ,[NetWeight]
			   ,[GrossWeight]
			   ,[IsBuyItem]
			   ,[IsPurchaseItem]
			   ,[AllowReturn]
			   ,[CustomField1Name]
			   ,[CustomField1Value]
			   ,[CustomField1Vis]
			   ,[CustomField2Name]
			   ,[CustomField2Value]
			   ,[CustomField2Vis]
			   ,[CustomField3Name]
			   ,[CustomField3Value]
			   ,[CustomField3Vis]
			   ,[CustomField4Name]
			   ,[CustomField4Value]
			   ,[CustomField4Vis]
			   ,[CustomField5Name]
			   ,[CustomField5Value]
			   ,[CustomField5Vis]
			   ,[CustomField6Name]
			   ,[CustomField6Value]
			   ,[CustomField6Vis]
			   ,[CustomField7Name]
			   ,[CustomField7Value]
			   ,[CustomField7Vis]
			   ,[CustomField8Name]
			   ,[CustomField8Value]
			   ,[CustomField8Vis]
			   ,[Active])
		 VALUES
			   (
				@GlobalCustomerNum,
				@Code,
				@Description,
				@UPC,
				@EAN13,
				@ItemTypeNum,
				@CategoryNum,
				@SubCategoryNum,
				@DefaultSupplierBPNum,
				@PicturePath,
				@CountryOfOriginNum,
				@UMOItemNum,
				@Volume,
				@NetWeight,
				@GrossWeight,
				@IsBuyItem,
				@IsPurchaseItem,
				@AllowReturn,
				@CustomField1Name,
				@CustomField1Value,
				@CustomField1Vis,
				@CustomField2Name,
				@CustomField2Value,
				@CustomField2Vis,
				@CustomField3Name,
				@CustomField3Value,
				@CustomField3Vis,
				@CustomField4Name,
				@CustomField4Value,
				@CustomField4Vis,
				@CustomField5Name,
				@CustomField5Value,
				@CustomField5Vis,
				@CustomField6Name,
				@CustomField6Value,
				@CustomField6Vis,
				@CustomField7Name,
				@CustomField7Value,
				@CustomField7Vis,
				@CustomField8Name,
				@CustomField8Value,
				@CustomField8Vis,
				@Active)

			  SET @ItemNum=@@IDENTITY
			  Select @ItemNum as ItemNum
			  --LogDBChanges (@UserNum,SesUserID,"ADD", Insert SQL Query String,GetDate())

	if @ItemNum <> 0
	Begin

		INSERT INTO [dbo].[ItemsPackMsr]
			   ([ItemNum],[GlobalCustomerNum],[Code],[Description]
			   ,[UnitPerPack],[IsPurchaseDefault],[IsSalesDefault],[IsBaseUOM],[Active])
		 VALUES
			   (@ItemNum,@GlobalCustomerNum,@Code,@Description
			   ,1,0,0,1,1)
	End
		  
	End
Else
	Begin
		UPDATE [dbo].[Items]
		   SET [GlobalCustomerNum] = @GlobalCustomerNum,
			  [Code] = @Code,
			  [Description] = @Description,
			  [UPC] = @UPC,
			  [EAN13] = @EAN13,
			  [ItemTypeNum] = @ItemTypeNum, 
			  [CategoryNum] = @CategoryNum, 
			  [SubCategoryNum] = @SubCategoryNum, 
			  [DefaultSupplierBPNum] = @DefaultSupplierBPNum, 
			  [PicturePath] = @PicturePath,
			  [CountryOfOriginNum] = @CountryOfOriginNum, 
			  [UMOItemNum] = @UMOItemNum, 
			  [Volume] = @Volume, 
			  [NetWeight] = @NetWeight, 
			  [GrossWeight] = @GrossWeight, 
			  [IsBuyItem] = @IsBuyItem,
			  [IsPurchaseItem] = @IsPurchaseItem,
			  [AllowReturn] = @AllowReturn,
			  [CustomField1Name] = @CustomField1Name,
			  [CustomField1Value] = @CustomField1Value,
			  [CustomField1Vis] = @CustomField1Vis,
			  [CustomField2Name] = @CustomField2Name,
			  [CustomField2Value] = @CustomField2Value,
			  [CustomField2Vis] = @CustomField2Vis,
			  [CustomField3Name] = @CustomField3Name,
			  [CustomField3Value] = @CustomField3Value,
			  [CustomField3Vis] = @CustomField3Vis,
			  [CustomField4Name] = @CustomField4Name,
			  [CustomField4Value] = @CustomField4Value,
			  [CustomField4Vis] = @CustomField4Vis,
			  [CustomField5Name] = @CustomField5Name,
			  [CustomField5Value] = @CustomField5Value,
			  [CustomField5Vis] = @CustomField5Vis,
			  [CustomField6Name] = @CustomField6Name,
			  [CustomField6Value] = @CustomField6Value,
			  [CustomField6Vis] = @CustomField6Vis,
			  [CustomField7Name] = @CustomField7Name,
			  [CustomField7Value] = @CustomField7Value,
			  [CustomField7Vis] = @CustomField7Vis,
			  [CustomField8Name] = @CustomField8Name,
			  [CustomField8Value] = @CustomField8Value,
			  [CustomField8Vis] = @CustomField8Vis,
			  [Active] = @Active
		 WHERE ItemNum = @ItemNum
		 Select @ItemNum as ItemNum

	End

	
END






GO
/****** Object:  StoredProcedure [dbo].[p_SavePO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[p_SavePO] 
@PONum int,
@GlobalCustomerNum int,
@BPNum INT,
@AdressNum int,
@SODate Date,
@SODueDate Date,
@LanguageNum int,
@DocSatesCode int,
@SORef nvarchar(20),
@InternNote TEXT,
@VisibleNote Text,
@SOTotal float,
@SOSubTotal float,
@SOTaxTotal float,
@SODiscountTotal float,
@CreatedBy nchar(10),
@UserNum int,
@UserNum_SalesRep int	
AS
BEGIN
	SET NOCOUNT ON;
	IF @PONum=0
	BEGIN
	
INSERT INTO [dbo].[PO]
           ([GlobalCustomerNum]
           ,[BPNum]
           ,[AdressNum]
           ,[SODate]
           ,[SODueDate]
           ,[LanguageNum]
           ,[DocSatesCode]
           ,[SORef]
           ,[InternNote]
           ,[VisibleNote]
           ,[SOTotal]
           ,[SOSubTotal]
           ,[SOTaxTotal]
           ,[SODiscountTotal]
           ,[CreatedBy]
           ,[UserNum]
           ,[UserNum_SalesRep])
     VALUES
           (@GlobalCustomerNum
           ,@BPNum
           ,@AdressNum
           ,@SODate
           ,@SODueDate
           ,@LanguageNum
           ,@DocSatesCode
           ,@SORef
           ,@InternNote
           ,@VisibleNote
           ,@SOTotal
           ,@SOSubTotal
           ,@SOTaxTotal
           ,@SODiscountTotal
           ,@CreatedBy
           ,@UserNum
           ,@UserNum_SalesRep)

		   SET @PONum=@@IDENTITY
		   SELECT @PONum as PONum
	END
	ELSE
	BEGIN
	   UPDATE [dbo].[PO]
	   SET [GlobalCustomerNum] = @GlobalCustomerNum
		  ,[BPNum] = @BPNum
		  ,[AdressNum] = @AdressNum
		  ,[SODate] = @SODate
		  ,[SODueDate] = @SODueDate
		  ,[LanguageNum] = @LanguageNum
		  ,[DocSatesCode] = @DocSatesCode
		  ,[SORef] = @SORef
		  ,[InternNote] = @InternNote
		  ,[VisibleNote] = @VisibleNote
		  ,[SOTotal] = @SOTotal
		  ,[SOSubTotal] = @SOSubTotal
		  ,[SOTaxTotal] = @SOTaxTotal
		  ,[SODiscountTotal] = @SODiscountTotal
		  ,[CreatedBy] = @CreatedBy
		  ,[UserNum] = @UserNum
		  ,[UserNum_SalesRep] = @UserNum_SalesRep
	   WHERE [PONum]=@PONum	   
	   SELECT @PONum as PONum
	END
  
END


GO
/****** Object:  StoredProcedure [dbo].[p_SavePO_L]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_SavePO_L] 
@PO_LNum int,
@PONum int,
@ItemNum int,
@ItemType varchar(10),
@LineDesc nvarchar(65),
@Discount float,
@UnitPrice float,
@ItemsPackMsrNum int,
@Quantity float,
@TaxGroupNum int,
@TaxNum_1 int,
@TaxNum_2 int ,
@LineTotal float,
@DocSatesNum int 
AS
BEGIN	
	SET NOCOUNT ON;
 if @PO_LNum=0
 BEGIN
  INSERT INTO [dbo].[PO_L]
           ([PONum]
           ,[ItemNum]
		   ,[ItemType]
           ,[LineDesc]
           ,[Discount]
           ,[UnitPrice]
           ,[ItemsPackMsrNum]
           ,[Quantity]
		   ,[TaxGroupNum]
           ,[TaxNum_1]
           ,[TaxNum_2]
           ,[LineTotal]
           ,[DocSatesNum])
     VALUES
           (@PONum
           ,@ItemNum
		   ,@ItemNum
           ,@LineDesc
           ,@Discount
           ,@UnitPrice
           ,@ItemsPackMsrNum
           ,@Quantity
		   ,@TaxGroupNum
           ,@TaxNum_1
           ,@TaxNum_2
           ,@LineTotal
           ,@DocSatesNum)
   SET @PO_LNum=@@IDENTITY
   SELECT @PO_LNum as PO_LNum
 END
 ELSE
  BEGIN
    UPDATE [dbo].[PO_L]
    SET [PONum] = @PONum
      ,[ItemNum] = @ItemNum
	  ,[ItemType] = @ItemType
      ,[LineDesc] = @LineDesc
      ,[Discount] = @Discount
      ,[UnitPrice] = @UnitPrice
      ,[ItemsPackMsrNum] = @ItemsPackMsrNum
      ,[Quantity] = @Quantity
	  ,[TaxGroupNum]=@TaxGroupNum
	  ,[TaxNum_1] = @TaxNum_1
      ,[TaxNum_2] = @TaxNum_2
      ,[LineTotal] = @LineTotal
      ,[DocSatesNum] = @DocSatesNum
	 WHERE PO_LNum=@PO_LNum
	 SELECT @PO_LNum as PO_LNum

 END
END


GO
/****** Object:  StoredProcedure [dbo].[p_SaveSO]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create PROCEDURE [dbo].[p_SaveSO]
@SONum int,
@GlobalCustomerNum int,
@BPNum INT,
@AdressNum int,
@SODate Date,
@SODueDate Date,
@LanguageNum int,
@DocSatesCode int,
@SORef nvarchar(20),
@InternNote TEXT,
@VisibleNote Text,
@SOTotal float,
@SOSubTotal float,
@SOTaxTotal float,
@SODiscountTotal float,
@CreatedBy nchar(10),
@UserNum int,
@UserNum_SalesRep int
AS
BEGIN	
	SET NOCOUNT ON;
	IF @SONum=0
	BEGIN
	
INSERT INTO [dbo].[SO]
           ([GlobalCustomerNum]
           ,[BPNum]
           ,[AdressNum]
           ,[SODate]
           ,[SODueDate]
           ,[LanguageNum]
           ,[DocSatesCode]
           ,[SORef]
           ,[InternNote]
           ,[VisibleNote]
           ,[SOTotal]
           ,[SOSubTotal]
           ,[SOTaxTotal]
           ,[SODiscountTotal]
           ,[CreatedBy]
           ,[UserNum]
           ,[UserNum_SalesRep])
     VALUES
           (@GlobalCustomerNum
           ,@BPNum
           ,@AdressNum
           ,@SODate
           ,@SODueDate
           ,@LanguageNum
           ,@DocSatesCode
           ,@SORef
           ,@InternNote
           ,@VisibleNote
           ,@SOTotal
           ,@SOSubTotal
           ,@SOTaxTotal
           ,@SODiscountTotal
           ,@CreatedBy
           ,@UserNum
           ,@UserNum_SalesRep)

		   SET @SONum=@@IDENTITY
		   SELECT @SONum as SONum
	END
	ELSE
	BEGIN
	   UPDATE [dbo].[SO]
	   SET [GlobalCustomerNum] = @GlobalCustomerNum
		  ,[BPNum] = @BPNum
		  ,[AdressNum] = @AdressNum
		  ,[SODate] = @SODate
		  ,[SODueDate] = @SODueDate
		  ,[LanguageNum] = @LanguageNum
		  ,[DocSatesCode] = @DocSatesCode
		  ,[SORef] = @SORef
		  ,[InternNote] = @InternNote
		  ,[VisibleNote] = @VisibleNote
		  ,[SOTotal] = @SOTotal
		  ,[SOSubTotal] = @SOSubTotal
		  ,[SOTaxTotal] = @SOTaxTotal
		  ,[SODiscountTotal] = @SODiscountTotal
		  ,[CreatedBy] = @CreatedBy
		  ,[UserNum] = @UserNum
		  ,[UserNum_SalesRep] = @UserNum_SalesRep
	   WHERE [SONum]=@SONum	   
	   SELECT @SONum as SONum
	END
  
END


GO
/****** Object:  StoredProcedure [dbo].[p_SaveSO_L]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_SaveSO_L] 
@SO_LNum int,
@SONum int,
@ItemNum int,
@ItemType varchar(10),
@LineDesc nvarchar(65),
@Discount float,
@UnitPrice float,
@ItemsPackMsrNum int,
@Quantity float,
@TaxGroupNum int,
@TaxNum_1 int,
@TaxNum_2 int ,
@LineTotal float,
@DocSatesNum int 
AS
BEGIN	
	SET NOCOUNT ON;
 if @SO_LNum=0
 BEGIN
  INSERT INTO [dbo].[SO_L]
           ([SONum]
           ,[ItemNum]
		   ,[ItemType]
           ,[LineDesc]
           ,[Discount]
           ,[UnitPrice]
           ,[ItemsPackMsrNum]
           ,[Quantity]
		   ,[TaxGroupNum]
           ,[TaxNum_1]
           ,[TaxNum_2]
           ,[LineTotal]
           ,[DocSatesNum])
     VALUES
           (@SONum
           ,@ItemNum
		   ,@ItemType
           ,@LineDesc
           ,@Discount
           ,@UnitPrice
		   ,@TaxGroupNum
           ,@ItemsPackMsrNum
           ,@Quantity
           ,@TaxNum_1
           ,@TaxNum_2
           ,@LineTotal
           ,@DocSatesNum)
   SET @SO_LNum=@@IDENTITY
   SELECT @SO_LNum as SO_LNum
 END
 ELSE
  BEGIN
    UPDATE [dbo].[SO_L]
    SET [SONum] = @SONum
      ,[ItemNum] = @ItemNum
	  ,[ItemType]=@ItemType
      ,[LineDesc] = @LineDesc
      ,[Discount] = @Discount
      ,[UnitPrice] = @UnitPrice
      ,[ItemsPackMsrNum] = @ItemsPackMsrNum
      ,[Quantity] = @Quantity
	  ,[TaxGroupNum]=@TaxGroupNum
	  ,[TaxNum_1] = @TaxNum_1
      ,[TaxNum_2] = @TaxNum_2
      ,[LineTotal] = @LineTotal
      ,[DocSatesNum] = @DocSatesNum
	 WHERE SO_LNum=@SO_LNum
	 SELECT @SO_LNum as SO_LNum

 END
END


GO
/****** Object:  StoredProcedure [dbo].[p_UpdateUser]    Script Date: 7/2/2016 11:51:44 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[p_UpdateUser] 
@UserNum int,
@GlobalCustomerNum int,
@FirstName nvarchar(30),
@LastName nvarchar(30),
@Adress1 nvarchar(40),
@City nvarchar(20),
@State nvarchar(20),
@ZipCode nvarchar(10),
@CountryNum int,
@HourlyRate float,
@HourlyRateOT float,
@LogoPath nvarchar(225),
@PrimaryPhone nvarchar(20),
@GenderNum int,
@BirthDate Date,
@BirthCountryNum int,
@ReferalTypeNum int,
@SocialID nvarchar(20),
@Active bit,
@UserName nvarchar(30),
@Password nvarchar(15),
@PasswordExpDate Date,
@Title nvarchar(20),
@LanguageNum int,
@IsManager bit,
@PositionNum int,
@CitizenshipCountryNum int,
@CitizenshipID varchar(20),
@CitizenshipExpDate Date,
@PassportCountryNum int,
@PassportID nvarchar(20),
@PassportExpDate Date,
@ResidentCountryNum int,
@ResidentCountryID nvarchar(20),
@ResidentIDExpDate Date,
@WorkVisaID nvarchar(20),
@WorkVisaExpDate Date,
@ReferalName nvarchar(50),
@SASId nvarchar(30),
@Commission int,
@ResidentID nvarchar(20),
@CustomField1Name nvarchar(15),
@CustomField1Value nvarchar(50),
@CustomField1Vis bit,
@CustomField2Name nvarchar(15),
@CustomField2Value nvarchar(50),
@CustomField2Vis bit,
@CustomField3Name nvarchar(15),
@CustomField3Value nvarchar(50),
@CustomField3Vis bit,
@CustomField4Name nvarchar(15),
@CustomField4Value nvarchar(50),
@CustomField4Vis bit,
@CustomField5Name nvarchar(15),
@CustomField5Value nvarchar(50),
@CustomField5Vis bit,
@CustomField6Name nvarchar(15),
@CustomField6Value nvarchar(50),
@CustomField6Vis bit,
@CustomField7Name nvarchar(15),
@CustomField7Value nvarchar(50),
@CustomField7Vis bit,
@CustomField8Name nvarchar(15),
@CustomField8Value nvarchar(50),
@CustomField8Vis bit
AS
BEGIN
   SET NOCOUNT ON;

   UPDATE [dbo].[Users]
   SET [GlobalCustomerNum] = @GlobalCustomerNum
      ,[FirstName] = @FirstName
      ,[LastName] = @LastName
      ,[Adress1] = @Adress1
      ,[City] = @City
      ,[State] = @State
      ,[ZipCode] = @ZipCode
      ,[CountryNum] = @CountryNum
      ,[HourlyRate] = @HourlyRate
      ,[HourlyRateOT] = @HourlyRateOT
      ,[LogoPath] = @LogoPath
      ,[PrimaryPhone] = @PrimaryPhone
      ,[GenderNum] = @GenderNum
      ,[BirthDate] = @BirthDate
      ,[BirthCountryNum] = @BirthCountryNum
      ,[ReferalTypeNum] = @ReferalTypeNum
      ,[SocialID] = @SocialID
      ,[Active] = @Active
      ,[UserName] = @UserName
      ,[Password] = @Password
      ,[PasswordExpDate] = @PasswordExpDate
      ,[Title] = @Title
      ,[LanguageNum] = @LanguageNum
      ,[IsManager] = @IsManager
      ,[PositionNum] = @PositionNum
      ,[CitizenshipCountryNum] = @CitizenshipCountryNum
      ,[CitizenshipID] = @CitizenshipID
      ,[CitizenshipExpDate] = @CitizenshipExpDate
      ,[PassportCountryNum] = @PassportCountryNum
      ,[PassportID] = @PassportID
      ,[PassportExpDate] = @PassportExpDate
      ,[ResidentCountryNum] = @ResidentCountryNum
      ,[ResidentCountryID] = @ResidentCountryID
      ,[ResidentIDExpDate] = @ResidentIDExpDate
      ,[WorkVisaID] = @WorkVisaID
      ,[WorkVisaExpDate] = @WorkVisaExpDate
	  ,[ReferalName]= @ReferalName
      ,[SASId]=@SASId
      ,[Commission]=@Commission
      ,[ResidentID]=@ResidentID
      ,[CustomField1Name] = @CustomField1Name
      ,[CustomField1Value] = @CustomField1Value
      ,[CustomField1Vis] = @CustomField1Vis
      ,[CustomField2Name] = @CustomField2Name
      ,[CustomField2Value] = @CustomField2Value
      ,[CustomField2Vis] = @CustomField2Vis
      ,[CustomField3Name] = @CustomField3Name
      ,[CustomField3Value] = @CustomField3Value
      ,[CustomField3Vis] = @CustomField3Vis
      ,[CustomField4Name] = @CustomField4Name
      ,[CustomField4Value] = @CustomField4Value
      ,[CustomField4Vis] = @CustomField4Vis
      ,[CustomField5Name] = @CustomField5Name
      ,[CustomField5Value] = @CustomField5Value
      ,[CustomField5Vis] = @CustomField5Vis
      ,[CustomField6Name] = @CustomField6Name
      ,[CustomField6Value] = @CustomField6Value
      ,[CustomField6Vis] = @CustomField6Vis
      ,[CustomField7Name] = @CustomField7Name
      ,[CustomField7Value] = @CustomField7Value
      ,[CustomField7Vis] = @CustomField7Vis
      ,[CustomField8Name] = @CustomField8Name
      ,[CustomField8Value] = @CustomField8Value
      ,[CustomField8Vis] = @CustomField8Vis
 WHERE UserNum = @UserNum
 
  --LogDBChanges (@userNum,SesUserID,"UPDATE", Insert SQL Query String, GetDate())
     
END



GO
