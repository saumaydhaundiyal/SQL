--Aliasing -- temporarily changing the column name or table name in your script 
-- does not affect the output as such but improves the readability of your script 


SELECT FirstName AS Fname
FROM EmployeeDemographics
-- here we named the column FirstName as Fname 

--Let's try to add FirstName and LastName and get a column FullName

SELECT FirstName + ' ' + LastName AS FullName
FROM EmployeeDemographics
-- Here FullName is our Alias 

-- Often times somewhere else where alias is used is when we use aggregate functions
SELECT Avg(Age) AS AvgAge
FROM EmployeeDemographics

--Let's look at aliasing the tables 
SELECT Demo.EmployeeID, Sal.Salary
FROM EmployeeDemographics AS Demo 
JOIN EmployeeSalary AS Sal 
	ON Demo.EmployeeID = Sal.EmployeeID
-- Do not use alises like a b c for tables as it gets hard to keep up which columns are coming from which table in long queries 

SELECT Demo.EmployeeID, Demo.FirstName, Sal.JobTitle, Ware.Age
FROM EmployeeDemographics AS Demo 
LEFT JOIN EmployeeSalary AS Sal 
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN WareHouseEmployeeDemographics AS Ware
	ON Demo.EmployeeID = Ware.EmployeeID


