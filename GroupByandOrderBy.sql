SELECT *
FROM EmployeeDemographics


-- When we use Group by clause, it is actually similar to Distinct in a way the difference being that the Distinct function 
--would return all the values which appear once in a column whereas the GroupBy would also roll them up in to a single column 

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

SELECT COUNT(Gender) AS GenderCount
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age
-- So this query tells us that there are no employees with the same age and gender. 
--For better understanding, if there were two employess with the age as 30 and were mail. Row3 would have returned 2 

--remember we can put multiple columns above as long as we put multiple columns in the group by clause 

-- we can still use where clause here 
SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender

--Let's understand ORDER BY
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender
-- automatically orders the countgender column in asc order since it is default in the SQL language 

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC
-- now this changes it to Descending order

--we can also order by gender
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY Gender
-- here it shows female first because f comes before m 

SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender
-- here it first orders by age but also looks if there is a female aged same to show first 

SELECT *
FROM EmployeeDemographics
ORDER BY Age ASC, Gender DESC
-- we can also keep the age in ASC and DESC and so on we can play around 

-- Also, we don't neccessarily have to put in the column name. We can also mention the column number 
SELECT *
FROM EmployeeDemographics
ORDER BY 4 ASC, 5 DESC 