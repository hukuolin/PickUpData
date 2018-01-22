USE [TecentDataUinDA]
GO
/****** Object:  StoredProcedure [dbo].[SP_AddLinkServer]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_AddLinkServer]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_AddLinkServer]
GO
/****** Object:  StoredProcedure [dbo].[SP_ErrorGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ErrorGatherImageList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_ErrorGatherImageList]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetWaitGatherImageList]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageListOrigin]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageListOrigin]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetWaitGatherImageListOrigin]
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageListWithCity]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageListWithCity]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_GetWaitGatherImageListWithCity]
GO
/****** Object:  StoredProcedure [dbo].[SP_PickUpStaticWithDay]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PickUpStaticWithDay]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_PickUpStaticWithDay]
GO
/****** Object:  StoredProcedure [dbo].[SP_PickUpStaticWithToday]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PickUpStaticWithToday]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_PickUpStaticWithToday]
GO
/****** Object:  StoredProcedure [dbo].[SP_StaticCountToday]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_StaticCountToday]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_StaticCountToday]
GO
/****** Object:  StoredProcedure [dbo].[SP_SuccessGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SuccessGatherImageList]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_SuccessGatherImageList]
GO
/****** Object:  StoredProcedure [dbo].[SP_SyncOTherPcData]    Script Date: 09/07/2017 21:32:57 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SyncOTherPcData]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[SP_SyncOTherPcData]
GO
/****** Object:  Table [dbo].[TecentQQData]    Script Date: 09/07/2017 21:32:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TecentQQData]') AND type in (N'U'))
DROP TABLE [dbo].[TecentQQData]
GO
/****** Object:  Table [dbo].[WebChatFriendData]    Script Date: 09/07/2017 21:32:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebChatFriendData]') AND type in (N'U'))
DROP TABLE [dbo].[WebChatFriendData]
GO
/****** Object:  Table [dbo].[Categorydata]    Script Date: 09/07/2017 21:32:14 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorydata]') AND type in (N'U'))
DROP TABLE [dbo].[Categorydata]
GO
/****** Object:  Table [dbo].[DataBaseNPKVersion]    Script Date: 09/07/2017 21:32:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataBaseNPKVersion]') AND type in (N'U'))
DROP TABLE [dbo].[DataBaseNPKVersion]
GO
/****** Object:  Table [dbo].[DBTypeDesc]    Script Date: 09/07/2017 21:32:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBTypeDesc]') AND type in (N'U'))
DROP TABLE [dbo].[DBTypeDesc]
GO
/****** Object:  Table [dbo].[IgnoreImage]    Script Date: 09/07/2017 21:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IgnoreImage]') AND type in (N'U'))
DROP TABLE [dbo].[IgnoreImage]
GO
/****** Object:  Table [dbo].[LinkServer]    Script Date: 09/07/2017 21:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkServer]') AND type in (N'U'))
DROP TABLE [dbo].[LinkServer]
GO
/****** Object:  Table [dbo].[PickUpTecentQQWhere]    Script Date: 09/07/2017 21:32:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PickUpTecentQQWhere]') AND type in (N'U'))
DROP TABLE [dbo].[PickUpTecentQQWhere]
GO
/****** Object:  Table [dbo].[PickUpTecentQQWhere]    Script Date: 09/07/2017 21:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PickUpTecentQQWhere]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PickUpTecentQQWhere](
	[ID] [uniqueidentifier] NOT NULL,
	[keyword] [nvarchar](50) NULL,
	[sessionid] [int] NULL,
	[agerg] [int] NULL,
	[sex] [int] NULL,
	[firston] [int] NULL,
	[video] [int] NULL,
	[country] [int] NULL,
	[province] [int] NULL,
	[city] [int] NULL,
	[district] [int] NULL,
	[hcountry] [int] NULL,
	[hprovince] [int] NULL,
	[hcity] [int] NULL,
	[hdistrict] [int] NULL,
	[online] [int] NULL
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[LinkServer]    Script Date: 09/07/2017 21:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LinkServer]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LinkServer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[LinkNameRemark] [nvarchar](200) NULL,
	[CreateTime] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[Statue] [smallint] NULL,
	[DBTypeID] [smallint] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[IgnoreImage]    Script Date: 09/07/2017 21:32:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[IgnoreImage]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[IgnoreImage](
	[Id] [uniqueidentifier] NOT NULL,
	[ImageUrl] [varchar](500) NULL,
	[CreateTime] [datetime] NULL,
	[IsDelete] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DBTypeDesc]    Script Date: 09/07/2017 21:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DBTypeDesc]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DBTypeDesc](
	[Id] [smallint] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](30) NOT NULL,
	[CreateTime] [datetime] NULL,
	[Remark] [nvarchar](100) NULL,
	[IsDelete] [bit] NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataBaseNPKVersion]    Script Date: 09/07/2017 21:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DataBaseNPKVersion]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DataBaseNPKVersion](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NPKEffectVersion] [varchar](20) NOT NULL,
	[GenerateNPKVersion] [varchar](20) NULL,
	[NPKSvn] [varchar](10) NULL,
	[NPKSubmitTime] [datetime] NOT NULL,
	[NPKPath] [nvarchar](200) NULL,
	[DBStructCmd] [nvarchar](500) NULL,
	[NPKType] [int] NULL,
	[Note] [nvarchar](100) NULL,
	[InDBTime] [datetime] NULL,
	[IsDelete] [bit] NULL,
	[IsRelease] [bit] NULL,
	[NPKAuthor] [nvarchar](20) NULL,
	[NpkSubmiter] [nvarchar](20) NULL,
	[NPKDataBase] [varchar](30) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categorydata]    Script Date: 09/07/2017 21:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Categorydata]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Categorydata](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](20) NULL,
	[ParentID] [int] NULL,
	[ParentCode] [nvarchar](10) NULL,
	[Code] [nvarchar](10) NULL,
	[Sort] [int] NULL,
	[ItemType] [varchar](20) NULL,
	[IsDelete] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[NodeLevel] [int] NULL
) ON [PRIMARY]
END
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AppConfig]') AND type in (N'U'))
begin 
	create table AppConfig
	(
		Id smallint identity(1,1) primary key,
		Name nvarchar(32) not null,
		CfgKey varchar(32) not null,
		CfgDesc nvarchar(512) ,
		CreateTime datetime default(getdate()),
		CfgValue varchar(32) not null,
		ParentId smallint --父项
	)
end
go
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[WebChatFriendData]    Script Date: 09/07/2017 21:32:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[WebChatFriendData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[WebChatFriendData](
	[ID] [uniqueidentifier] NOT NULL,
	[CreateTime] [datetime] NULL,
	[SelfDefineDataTag] [varchar](20) NULL,
	[SelfDefineType] [nvarchar](10) NULL,
	[GroupSign] [nvarchar](10) NULL,
	[DataBelongName] [nvarchar](50) NULL,
	[DataBelongUserName] [nvarchar](100) NULL,
	[DataBelongUserNick] [nvarchar](500) NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[NickName] [nvarchar](500) NOT NULL,
	[HeadImgUrl] [nvarchar](500) NULL,
	[ContactFlag] [varchar](10) NULL,
	[MemberCount] [int] NULL,
	[MemberList] [nvarchar](10) NULL,
	[RemarkName] [nvarchar](500) NULL,
	[HideInputBarFlag] [int] NULL,
	[Sex] [int] NULL,
	[SexDesc] [nvarchar](3) NULL,
	[Signature] [nvarchar](500) NULL,
	[VerifyFlag] [int] NULL,
	[OwnerUin] [int] NULL,
	[PYInitial] [nvarchar](500) NULL,
	[PYQuanPin] [nvarchar](500) NULL,
	[RemarkPYInitial] [nvarchar](500) NULL,
	[RemarkPYQuanPin] [nvarchar](500) NULL,
	[StarFriend] [int] NULL,
	[AppAccountFlag] [varchar](20) NULL,
	[Statues] [int] NULL,
	[AttrStatus] [nvarchar](20) NULL,
	[Province] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Alias] [nvarchar](20) NULL,
	[SnsFlag] [int] NULL,
	[UniFriend] [int] NULL,
	[DisplayName] [nvarchar](20) NULL,
	[ChatRoomId] [int] NULL,
	[KeyWord] [nvarchar](1000) NULL,
	[EncryChatRoomId] [nvarchar](20) NULL,
	[IsOwner] [int] NULL,
	[uin] [nvarchar](20) NULL,
	[AliasDesc] [varchar](50) NULL
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TecentQQData]    Script Date: 09/07/2017 21:32:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TecentQQData]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TecentQQData](
	[ID] [uniqueidentifier] NOT NULL,
	[PickUpWhereId] [uniqueidentifier] NULL,
	[age] [int] NULL,
	[city] [nvarchar](50) NULL,
	[country] [nvarchar](50) NULL,
	[distance] [int] NULL,
	[face] [int] NULL,
	[gender] [int] NULL,
	[nick] [nvarchar](100) NULL,
	[province] [nvarchar](50) NULL,
	[stat] [int] NULL,
	[uin] [nvarchar](15) NULL,
	[HeadImageUrl] [varchar](500) NULL,
	[CreateTime] [datetime] NULL,
	[IsGatherImage] [bit] NULL,
	[GatherImageTime] [datetime] NULL,
	[LastErrorGatherImage] [datetime] NULL,
	[GatherImageErrorNum] [int] NULL,
	[ImageRelativePath] [varchar](200) NULL,
	DayInt int default(0),
	ImgType int default(0) -- 当没有存储头像URL时设置此值为-1 ，默认值代表没有设定图片类型，值为1代表人脸
) ON [PRIMARY]
END
GO
 --sync splilder dayint 
if ( 
EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'SP_InitSpilderDayInt')
 AND type in (N'P', N'PC')))
	drop procedure SP_InitSpilderDayInt
go
create procedure SP_InitSpilderDayInt
as
update tecentqqdata set dayint=convert(int, convert(varchar(10),createtime,112)) 
where dayint =0
go
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[SP_SyncOTherPcData]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SyncOTherPcData]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_SyncOTherPcData]
as
declare @link varchar(30)
select @link=Name from dbo.LinkServer where DBTypeID=1
declare @sql varchar(2000)
set @sql=''
insert into tecentdatada.dbo.tecentqqdata
(ID,PickUpWhereId,age,city,country,distance,face,gender,nick,province,stat,uin,HeadImageUrl,CreateTime,ImgType)
select 
ID,PickUpWhereId,age,city,country,distance,face,gender,nick,province,stat,uin,HeadImageUrl,CreateTime,ImgType
 from {Link}.tecentdatada.dbo.tecentqqdata t
 where t.id not in(select id from tecentdatada.dbo.tecentqqdata );
 update TecentQQData  set imgtype=-1 where  headimageUrl is null;
 update  TecentQQData  set   imgtype=0 where len(headimageurl)>0 and imgtype is null;
 update TecentQQData  set GatherImageErrorNum=0 where GatherImageErrorNum is null;''
 set @sql=replace(@sql,''{Link}'',@link)
exec (@sql)
exec SP_InitSpilderDayInt
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_SuccessGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_SuccessGatherImageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_SuccessGatherImageList]
(
	@ID uniqueidentifier,
	@ImageRelativePath varchar(200)
)
as 
declare @url varchar(500)
select @url=HeadImageUrl from TecentQQData where ID=@ID
declare @time datetime
set @time=getdate()
update TecentQQData set ImageRelativePath=@ImageRelativePath,IsGatherImage=1,GatherImageTime=@time
where ID=@ID
--相同头像（qq号不同）或者同一个qq号数据且头像没有改变
update TecentQQData set ImageRelativePath=@ImageRelativePath,IsGatherImage=1,GatherImageTime=@time
where imgtype =0 and HeadImageUrl=@url
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_StaticCountToday]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_StaticCountToday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_StaticCountToday]
as
declare @today datetime 
declare @day int
set @today=getdate()
set @day=convert(int, convert(varchar(10),@today,112))
declare @DBTotal int
declare @DBPrimaryTotal int
select @DBTotal=count(uin),@DBPrimaryTotal=count(distinct(uin))  from TecentQQData
--统计当天增加了多少条数据
select @DBTotal as DBTotal,@DBPrimaryTotal as DBPrimaryTotal,count(uin) as TodayTotal from TecentQQData where @day=convert(int, convert(varchar(10),createtime,112)) 
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PickUpStaticWithToday]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PickUpStaticWithToday]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_PickUpStaticWithToday]
as
declare @day datetime
set @day=getdate();
declare @d int
set @d=convert(int,@day,112)

select count(uin),count(distinct(uin)),convert(varchar(10),@day,120) from TecentDataDA.dbo.TecentQQData
where convert(int,createtime,112)=@d

' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_PickUpStaticWithDay]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_PickUpStaticWithDay]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_PickUpStaticWithDay]
(
	@day datetime
)
as
declare @di int
set @di=convert(int, convert(varchar(10),@day,112))

declare @count int
declare @primaryCount int
select @count=count(uin), @primaryCount=count(distinct(uin)) from TecentQQData where convert(int, convert(varchar(10),Createtime,112))=@di
declare @DBTotal int
declare @DBPrimaryTotal int
select @DBTotal=count(uin),@DBPrimaryTotal=count(distinct(uin))  from TecentQQData

select @DBTotal as DBTotal,@DBPrimaryTotal as DBPrimaryTotal, @count as Total,@primaryCount as IdTotal,
convert(varchar(10),@day,120) StaticDay
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageListWithCity]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageListWithCity]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_GetWaitGatherImageListWithCity]
as
select top 200 ID,Uin,HeadImageUrl,province,city as LocalCity  from TecentQQData 
where GatherImageTime is null 
and HeadImageUrl not in(--头像提出腾讯提供的系统头像
    select distinct( ImageUrl) from IgnoreImage
)
and HeadImageUrl not in
(--改头像不是已经采集过得，防止同一个qq号没有修改头像时多次采集头像
select distinct( HeadImageUrl) from TecentQQData where GatherImageTime is not null
)
order by createtime
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageListOrigin]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageListOrigin]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create procedure [dbo].[SP_GetWaitGatherImageListOrigin]
as
select top 200 ID,Uin,HeadImageUrl,province+''_''+city as LocalCity  from TecentQQData 
where GatherImageTime is null 
and HeadImageUrl not in(--头像提出腾讯提供的系统头像
    select distinct( ImageUrl) from IgnoreImage
)
and HeadImageUrl not in
(--改头像不是已经采集过得，防止同一个qq号没有修改头像时多次采集头像
select distinct( HeadImageUrl) from TecentQQData where GatherImageTime is not null
)
order by createtime
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_GetWaitGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_GetWaitGatherImageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
Create procedure [dbo].[SP_GetWaitGatherImageList]
as
select top 200 ID,Uin,HeadImageUrl,province+''_''+city as LocalCity  from TecentQQData 
where  IsGatherImage=0 and imgtype>-1 and GatherImageErrorNum=0 --  GatherImageTime is null  --is 影响查询效率
and HeadImageUrl not in(--头像提出腾讯提供的系统头像
    select distinct( ImageUrl) from IgnoreImage
) order by createtime
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_ErrorGatherImageList]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_ErrorGatherImageList]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create procedure [dbo].[SP_ErrorGatherImageList]
(
	@ID uniqueidentifier
)
as 
update TecentQQData set IsGatherImage=0,LastErrorGatherImage=getdate()
,GatherImageErrorNum=GatherImageErrorNum+1
where ID=@ID
' 
END
GO
/****** Object:  StoredProcedure [dbo].[SP_AddLinkServer]    Script Date: 09/07/2017 21:32:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SP_AddLinkServer]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
create Procedure [dbo].[SP_AddLinkServer]
(
	@IP varchar(100)
)
as
declare @linkName nvarchar(50)
declare @user nvarchar(20)
set @user=''sa''
declare @psw nvarchar(20)
set @psw=''password''

declare @time varchar(25) 
set @time= replace( convert(varchar(55), getdate(),120),''-'','''')
set @time= replace( @time,'':'','''')
set @time= replace( @time,'' '','''') 
set @linkName=''LinkPC''+@time
DECLARE @DB NVARCHAR(30)
set @DB=''TecentDataDA''
--DECLARE @IP NVARCHAR(30)  --远程服务器连接实例
--set @IP=''192.168.241.142''
if(exists(select name from sys.servers where name=@linkName))
	exec sp_dropserver @linkName,''droplogins''
--配置数据库连接信息
EXEC master.dbo.sp_addlinkedserver @server = @linkName, @srvproduct=N''SQLSERVER'', @provider=N''SQLOLEDB'', @datasrc=@IP,@catalog=@DB
--配置登录账户信息
exec sp_addlinkedsrvlogin @linkName,''false'',null,@user,@psw

insert into dbo.LinkServer (Name,CreateTime,IsDelete,Statue,DBTypeID,LinkNameRemark)	
values(@linkName,getdate(),0,1,1,''The Link name for Sync other pc gather tecent data'')
--2远程服务器操作

	--操作远程连接服务器,进行查询
--	select * from LKSV_0_DigGameDB_0_0.DigGameDB.dbo.T_BaseParamDB
----删除远程连接
--	exec sp_dropserver @linkName,''droplogins'' --VIRTUALMACHINE1 为设置的远程服务器连接名

' 
END
GO
-- every day statics data sizeof 
IF   EXISTS (SELECT * FROM sys.objects 
WHERE object_id = OBJECT_ID(N'SP_EveryDayCaptureStatics') 
AND [type] in (N'P', N'PC'))
	BEGIN
	  drop procedure SP_EveryDayCaptureStatics
	end
go
 create procedure SP_EveryDayCaptureStatics
 as
 select DayInt,count(uin) from tecentqqdata group by DayInt
 order by DayInt

 go
 Create table  SpecialSpellName
(--chinese convert english
	Id uniqueidentifier primary key,
	Name nvarchar(1) not null,
	Code varchar(16) not null,
	IsDeleted int default(0)
);
go 
Create table App
(
	Id int identity(1,1) primary key ,
	AppName nvarchar(32) not null,
	AppCode varchar(32) not null,
	IsDelete int default(0)
);
create table AppVer
(
	Id int identity(1,1),
	AppVersion varchar(32)not null,
	AppId int not null ,
	IsNowVersion bit not null,--is now version
	CreateTime DateTime default(getdate()) ,
	
);
alter table AppVer add constraint FK_AppId foreign key (AppId) references App(Id)
Create table KeyWord
(
	Id uniqueidentifier primary key,
	Word nvarchar(64),
	Useage nvarchar(128),
	IsDelete int default(0)
);
 -- create index
 --创建索引进行性能优化查询
--
--begin
--	create nonclustered index IndexFillterNotImgData
--	on TecentQQData (imgtype) where IsGatherImage=0 and imgtype>-1 and GatherImageErrorNum=0;
--	set  ANSI_PADDING  off;
--end
-- drop   index  IndexFillterNotImgData on  TecentQQData