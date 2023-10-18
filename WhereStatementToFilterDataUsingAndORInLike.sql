--Let's try to find the row where the name is Jim 
SELECT * 
FROM EmployeeDemographics
WHERE FirstName = 'Jim'

--Let's try to find the rows where the name is not Jim
SELECT *
FROM EmployeeDemographics
WHERE FirstName <> 'Jim'
-- Here the does not equal sign is a little different from Python

--Let's look at age where it is greater than 30
SELECT * 
FROM EmployeeDemographics
WHERE Age > 30

--Now if we want to include people who are 30 we need = operator
SELECT *
FROM EmployeeDemographics
WHERE Age >= 30

--Let's try less than 32 now 
SELECT *
FROM EmployeeDemographics
WHERE Age < 32

-- Now let's say we want people who are less than and equal to 32 and male
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 AND Gender = 'Male'

-- If we use or in the above query 
SELECT *
FROM EmployeeDemographics
WHERE Age <= 32 OR Gender = 'Male'
-- Now the query looks to satisfy only one criteria out of the two 
-- that's why even though Michael is 35 he is still in the result because he is male 

-- Let's see how we can look at the rows where the last name starts with a S
SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%'
-- Remember that this % sign is actually called a wildcard 

--if we put the wildcard in the begining now we would get all the last names 
-- where there is s anywhere
SELECT *
FROM EmployeeDemographics
WHERE LastName LIKE '%S%'

--Now if we want the last name to start with S and also have and o somewhere
SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%o%'

--We can even give consecutive letters
SELECT * 
FROM EmployeeDemographics
WHERE LastName LIKE 'S%ute%'

--Now if talk about the In it is almost like an equal statement but like multiple equal statement 
SELECT * 
FROM EmployeeDemographics
WHERE FirstName IN ('Jim','Michael','Toby')
--if not for IN statement above we would have to use AND again and again 

