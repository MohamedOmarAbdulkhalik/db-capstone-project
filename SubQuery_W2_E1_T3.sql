select MenuName from Menus 
where MenuID = any (select MenuID from orders where Quantity > 2);
