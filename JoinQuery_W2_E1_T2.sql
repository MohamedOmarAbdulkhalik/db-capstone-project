use mydb;
select customers.CustomerID ,
customers.FullName ,
orders.OrderID ,
orders.TotalCost ,
menus.MenuName ,
menuitems.CourseName from orders 
join bookings on orders.BookingID = bookings.BookingID
join customers on bookings.CustomerID = customers.CustomerID
join menus on orders.MenuID =  menus.MenuID
join menuitems on menus.MenuItemID = menuitems.MenuItemID;