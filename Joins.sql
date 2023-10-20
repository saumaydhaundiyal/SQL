
INSERT INTO EmployeeDemographics VALUES
(1011, 'Ryan', 'Howard', 26, 'Male'),
(NULL, 'Holly', 'Flax', NULL, NULL),
(1013, 'Darryl', 'Philbin', NULL, 'Male')

SELECT * FROM EmployeeDemographics

INSERT INTO EmployeeSalary VALUES
(1010, NULL, 47000),
(NULL, 'Salesman', 43000)

SELECT * FROM EmployeeSalary

-- Joins today 

-- Join is a way to join multiple tables into a single output table

-- Let's start with the Inner Join 

SELECT * FROM EmployeeDemographics
INNER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
-- it shows all the employees ID's which are common in both the tables 
-- which we from 1001 to 1009
-- also if you just write join, it is by default taken as Inner Join 

--Let's try full outer join now 
SELECT * FROM EmployeeDemographics
FULL OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Let's try left outer join now 
SELECT * FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Let's try right outer join now 
SELECT * FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--SELECT *  where we are selecting everything is not a very practical use case 
-- We would usually be selecting exactly what columns we need in our output 
SELECT EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
-- The above query did not work. Why? 
-- Because we have two fields one in each table and we have not specified 
-- which EmployeeID we want it to use. And that changes the result a lot. 
-- Let's see 

--Using employeesalary and right outer join first  
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Using employeedemographics and right outer join   
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
RIGHT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Using employeedemographics and left outer join   
SELECT EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Using employeesalary and left outer join 
SELECT EmployeeSalary.EmployeeID, FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
LEFT OUTER JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case 
-- Kevin thinks he made a mistake in calculating the average salary of salesman 
-- Angela wants to get that using SQL 

-- Let's think step by step 
-- Here we need two columns which are Jobtitle and Salary 

SELECT JobTitle, AVG (Salary)
FROM EmployeeSalary
WHERE JobTitle = 'Salesman'
GROUP BY JobTitle

