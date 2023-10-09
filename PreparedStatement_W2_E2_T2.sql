
prepare GetOrderDetail from "select OrderID ,Quantity ,TotalCost from orders where OrderID = ? ";
set @id = 1;
execute GetORderDetail using @id; 