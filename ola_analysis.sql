use ola;
select * from ola_book;

#Q.1 Retrieve all successful bookings?

select Customer_ID ,Booking_Status from ola_book where Booking_Status = 'Success';
select count(Booking_Status) from ola_book where Booking_Status = 'Success';

#Q.2 Find the average ride distance for each vehicle type
  
select Vehicle_Type, avg(Ride_Distance) as avg_distance from ola_book 
group by Vehicle_Type;


#Q.3 Get the total number of canceled rides by customers

select count(Canceled_Rides_by_Customer) from ola_book where Booking_Status ='Canceled by Customer';


#Q.4 List the top 5 customers who booked the highest number of rides

select Customer_ID ,count(Booking_ID) from ola_book group by Customer_ID order by Booking_ID desc limit 5;


#Q.5 Get the number of rides canceled by drivers due to personal and car related issues

select count(Canceled_Rides_by_Driver),Canceled_Rides_by_Driver, Booking_Status from ola_book where Canceled_Rides_by_Driver  = 'Personal & Car related issue';


#Q.6 Find the maximum and minimum driver ratings for Prime Sedan bookings:

select min(Driver_Ratings),max(Driver_Ratings), Vehicle_Type from ola_book where Vehicle_Type = 'Prime Sedan';


#Q.7 Retrieve all rides where payment was made using UPI:

select Payment_Method,Customer_ID from ola_book where Payment_Method = 'UPI';
select count(Payment_Method),Payment_Method from ola_book where Payment_Method = 'UPI';


#Q.8 Find the average customer rating per vehicle type:

select avg(Customer_Rating), Vehicle_Type from ola_book group by Vehicle_Type;


#Q.9 Calculate the total booking value of rides completed successfully

select count(Booking_Value), Booking_Status from ola_book where Booking_Status = 'Success';


#Q.10 List all incomplete rides along with the reason:

select Incomplete_Rides_Reason,Incomplete_Rides from ola_book where Incomplete_Rides = 'Yes';































