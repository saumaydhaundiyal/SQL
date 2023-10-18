--selct all columns and all rows
SELECT * FROM EmployeeDemographics

--selct a particular column from the table let's say first name and last name
SELECT FirstName, LastName
FROM EmployeeDemographics

--return top five rows
SELECT TOP 5 *
FROM EmployeeDemographics

--return distinct values in columns 
SELECT DISTINCT (EmployeeID)
FROM EmployeeDemographics
--it return all the rows since all the ID's are unique

-- let's try the same with gender 
SELECT DISTINCT (Gender)
FROM EmployeeDemographics
-- here it returns just two values which are unique in the column 

-- Let's try to count the num of values in a column 
SELECT COUNT(LastName)
FROM EmployeeDemographics
-- if there was 1 missing value in the LastName the query would have returned 8 instead of 9 
-- also this query  return no column name

--Let's try to name it using AS 
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

--Let's try to use the Max function now
SELECT MAX(Salary) AS MaxSalary
FROM EmployeeSalary

--Let's try to use the Min function now
SELECT MIN(SALARY) AS MinSalary
FROM EmployeeSalary

--Let's try to use the Avg function now
SELECT AVG(SALARY) AS AvgSalary
FROM EmployeeSalary

---Now if we were at master and try to execute lets say salary database 
--SELECT *
--FROM EmployeeSalary
-- it shows invalid object name 
-- Let's look at correct way on how to do it 

SELECT *
FROM SQLTutorial.dbo.EmployeeSalary
-- Now it works fine 