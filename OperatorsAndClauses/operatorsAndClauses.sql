-- Task1: Use the ANY operator to identify all employees with the Order Status status 'Completed'. 
SELECT EmployeeId, EmployeeName  
FROM employees  
WHERE EmployeeID = ANY (SELECT EmployeeID FROM employee_orders WHERE Status='Completed');

-- Task 2: Use the ALL operator to identify the IDs of employees who earned a handling cost of "more than 20% of the order value" from all orders they have handled.
SELECT EmployeeID,HandlingCost FROM employee_orders WHERE HandlingCost > ALL (SELECT OrderTotal/100 * 20 FROM orders); 

-- Task 3: Use the GROUP BY clause to summarize the duplicate records with the same column values into a single record by grouping them based on those columns.
SELECT EmployeeID,HandlingCost FROM employee_orders WHERE HandlingCost > ALL (SELECT OrderTotal/100 * 20 FROM orders)
GROUP BY EmployeeID,HandlingCost;
