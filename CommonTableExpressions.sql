--CTE's: Common Table Expression is a named temporary result set used to manipulate the complex subqueries data 

--  Now this exists only in the scope of the query. Once out of the query it's like it never existed 
-- Only created in memory and not in a temp.db file like a temp table would be 

WITH CTE_Employee AS 
(SELECT FirstName, LastName, Gender, Salary
, COUNT(Gender) OVER (PARTITION BY Gender) as TotalGender
, AVG (Salary) OVER (PARTITION BY Gender) AS AvgSalary
FROM EmployeeDemographics AS empdemo 
JOIN EmployeeSalary AS empsal
	ON empdemo.EmployeeID = empsal.EmployeeID
WHERE Salary > '45000'
)
SELECT FirstName, AvgSalary
FROM CTE_Employee

--SELECT * FROM CTE_Employee : This would not work because the SELECT statements needs to be 
-- right after the CTE 