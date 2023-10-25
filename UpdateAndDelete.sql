--Updating and Deleting Data 

SELECT *
FROM EmployeeDemographics
--Here we see that Holly Flax does not have an employeeID and we want to update that 

--UPDATE EmployeeDemographics
--SET EmployeeID = 1012
-- If we run just this. The whole employeeID are gonna get set to 1012 


UPDATE EmployeeDemographics
SET EmployeeID = 1012
WHERE FirstName = 'Holly' AND LastName = 'Flax'
--This updates the ID 

-- Now let's update 'Age' and 'Gender' using similar query 
UPDATE EmployeeDemographics
SET Age = 31, Gender = 'Female'
WHERE EmployeeID = 1012

--Let's look at the DELETE statement now
--DELETE statement would delete the entire row in the table 

DELETE FROM EmployeeDemographics
WHERE EmployeeID = 1005 
-- 1005 is now gone. We need to be very careful while using the DELETE statement 
-- Since there is no way to reverse or recover the data once deleted 

-- A little trick before using the DELETE statements is to use SELECT statement 
SELECT *
FROM EmployeeDemographics
WHERE EmployeeID = 1004
-- Now we know exactly what we are going to delete and we just replace 
-- SELECT with DELETE to delete the row or rows 


