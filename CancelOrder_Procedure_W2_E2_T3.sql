delimiter //
create procedure CancelOrder(in InputOrderID int)
begin
delete from orders where OrderID = InputOrderID ;
select concat("Order " ,InputOrderID," is cancelld") as confirmation;
end //

call CancelOrder(1);
