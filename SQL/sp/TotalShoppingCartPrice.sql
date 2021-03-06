USE [ECommerceDataBase]
GO
/****** Object:  StoredProcedure [dbo].[TotalShoppingCartPrice]    Script Date: 10/23/2021 5:35:49 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[TotalShoppingCartPrice](
@UID int
)
as
begin
select sum((c.Quantity * p.ProductPrice)) as TotalPrice from cartBasket c, ECommerceProducts p where UID = @UID AND c.ProductID = p.ProductID
end