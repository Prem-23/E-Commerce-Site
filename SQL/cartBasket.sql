/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [CartID]
      ,[UID]
      ,[ProductID]
      ,[Quantity]
      ,[Added_Date]
  FROM [ECommerceDataBase].[dbo].[cartBasket]