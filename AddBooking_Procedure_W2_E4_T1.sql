delimiter //
create procedure AddBooking(in inDate date ,in inTable int ,in inStaff int ,in inCustomer int)
begin
insert into bookings (BookingDate,TableNumber,StaffID,CustomerID) 
values (inDate,inTable,inStaff,inCustomer);
select "New booking added" as Confirmation;
end;
delimiter;

call AddBooking("2022-12-1",3,1,1)