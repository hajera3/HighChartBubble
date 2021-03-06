USE [db_Graph]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11-07-2021 7.21.19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employees]    Script Date: 11-07-2021 7.21.19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employees](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[EmployeeName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.Employees] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[EmployeeSkills]    Script Date: 11-07-2021 7.21.19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeSkills](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[TechnicalLevel] [decimal](18, 2) NOT NULL,
	[LeadershipLevel] [decimal](18, 2) NOT NULL,
	[EmployeeId] [bigint] NOT NULL,
 CONSTRAINT [PK_dbo.EmployeeSkills] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LeadershipLevels]    Script Date: 11-07-2021 7.21.19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LeadershipLevels](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](max) NULL,
	[LevelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.LeadershipLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TechnicalLevels]    Script Date: 11-07-2021 7.21.19 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TechnicalLevels](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Level] [nvarchar](max) NULL,
	[LevelName] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.TechnicalLevels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107111012486_Update_1', N'ChartProject.Migrations.Configuration', 0x1F8B0800000000000400ED59CD6EE33610BE17E83B083AB540D68AB345B10DE45DA4765204B5936095EC9D96C636BB14A58A94613F5B0F7DA4BE4287D63F25D97262A7C1D6C8C52267BE19CE7C1C8D26FFFCF5B7FD69E533630991A0011F98FDDEB9690077038FF2F9C08CE5ECDD07F3D3C7EFBFB3AF3D7F657CC9E4DE2B39D4E462602EA40C2F2D4BB80BF089E8F9D48D0211CC64CF0D7C8B788175717EFE8BD5EF5B801026621986FD39E692FAB079C0C761C05D08654CD824F08089741D779C0DAA71477C10217161600E1724920F51F007B8B237BA1A9BC615A304FD7080CD4C83701E4822D1CBCB27018E8C023E77425C20EC711D02CACD0813907A7F5988773DC8F9853A88552866506E2C64E0EF09D87F9F46C6D2D59F155F338F1CC6EE1A632CD7EAD49BF80DCC6B3F64C11A4098866EED72C82225A9C53749472F573C33CADB6739219037EA0FB76326E308061C62191176663CC45346DDDF61FD187C053EE031636527D14DDCAB2CE012E28710C9F56798A5AEDF7AA66155F52C5D31572BE92467BAE5F2E79F4CE30E8D9329839C03A5F33B3288E037E0101109DE03911222AE306013C59A75CD561621F5945945F2E12D328D09598D81CFE56260E24FD3B8A12BF0B295D493274EF1D2A1928C62A81AB3AD22919DD2EB7CA58C3D3BC789F629D12DB61EC15D60AE081BC312586677042EF5093E3E44F82BADA51F4CC34141DCBE687069BB9931100F43BEA0E121ED74A692667E6F32E9FA273AB5E6B994DD03158C162BFF6569AADE9ABDE9A4A99FD8F43F6413F68892508C4CEAC586026A1156B2814FD8FCA59412A9ADEA9912500764BD372ABC489ACA5E69CFEA8692BD825BA132811D78F53A5C43AC8BECC0ACDDC51A644DA2294B793E8A66DD4ABAF5ACABB75ADA7A7B42C21009536AF3D315C3497BFC77CEFEEDAF9F6058AE68E882736F734B78D3C81CB45D348D9EDED048C81191644A1465879E5F172BB3AF25DE99299D607A9D29E29F69A8DF259697BE767AAD3045146FF0603E168CCD192177678B0B1B6DD54390A8A17A0D0316FBBCAD026ED3AE76C5659CEA4E1DD1B6B4C3E841B36A51D3EAB29E86BD92945ECF8364AA196B8F74B5011C27677A835B46D2F7BAA3D6FAD9326C6DF3CDF0A1565C5FC4885D681D38B11BE238AC68CCDADE1CC8FB861ACE1BAB03FA1BF04569DF01D621EB3B114E49EF9CF45AFFA28BE4D6F33E46EB57ECB477E830ABD49B8944447DBE074BEAA946C2590B097E4F09F49C3FD990513C6F2130219CCE40C8E4BBC5BC38EF5F6803CFB7337CB484F058D709E4AB7F7D4DE99CAAC8EEFCC4DA7352D334F9E34B12B958067EF0C9EAC732E2E1A67BDF4CFC9A076ADE2B0DD45E68E7F903B56F267F9570EE41FC0E7385635CA3ADAFD2531E8E9B87DA0CA7F6B17D90214DF296C5CB3D0DF00889AB479CE16C3377CC394F93DDD7980635D93DD4C8A8DE5AD956F99FC5F608049D1710EA5FC71C1B6D2CDC05682673CB6741C66D3C71D9A34C44A3FE0424F1908B5791A433E2AA36DE052136D3CD2F84C59BCC4EC1BBE5F7B10C63792504F8535619CCDAD676FB9BB958D567FB3E544FE210474037291E01EEF9AF31655EEEF74DC3DBAB05425DCBB432A1578E54156ABECE91EE02DE11280DDF0842E0AAAE3D025E0B0413F7DC214B788E6F4F02C63027EE3AEB90DB417627A21A767B44C93C22BE48310A7D7C440E7BFEEAE3BF2D27772A33210000, N'6.4.4')
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202107111045214_Update_2', N'ChartProject.Migrations.Configuration', 0x1F8B0800000000000400ED59DB6EDB46107D2FD07F20F8D4028E6829459118540257B20BA3BE21B4F3BE2247D236CB25CB5D0AD2B7F5A19FD45FE82CEF5C9212E5488E911A7E11B9B3676E6787B3E37FFFFEC7FEB8F699B18248D0808FCDE1E0D43480BB8147F9626CC672FEE69DF9F1C38F3FD8179EBF363EE7726F951CEEE4626C2EA50CCF2C4BB84BF08918F8D48D0211CCE5C00D7C8B7881353A3D7D6F0D87162084895886617F8AB9A43E240FF83809B80BA18C09BB093C60227B8F2B4E826ADC121F44485C189B932589E47D14FC09AE1C4CCFAF4DE39C51827638C0E6A641380F249168E5D9A3004746015F3821BE20EC611302CACD091390597F568AF775E474A41CB1CA8D39941B0B19F87B020EDF6691B1F4ED4F8AAF59440E63778131961BE57512BFB179E1872CD80008D3D0B59D4D58A424B5F8A6E918141B4F8CEAF2494108E48DFAC3E598C9388231875846849D18F7F18C51F70FD83C045F808F79CC58D5483413D76A2FF015E28710C9CD279867A65F79A661D5F759FAC6625B654FEAD31597BFFE621AB7A89CCC18141CA8F8EFC82082DF8143442478F7444A88B8C280248A0DED9AAE3C42EA29D78AE4C353641A37647D0D7C219763137F9AC6255D8397BFC92C79E4140F1D6E92510C7565B65526B2577A9D2F94B127E738DDFD9AE80E5D0FE02E3157845DC30A58AE770A2EF5093EDE47F82BABA5EF4CC341415C1EB598B45DCD35100F43BEA4E171F5E459DF1DC227515273636F52EAFB5F69D9C9970A4B0E54783AB47CCB12573F7D7BD349DBFECAA6FF219BB0D794846264322B120AA897B0962D7CC22632A394C874D57D4A411D90CD1EABB4226D4E079535AB1F4AFE29EF84CA0576E035EB7003B129B203B371161B900D89B62C15F9289B7E2BEDFAF3DB81D5713DB06F481822612AD785EC8DE164778537CEFE6DB49F6258AE68E9A60B6B0B4D78D2C802B455548D965ED248C8299164461465279EDF14ABB2AF23DEB92A9D607A9D29E39FEF50BF2B2CAFDC9A069D3065142FD1311F0B46E22314E66C3121D9AD7A1112B554AF49C0629F7755C06DBBEBDD7515A7BED244B42DCD193D6856236A5A5DD6D3B05792B2E379904CB563ED91AE2E80E3E44C6F94AB48FA5A7FD4465F5C856D2CEECF30DDE7EAFB17C3AE46A9FE2A7EED42EBC1B0DD10C7E1582B07F66654D18534705E5855D1BFA75F95F61D603DB2BE13E135E9BD93DEE8867491427BD11569DD8F9D75223D26A87A6B928AA8A142B0A29E6A4B9C8D90E00F94C0C0F98B4D18457F4B811BC2E91C844C6F41E6E87438D2C6B02F67246A09E1B1BE73D167BFCBCDE882AAC8EEBCB03D71AE53BD5EF115895C2C033FF964FD7315F17033C7EF267EED633EEF99C67C07D7D31CF3E5813BD29CEFBB21422D2F7B9CA01EE38E639CC7ADDFE4D73C1C370F8DD15263067090D951FAB9C62A310BD085D4D4238E96B6A93BE6F8A94DEF730CA9DAF41E6A92D5ECD16CABFABF707B0A822E4A08F59F718E1D3B7E014AD05CE68ACF839CDBE871D5A25C44A3FE0D48E22117CF2349E7C455F70117844886AE9F098B93CCCEC0BBE277B10C63792E04F833569B17DBD676FDC9B8AE6EB37D17AA27710817D04C8A2EC01DFF2DA6CC2BECBE6CF97A7540A863995526B4CA91AA422D3605D26DC07B0265E19B42085CD5B507C0638160E28E3B64054FB1ED51C0352C88BBC95BED6E90DD89A887DD9E52B288882F328C723F3E22873D7FFDE13F51152BEC12220000, N'6.4.4')
SET IDENTITY_INSERT [dbo].[Employees] ON 

