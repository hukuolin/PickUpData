use  AccountDB
go
SET IDENTITY_INSERT [dbo].[Encry] ON
INSERT [dbo].[Encry] ([Id], [Code], [Remark], [IsNowEncryKey]) VALUES (1, N'-1', N'default encry :not use the encry', 1)
SET IDENTITY_INSERT [dbo].[Encry] OFF