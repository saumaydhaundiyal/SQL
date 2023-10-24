--Creating new table WareHouseEmployeeDemograhics and inserting some data 

CREATE TABLE WareHouseEmployeeDemographics 
(EmployeeID int, 
FirstName varchar(50), 
LastName varchar(50), 
Age int, 
Gender varchar(50)
)

INSERT INTO WareHouseEmployeeDemographics VALUES
(1013, 'Darryl', 'Philbin', NULL, 'Male'),
(1050, 'Roy', 'Anderson', 31, 'Male'),
(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
(1052, 'Val', 'Johnson', 31, 'Female')

SELECT * FROM WareHouseEmployeeDemographics

SELECT * FROM EmployeeDemographics

-- Let's take a look at full outer join with new table first 

SELECT * FROM EmployeeDemographics
FULL OUTER JOIN WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = WareHouseEmployeeDemographics.EmployeeID

-- Let's run a union of the two now 
SELECT *
FROM EmployeeDemographics
UNION 
SELECT *
FROM WareHouseEmployeeDemographics

-- In Union we are able to stack the tables on top of another or below and we are not getting the tables side by side
-- Also the Union removes the duplicate entry of Darryl Philbin which was in both the tables 


-- Let's try union all now 
SELECT *
FROM EmployeeDemographics
UNION ALL
SELECT *
FROM WareHouseEmployeeDemographics
-- As we can see, in union all the query does not enter only distinct rows but also
-- results in the duplicate row of Darryl Philbin 

-- One of the main reasons why the above two tables work great is the fact that 
-- both the tables have the exact same rows

-- Let's have a look at other tables 
 SELECT * 
 FROM EmployeeDemographics

 SELECT *
 FROM EmployeeSalary

 -- Let's run this query another way 

 SELECT EmployeeID, FirstName, Age
 FROM EmployeeDemographics
 UNION 
 SELECT EmployeeID, JobTitle, Salary
 FROM EmployeeSalary
-- This query still works because first the data types of the three columns 
-- from each table are same. Although we are getting wrong information
-- We are getting Salesman as FirstName and so on 





