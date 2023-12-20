-- Write an INNER JOIN SQL statement to combine the full name and the phone number of each customer from the Customers
-- table with the related booking date and 'number of guests' from the Bookings table. 

SELECT Bookings.BookingDate , Bookings.NumberOfGuests , Customers.FullName , Customers.PhoneNumber 
FROM Bookings INNER JOIN Customers
ON Customers.CustomerID = Bookings.CustomerID;


--  Write a LEFT JOIN SQL statement to view the customer id from the Customers table and the related booking id from the Bookings table.

SELECT Customers.CustomerID  , Bookings.BookingID 
FROM Customers LEFT JOIN Bookings
ON Customers.CustomerID = Bookings.CustomerID
