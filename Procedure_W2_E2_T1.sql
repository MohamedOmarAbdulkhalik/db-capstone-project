delimiter //
create procedure GetMaxQuantity()
begin
select max(Quantity) as "Max Quantity in Order" from orders ;
end//

call GetMaxQuantity();
