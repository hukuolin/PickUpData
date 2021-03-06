use  AccountDB
go
create table Encry
(
	Id smallint primary key identity(1,1),
	Code varchar(16) not null,--加密关键字[录入之后不运行修改]
	Remark nvarchar(128),
	IsNowEncryKey  bit not null --是否现在被使用【必须存在一行数据该值为true】 
);
Create table Enum
(
	Id int primary key identity(1,1),
	Code varchar(64) not null,-- typeof(Enum).Name+"."+Field
	Name nvarchar(64) not null,
	Remark varchar(128) not null,
	Value int not null,
	ParentId int not null,--enum name =-1
	Createtime datetime not null,
	IsDelete bit not null
);
create table [Role]
(
	Id int primary key  identity(1,1),
	Name nvarchar(16) not null,
	Code varchar(16) not null,
	IsDelete bit null,
	Createtime datetime not null
);
create table Authorty
(
	Id int primary key identity(1,1),
	AuthortyId int not null,
	Code varchar(256) not null,
	Remark nvarchar(128) ,
	ParentId int not null,--null-> -1 // tree ,  button in Ui
	CreateTime datetime not null
)
create table RoleAuthorty
(
	RoleId int not null,
	AuthortyId int not null,
	Createtime datetime not null
);
create table [User]
(
	Id uniqueidentifier primary key,
	UserName varchar(16) not null unique,
	Nick nvarchar(32) not null,
	CreateTime datetime not null,--注册事件
	Psw varchar(16) not null,
	Encry varchar(8) not null,--密码加密关键词
	IsActive bit not null--账号是否激活
);
create table UserActiveCode
(
	
	UserId  uniqueidentifier not null,
	ActiveCode varchar(8) not null,
	GenerateCodeTime datetime not null,
	CodeValidTime datetime not null,--激活码过期时间
	DayInt int not null
);
create table UserActive
(
	UserName varchar(16) not null,
	ActiveType smallint not null,
	ToolCode varchar(32) not null,
	CreateTime datetime not null
);
Create table UserRole
(
	Id uniqueidentifier primary key,
	UserId uniqueidentifier not null,
	RoleId int not null ,
	Createtime datetime not null
);
create table EventLog
(
	Id uniqueidentifier primary key,
	Category smallint not null,
	Note nvarchar(2048) not null,
	Title nvarchar(128) not null,
	IsError bit not null,
	CreateTime datetime not null,
	DayInt int not null
);
go
Create table Menu
(
	Id int primary key identity(1,1),
	Name nvarchar(32) not null,
	Code varchar(64) not null,
	Url varchar(256) ,
	Remark nvarchar(1024),
	CreateTime datetime not null,
	ParentId int not null,--If it is root ,the value is -1
	MenuType SmallInt not null,--Ele =1, menu=2,
	IsEnable bit not null
);
if(OBJECT_ID('[OperateEvent]','u') is not null)
	drop table OperateEvent
if(object_id('RowValueType','u') is not null)
	drop table RowValueType
go
create table RowValueType
(
	Id int identity(1,1) primary key,
	ColumnName varchar(32) not null,
	ColumnType varchar(32) not null,
	TableName varchar(32) not null,
	Remark nvarchar(1024) ,
	CreateTime datetime not null,
	CreateTimeDayInt int not null
);
create TABLE [dbo].[OperateEvent]
(--操作历史 ：每一次操作都把之前这对应表中的这一行数据进行清除【设置IsDelete=true】
	[Id] [uniqueidentifier] NOT NULL primary key,
	[EventId] [smallint] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[RelyTableRowValue] [varchar](36) NOT NULL,
	RowValueType int not null,
	[IsDelete] [bit] NOT NULL,
) ;
go
if(object_id('SP_MakeOperateEventByColumn','P') is not null)
	drop procedure SP_MakeOperateEventByColumn
go
create  procedure SP_MakeOperateEventByColumn
(
	@rowId varchar(36) ,
	@OpId smallint ,
	@tableName nvarchar(32) ,
	@ColumnName nvarchar(32)
)
as
begin
INSERT INTO  [dbo].[OperateEvent]
           ([Id]
           ,[EventId]
           ,[CreateTime]
           ,[RelyTableRowValue]
           ,[RowValueType]
           ,[IsDelete])
     VALUES
           (NEWID()
           ,@OpId
           ,GETDATE()
           ,@rowId
           , (select top 1 id from dbo.[RowValueType] where ColumnName=@ColumnName and TableName=@TableName)
           ,0)
end
go
if(object_id('SP_MakeOperateEventByColumnId','P') is not null)
	drop procedure SP_MakeOperateEventByColumnId
go
create  procedure SP_MakeOperateEventByColumnId
(
	@rowId varchar(36) ,
	@OpId smallint ,
	@ColumnId nvarchar(32)
)
as
begin
INSERT INTO  [dbo].[OperateEvent]
           ([Id]
           ,[EventId]
           ,[CreateTime]
           ,[RelyTableRowValue]
           ,[RowValueType]
           ,[IsDelete])
     VALUES
           (NEWID()
           ,@OpId
           ,GETDATE()
           ,@rowId
           , (select top 1 id from dbo.[RowValueType] where ID=@ColumnId)
           ,0)
end
go
create procedure SP_InitTableColumnPrimaryType
as
declare @day int
declare @time datetime
set @time=GETDATE()
set @day=CONVERT(int, CONVERT(varchar(10),@time,112))
insert into dbo.RowValueType
([ColumnName] ,[ColumnType] ,[TableName]  ,[Remark],CreateTime,CreateTimeDayInt)
select  c.name,
	case c.system_type_id 
		when 36 then 'uniqueidentifier' 
		when 56 then 'int'
			else 'Unkonw'
		end, t.name,null,@time,@day
 from sys.columns c left join sys.objects o
on c.object_id=o.object_id  
left join sys.tables t on o.object_id=t.object_id 
where o.type='U' and c.name='id' and t.name not in('RowValueType');