INSERT [dbo].[Employees] ([Id], [EmployeeName]) VALUES (1, N'User 1')
INSERT [dbo].[Employees] ([Id], [EmployeeName]) VALUES (2, N'User 2')
INSERT [dbo].[Employees] ([Id], [EmployeeName]) VALUES (3, N'User 3')
SET IDENTITY_INSERT [dbo].[Employees] OFF
SET IDENTITY_INSERT [dbo].[EmployeeSkills] ON 

INSERT [dbo].[EmployeeSkills] ([Id], [TechnicalLevel], [LeadershipLevel], [EmployeeId]) VALUES (1, CAST(2.00 AS Decimal(18, 2)), CAST(3.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[EmployeeSkills] ([Id], [TechnicalLevel], [LeadershipLevel], [EmployeeId]) VALUES (2, CAST(2.65 AS Decimal(18, 2)), CAST(3.50 AS Decimal(18, 2)), 2)
INSERT [dbo].[EmployeeSkills] ([Id], [TechnicalLevel], [LeadershipLevel], [EmployeeId]) VALUES (3, CAST(3.15 AS Decimal(18, 2)), CAST(3.70 AS Decimal(18, 2)), 3)
SET IDENTITY_INSERT [dbo].[EmployeeSkills] OFF
SET IDENTITY_INSERT [dbo].[LeadershipLevels] ON 

INSERT [dbo].[LeadershipLevels] ([Id], [Level], [LevelName]) VALUES (1, N'Level I', N'Capable')
INSERT [dbo].[LeadershipLevels] ([Id], [Level], [LevelName]) VALUES (2, N'Level II', N'Contributing')
INSERT [dbo].[LeadershipLevels] ([Id], [Level], [LevelName]) VALUES (3, N'Level III', N'Competent')
INSERT [dbo].[LeadershipLevels] ([Id], [Level], [LevelName]) VALUES (4, N'Level IV', N'Leader')
INSERT [dbo].[LeadershipLevels] ([Id], [Level], [LevelName]) VALUES (5, N'Level V', N'Executive')
SET IDENTITY_INSERT [dbo].[LeadershipLevels] OFF
SET IDENTITY_INSERT [dbo].[TechnicalLevels] ON 

INSERT [dbo].[TechnicalLevels] ([Id], [Level], [LevelName]) VALUES (1, N'Level I', N'Beginner')
INSERT [dbo].[TechnicalLevels] ([Id], [Level], [LevelName]) VALUES (2, N'Level II', N'Junior')
INSERT [dbo].[TechnicalLevels] ([Id], [Level], [LevelName]) VALUES (3, N'Level III', N'Intermediate')
INSERT [dbo].[TechnicalLevels] ([Id], [Level], [LevelName]) VALUES (4, N'Level IV', N'Senior')
INSERT [dbo].[TechnicalLevels] ([Id], [Level], [LevelName]) VALUES (5, N'Level V', N'Expert')
SET IDENTITY_INSERT [dbo].[TechnicalLevels] OFF
ALTER TABLE [dbo].[EmployeeSkills] ADD  CONSTRAINT [DF__EmployeeS__Emplo__34C8D9D1]  DEFAULT ((0)) FOR [EmployeeId]
GO
