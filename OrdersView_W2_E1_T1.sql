create view OrdersView as select OrderID , Quantity , TotalCost from Orders;
select * from OrdersView;