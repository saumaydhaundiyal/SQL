--Having Clause

--Let's calculate the count of JobTitles

SELECT JobTitle, COUNT(JobTitle) AS CountOfJobTitle 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle

--Let's try and find all those counts where there are more than 1 person in a JobTitle 
SELECT JobTitle, COUNT(JobTitle) AS CountOfJobTitle 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
WHERE COUNT(JobTitle) > 1
GROUP BY JobTitle
--We get this error that we cannot use this aggregate function in WHERE clause 
-- We need to have a Having Clause 

SELECT JobTitle, COUNT(JobTitle) AS CountOfJobTitle 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
HAVING COUNT(JobTitle) > 1
GROUP BY JobTitle
-- It still gives an error because our having statement is completely dependent on 
-- the aggregate function and we are giving the condition before aggregation 

--Let's try the correct way 
SELECT JobTitle, COUNT(JobTitle) AS CountOfJobTitle 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING COUNT(JobTitle) > 1
-- Now it works since the having condition is after the GROUP BY clause where aggregation is happening 

--Let's look at average salary now 
SELECT JobTitle, AVG(Salary) 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
GROUP BY JobTitle
HAVING AVG(Salary) > 45000
ORDER BY AVG(Salary) DESC
-- Here we are lookig at the jobtitles with Avg Salary of more than 45000

