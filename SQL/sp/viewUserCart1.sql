USE [ECommerceDataBase]
GO
/****** Object:  StoredProcedure [dbo].[viewUserCart1]    Script Date: 10/23/2021 5:36:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[viewUserCart1](
@UID int
)
as
begin
select c.CartID, p.ProductCategory, p.ProductName, p.ProductDescription, p.ProductPrice, p.ProductImagePath, c.Quantity, c.Added_Date, (c.Quantity * p.ProductPrice) as ItemPrice from cartBasket c, ECommerceProducts p where UID = @UID AND c.ProductID = p.ProductID
end