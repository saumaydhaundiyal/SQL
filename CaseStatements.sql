-- CASE STATEMENTS - allows you to specify a condition and it also allows us
-- to specify what you want returned when that condition is met 

SELECT FirstName, LastName, Age
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

-- Now let's say we want to return Old for people above 30 and young for below 30 
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	ELSE 'Young'	
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

-- We can also use many case statements 
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age BETWEEN 27 AND 30 THEN 'Young'
	ELSE 'Baby'	
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age

-- We need to understand if two conditions are met, the condition specified first is returned 
SELECT FirstName, LastName, Age,
CASE
	WHEN Age > 30 THEN 'Old'
	WHEN Age = 38 THEN 'Stanley'
	ELSE 'Baby'	
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age
-- Here Stanley is not returned because he already fits under the first case statement 
-- and hence Old is returned for that. We need to keep this in mind. 

SELECT FirstName, LastName, Age,
CASE
	WHEN Age = 38 THEN 'Stanley'
	WHEN Age > 30 THEN 'Old'
	ELSE 'Baby'	
END
FROM EmployeeDemographics
WHERE Age IS NOT NULL
ORDER BY Age
-- Now this condition is met first so Stanley is returned 

-- Now let's have a look at some of the use cases 
SELECT *
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Now we will focus on the JobTitle and Salary but we also need first and last name 
-- Let's start building that 
SELECT FirstName, LastName, JobTitle, Salary 
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- Use Case - Dunder Mifflin had a fantastic year and Michael Scott is supposed to give all
-- employees a raise. But the amount of raise would differ. Salesmen who contributed the most to this 
-- fantastic year would get more than others. 
-- Let's calculate what their salary would be after the raise 

SELECT FirstName, LastName, JobTitle, Salary,
CASE 
	WHEN JobTitle = 'Salesman' THEN Salary + (Salary * 0.10)
	WHEN JobTitle = 'Accountant' THEN Salary + (Salary * 0.05)
	WHEN JobTitle = 'HR' THEN Salary + (Salary * 0.000001)
	ELSE Salary + (Salary * 0.03)
END AS SalaryAfterRaise
FROM EmployeeDemographics
JOIN EmployeeSalary
	ON EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

-- You would often find Case statements useful to categorize or label things a lot 


