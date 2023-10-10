delimiter //
create procedure CheckBooking(in inputTable int ,in inputDate date)
begin
declare x int default 0;
select BookingID into x from bookings where TableNumber = inputTable and BookingDate = inputDate;
if x = 0 then
select concat("Table ",inputTable," is available") as "Booking Status";
else
select concat("Table ",inputTable," is already bookied") as "Booking Status";
end if;
end//
delimiter ;

call CheckBooking(3,"2022-10-11");