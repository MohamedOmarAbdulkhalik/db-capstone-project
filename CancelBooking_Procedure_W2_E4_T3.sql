delimiter //
create procedure CancelBooking(in inID int)
begin
delete from bookings  where BookingID = inID;
select concat("Booking ",inID," cancelled") as Confirmation;
end;
delimiter;

call CancelBooking(28);