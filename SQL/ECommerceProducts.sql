/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP 1000 [ProductID]
      ,[ProductCategory]
      ,[ProductName]
      ,[ProductImagePath]
      ,[ProductPrice]
      ,[ProductDescription]
  FROM [ECommerceDataBase].[dbo].[ECommerceProducts]