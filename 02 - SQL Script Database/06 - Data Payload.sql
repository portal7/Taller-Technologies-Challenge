USE [TallerChallenge]
GO


DECLARE @UserId_1 UNIQUEIDENTIFIER = NEWID();
DECLARE @UserId_2 UNIQUEIDENTIFIER = NEWID();
DECLARE @UserId_3 UNIQUEIDENTIFIER = NEWID();

DECLARE @OrderId_1 UNIQUEIDENTIFIER = NEWID();
DECLARE @OrderId_2 UNIQUEIDENTIFIER = NEWID();
DECLARE @OrderId_3 UNIQUEIDENTIFIER = NEWID();


-- BOOTSTRAPING USERS

INSERT INTO [dbo].[Persons]
           ([PersonID]
           ,[FirstName]
           ,[LastName]
           ,[Age]
           ,[Occupation]
           ,[MaritalStatus])
     VALUES
           (@UserId_1
           ,'John'
           ,'Doe'
           ,30
           ,'Student'
           ,'S')


INSERT INTO [dbo].[Persons]
           ([PersonID]
           ,[FirstName]
           ,[LastName]
           ,[Age]
           ,[Occupation]
           ,[MaritalStatus])
     VALUES
           (@UserId_2
           ,'Jane'
           ,'Doer'
           ,25
           ,'Developer'
           ,'M')

INSERT INTO [dbo].[Persons]
           ([PersonID]
           ,[FirstName]
           ,[LastName]
           ,[Age]
           ,[Occupation]
           ,[MaritalStatus])
     VALUES
           (@UserId_3
           ,'Jay'
           ,'Doo'
           ,53
           ,'Employee'
           ,'M')

-- ORDERS

INSERT INTO [dbo].[Orders]
           ([OrderID]
           ,[PersonID]
           ,[DateCreated]
           ,[MethodofPurchase])
     VALUES
           (@OrderId_1
           ,@UserId_1
           ,GETUTCDATE()
           ,'ONLINE')


INSERT INTO [dbo].[Orders]
           ([OrderID]
           ,[PersonID]
           ,[DateCreated]
           ,[MethodofPurchase])
     VALUES
           (@OrderId_2
           ,@UserId_2
           ,GETUTCDATE()
           ,'ONLINE')


INSERT INTO [dbo].[Orders]
           ([OrderID]
           ,[PersonID]
           ,[DateCreated]
           ,[MethodofPurchase])
     VALUES
           (@OrderId_3
           ,@UserId_3
           ,GETUTCDATE()
           ,'STORE')

INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,123456 ,112222333 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,678910 ,112222334 ,'BRAZIL')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,111213 ,112222335 ,'URUGUAY')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,141516 ,112222336 ,'COLOMBIA')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,123456 ,112222337 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_1 ,171819 ,112222338 ,'ARGENTINA')

INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,123456 ,112222333 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,678910 ,112222334 ,'BRAZIL')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,111213 ,112222335 ,'URUGUAY')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,141516 ,112222336 ,'COLOMBIA')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,123456 ,112222333 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_2 ,202122 ,112222339 ,'MEXICO')


INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,123456 ,112222333 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,678910 ,112222334 ,'BRAZIL')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,111213 ,112222335 ,'URUGUAY')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,141516 ,112222336 ,'COLOMBIA')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,123456 ,112222333 ,'CHILE')
INSERT INTO [dbo].[OrdersDetails] ([OrderDetailID] ,[OrderID] ,[ProductNumber] ,[ProductID] ,[ProductOrigin]) VALUES (NEWID() ,@OrderId_3 ,232425 ,112222340 ,'COSTA RICA')





