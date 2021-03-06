USE [ECommerceDataBase]
GO
/****** Object:  StoredProcedure [dbo].[addProductItemToCart]    Script Date: 10/23/2021 5:16:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[addProductItemToCart](
@UID int,
@ProductID int,
@Quantity int
/**@Added_Date date**/
)
as
begin
insert into cartBasket(UID, ProductID, Quantity/**, Added_Date**/) values (@UID, @ProductID, @Quantity/**, @Added_Date**/)
end