--Partion By 

-- It is similar to Group By clause and lot of people get confused between the two 
-- But group by reduced the number of results in output by rolling them up and 
-- and calculating the averages, sum and all by groups 

--Whereas 
-- Partition by actually divides results into partition and shows how windows function will be used 

SELECT *
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal 
	ON demo.EmployeeID = Sal.EmployeeID

-- Let's use the partition by now 
SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal 
	ON demo.EmployeeID = Sal.EmployeeID
--Here Pam Beasley is a female and there are total of 3 females alongside her
-- The result did not roll up into two rows showing the count of male and female
-- We were able to get the similar result but did not have to compromise on the other columns that were needed 

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender)
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal 
	ON demo.EmployeeID = Sal.EmployeeID
GROUP BY FirstName, LastName, Gender, Salary
-- This does not get the desired result 

SELECT Gender,
COUNT(Gender)
FROM EmployeeDemographics AS Demo
JOIN EmployeeSalary AS Sal 
	ON demo.EmployeeID = Sal.EmployeeID
GROUP BY Gender
-- This gets the desired result but we get the results rolled up in two rows 
