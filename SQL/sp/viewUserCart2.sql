USE [ECommerceDataBase]
GO
/****** Object:  StoredProcedure [dbo].[viewUserCart2]    Script Date: 10/23/2021 5:36:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER proc [dbo].[viewUserCart2](
@CartID int
)
as
begin
delete from cartBasket where @CartID = CartID
end