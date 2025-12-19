create database Ola;
select *from bookings;
use Ola;
-- 1. Retrieve all successful bookings:
SELECT *
FROM bookings
WHERE booking_status = 'Success'
LIMIT 10;

-- 2. Find the average ride distance for each vehicle type:
select Vehicle_Type,avg(Ride_Distance)  as AVG_Distance from bookings
group by Vehicle_Type;

-- 3. Get the total number of cancelled rides by customers:

select count(Canceled_Rides_by_Customer) as bookings_cacel_by_Rider from bookings;

select *from bookings;

-- 4. List the top 5 customers who booked the highest number of rides

select Customer_ID,count(Booking_ID) as Total_rider from bookings
group by Customer_ID
order by Total_rider desc limit 5;
-- 5. Get the number of rides cancelled by drivers due to personal and car-related issues

SELECT COUNT(*)
FROM bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

-- 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
select Vehicle_Type,max(Driver_Ratings) AS Max_Driver_Ratings,min(Driver_Ratings) as Min_Driver_ratings from bookings
where Vehicle_Type='Prime Sedan';

#7. Retrieve all rides where payment was made using UPI
select Payment_Method from bookings
where Payment_Method='UPI';
#8. Find the average customer rating per vehicle type

select Vehicle_Type, avg(Customer_Rating) as Rating from bookings
group by Vehicle_type;

#Calculate the total booking value of rides completed successfully
select sum(Booking_Value) as total_booking_value from bookings
where Booking_Status='Success';


#. List all incomplete rides along with the reason
select Booking_ID,Incomplete_Rides_Reason from bookings
where Incomplete_Rides='yes';



