delimiter //
create procedure UpdateBooking(in inID int ,in inDate date)
begin
update bookings set BookingDate = inDate where BookingID = inID;
select concat("booking ",inID," updated") as Confirmation;
end;
delimiter;

call UpdateBooking(26,"2022-12-1");
