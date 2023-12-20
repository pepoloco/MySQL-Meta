-- 1. Write a SQL statement to print all records of orders where the cost is $250 or less.
SELECT * FROM Orders WHERE Cost <= 250

-- 2.Write a SQL statement to print all records of orders where the cost is between $50 and $750. 
SELECT * FROM Orders WHERE Cost BETWEEN 50 AND 750

-- 3.Write a SQL statement to print all records of orders that have been placed by the client with the id of Cl3 and where the cost of the order is more than $100.
SELECT * FROM Orders WHERE Cost > 100 AND ClientId = "Cl3"


-- 4.Write a SQL statement to print all records of orders that have a product id of p1 or p2 and the order quantity is more than 2. 
SELECT * FROM Orders WHERE ProductID = "P1" OR ProductID ="P2" AND Quantity > 2