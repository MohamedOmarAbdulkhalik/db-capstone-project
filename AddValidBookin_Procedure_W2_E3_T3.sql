DELIMITER //
CREATE  PROCEDURE AddValidBooking(
in inputDate date ,
in inputTable int,
in inputStaffID int,
in inputCustomerID int)
begin
declare x int default 0;
start transaction;
select BookingID into x from bookings where TableNumber = inputTable and BookingDate = inputDate ;
insert into bookings(BookingDate,TableNumber,StaffID,CustomerID) values (inputDate,inputTable,inputStaffID,inputCustomerID);
if x = 0 then
select concat('Table ',inputTable,' is booked on ',inputDate) as "Booking Status";
commit;
else
select concat('Table ',inputTable, ' is already booked -booking cancelled') as "Booking Status";
rollback;
end if;
end//
DELIMITER ;

call AddValidBooking("2022-10-11",1,1,2);


