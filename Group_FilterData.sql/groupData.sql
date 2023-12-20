-- Write a SQL SELECT statement to group all records that have the same order date.
SELECT Orders.OrderDate FROM Orders GROUP BY (OrderDate)

-- Write a SQL SELECT statement to retrieve the number of orders placed on the same day.
SELECT Orders.OrderDate,COUNT(OrderID) FROM Orders GROUP BY (OrderDate) 

--Write a SQL SELECT statement to retrieve the total order quantities placed by each department.
SELECT Department,SUM(OrderQty) FROM Orders GROUP BY Department

--Write a SQL SELECT statement to retrieve the number of orders placed on the same day between the following dates: 1st June 2022 and 30th June 2022.
SELECT OrderDate, COUNT(OrderID) FROM Orders GROUP BY OrderDate HAVING OrderDate BETWEEN "2022-06-1" AND "2022-6-30"