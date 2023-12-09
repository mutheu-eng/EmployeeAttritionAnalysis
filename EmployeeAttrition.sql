SELECT *
FROM employeeattrition;

-- AVEARGE AGE OF EMPLOYEES
SELECT ROUND(AVG(ï»¿Age),0) AS avg_age
FROM employeeattrition;

-- HOW MANY EMPLOYEES HAVE LEFT ALREADY?
SELECT COUNT(Attrition) AS EmployeeAttrition
FROM employeeattrition
WHERE Attrition ="Yes";

-- ALTER THE TABLE TO ADD THE ATTRITION COUNT
ALTER TABLE employeeattrition
ADD COLUMN AttritionCount INT;

-- UPDATING THE TABLE TO ADD THE ATTRITIONCOUNT COLUMN
UPDATE employeeattrition
SET AttritionCount = CASE 
                     WHEN Attrition = "Yes" THEN 1 
	                 ELSE 0
                    END; 

SELECT *
FROM employeeattrition;

-- WHICH EDUCATION FIELD HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?
SELECT EducationField, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY EducationField
ORDER BY AttritionCount DESC;

-- WHICH BUSINESSTRAVEL HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?
SELECT BusinessTravel, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY BusinessTravel
ORDER BY AttritionCount DESC;

-- WHICH DEPARTMENT HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?
SELECT Department, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY Department
ORDER BY AttritionCount DESC;

-- WHICH GENDER HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?   
SELECT Gender, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY Gender
ORDER BY AttritionCount DESC;

-- WHICH JOBROLE HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?
SELECT JobRole, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY JobRole
ORDER BY AttritionCount DESC
LIMIT 10;

-- WHICH MARITAL STATUS HAD THE HIGHEST NUMBER OF EMPLOYEE ATTRITION?
SELECT MaritalStatus, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY MaritalStatus
ORDER BY AttritionCount DESC;

-- DOES WORKING OVERTIME RESULT TO EMPLOYEE ATTRITION?
SELECT OverTime, SUM(AttritionCount) AS AttritionCount
FROM employeeattrition
GROUP BY OverTime
ORDER BY AttritionCount DESC;

-- DOES THE DAILYRATE RESULT TO EMPLOYEE ATTRITION?
SELECT Attrition, FORMAT(SUM(DailyRate),0) AS DailyRateAmount
FROM employeeattrition
GROUP BY Attrition
ORDER BY DailyRateAmount DESC; 

-- DOES THE HOURLYRATE RESULT TO EMPLOYEE ATTRITION?
SELECT Attrition, FORMAT(SUM(HourlyRate),0) AS HourlyRateAmount
FROM employeeattrition
GROUP BY Attrition
ORDER BY HourlyRateAmount DESC;

-- DOES THE MONTHLY RATE RESULT TO EMPLOYEE ATTRITION?
SELECT Attrition, FORMAT(SUM(MonthlyRate),0) AS MonthlyRateAmount
FROM employeeattrition
GROUP BY Attrition
ORDER BY MonthlyRateAmount DESC;

-- DOES THE MONTHLY INCOME RESULT TO EMPLOYEE ATTRITION?
SELECT Attrition, FORMAT(SUM(MonthlyIncome),0) AS Salary
FROM employeeattrition
GROUP BY Attrition
ORDER BY Salary DESC; 

SELECT Attrition, ROUND(AVG(ï»¿Age),0) AS avg_age
FROM employeeattrition
GROUP BY Attrition; 

SELECT DistanceFromHome, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY DistanceFromHome
ORDER BY Count DESC
LIMIT 10;

SELECT Education, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY Education
ORDER BY Count DESC;

SELECT EnvironmentSatisfaction, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY EnvironmentSatisfaction
ORDER BY Count DESC;

SELECT JobInvolvement, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY JobInvolvement
ORDER BY Count DESC;

SELECT JobSatisfaction, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY JobSatisfaction
ORDER BY Count DESC;

SELECT NumCompaniesWorked, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY NumCompaniesWorked
ORDER BY Count DESC
LIMIT 10;

SELECT PercentSalaryHike, sum(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY PercentSalaryHike
ORDER BY SumOfAttrition DESC
LIMIT 10;

SELECT PerformanceRating, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY PerformanceRating
ORDER BY SumOfAttrition DESC;

SELECT RelationshipSatisfaction, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY RelationshipSatisfaction
ORDER BY SumOfAttrition DESC;

SELECT StockOptionLevel, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY StockOptionLevel
ORDER BY SumOfAttrition DESC; 

SELECT TotalWorkingYears, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY TotalWorkingYears
ORDER BY SumOfAttrition DESC
LIMIT 10;

SELECT TrainingTimesLastYear, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY TrainingTimesLastYear
ORDER BY SumOfAttrition DESC;

SELECT WorkLifeBalance, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY WorkLifeBalance
ORDER BY SumOfAttrition DESC;

SELECT YearsAtCompany, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY YearsAtCompany
ORDER BY SumOfAttrition DESC
LIMIT 10;

SELECT YearsInCurrentRole, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY YearsInCurrentRole
ORDER BY SumOfAttrition DESC;

SELECT YearsSinceLastPromotion, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY YearsSinceLastPromotion
ORDER BY SumOfAttrition DESC;

SELECT YearsWithCurrManager, SUM(AttritionCount) AS SumOfAttrition
FROM employeeattrition
GROUP BY YearsWithCurrManager 
ORDER BY SumOfAttrition DESC;