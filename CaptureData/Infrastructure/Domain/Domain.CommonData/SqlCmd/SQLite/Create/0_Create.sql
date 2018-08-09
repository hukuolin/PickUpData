create table CategoryData
(
	[ID] [int] NOT NULL primary key,
	[Name] [nvarchar](20) NULL,
	[ParentID] [int] NULL,
	[ParentCode] [varchar](10) NULL,
	[Code] [varchar](10) NULL,
	[Sort] [int] NULL,
	[ItemType] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[NodeLevel] [int] NULL
);
CREATE TABLE TecentQQData (
    ID                   VARCHAR (36)  PRIMARY KEY,
    PickUpWhereId        VARCHAR (36),
    age                  INT,
    city                 VARCHAR (50),
    country              VARCHAR (50),
    distance             INT,
    face                 INT,
    gender               INT,
    nick                 VARCHAR (50),
    province             VARCHAR (50),
    stat                 INT,
    uin                  VARCHAR (15),
    HeadImageUrl         VARCHAR (500),
    CreateTime           DATETIME,
    IsGatherImage        BLOB          DEFAULT (0),
    GatherImageTime      DATETIME,
    LastErrorGatherImage DATETIME,
    GatherImageErrorNum  INT           DEFAULT (0),
    ImageRelativePath    VARCHAR (200),
    DayInt               INT           DEFAULT (0),
    ImgType              INT           DEFAULT (0) 
);
