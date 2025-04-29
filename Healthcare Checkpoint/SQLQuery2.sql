SELECT *
FROM dbo.healthcare_dataset_checkpoint;


UPDATE dbo.healthcare_dataset_checkpoint
SET  Billing_Amount = CONVERT(DECIMAL(10,2),Billing_amount);


SELECT Hospital
FROM dbo.healthcare_dataset_checkpoint
WHERE Hospital LIKE 'and%';

UPDATE  dbo.healthcare_dataset_checkpoint
SET Billing_Amount = Billing_Amount

UPDATE dbo.healthcare_dataset_checkpoint
SET Hospital =  REPLACE(Hospital,'and', '');




UPDATE  dbo.healthcare_dataset_checkpoint
SET Name =  CONCAT(
			UPPER(LEFT(Name,1)),
			LOWER(SUBSTRING(Name,2, CHARINDEX(' ',Name) - 1)),
			' ',
			UPPER(SUBSTRING(Name, CHARINDEX(' ',Name) +1, 1)),
			LOWER(SUBSTRING(Name, CHARINDEX(' ', Name)+2, LEN(Name)))
			) 
;		



SELECT Doctor
FROM dbo.healthcare_dataset_checkpoint
EXCEPT
SELECT Doctor
FROM dbo.healthcare_dataset_checkpoint
WHERE Doctor != CONCAT(
			UPPER(LEFT(Doctor,1)),
			LOWER(SUBSTRING(Doctor,2, CHARINDEX(' ',Doctor) - 1)),
			' ',
			UPPER(SUBSTRING(Doctor, CHARINDEX(' ',Doctor) +1, 1)),
			LOWER(SUBSTRING(Doctor, CHARINDEX(' ',Doctor)+2, LEN(Doctor)))
			) 

;




DECLARE @Table_name nVARCHAR(128) = 'healthcare_dataset_checkpoint';
DECLARE @schema_name nVARCHAR(128) = 'dbo';
DECLARE @sql nVARCHAR(MAX) = '';

SELECT @sql +=
	'SELECT ' + STRING_AGG(
		 'COUNT(*)-COUNT([' + COLUMN_NAME + ']) AS [' + COLUMN_NAME + '_IS_NULL]',
		 ','
	) + 
	'FROM [' + @schema_name + '].[' + @Table_name +']'
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = @Table_name AND TABLE_SCHEMA = @schema_name;

EXEC sp_executesql @sql;

SELECT *
FROM dbo.healthcare_dataset_checkpoint
WHERE Room_Number is null;

--DOCOTR


SELECT COUNT(Age) AS Age_count, Age
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Age
ORDER BY COUNT(Age) DESC;



SELECT AVG(Age) AS Age_AVG
FROM dbo.healthcare_dataset_checkpoint;

SELECT AVG(Age) AS Age_AVG, Gender
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Gender;


SELECT STDEV(Age) AS Age_stdev
FROM dbo.healthcare_dataset_checkpoint;


SELECT STDEV(Age) AS Age_stdev, Gender
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Gender;

SELECT COUNT(Gender)AS COUNT_GEN,Gender 
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Gender;


SELECT  COUNT(Gender) AS gender, Blood_Type
FROM dbo.healthcare_dataset_checkpoint 
GROUP BY Blood_Type
ORDER BY Blood_Type ASC;

SELECT  COUNT(Gender) AS gender_Count, Blood_Type, Gender
FROM dbo.healthcare_dataset_checkpoint AS S
GROUP BY Blood_Type, Gender
ORDER BY Blood_Type ASC, S.Gender DESC;



SELECT Medical_Condition
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Medical_Condition;


SELECT COUNT(Name) AS NO_OF_PEOPLE, Medical_Condition
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Medical_Condition;


SELECT COUNT(Name) AS NO_OF_PEOPLE, Gender, Medical_Condition
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Medical_Condition, Gender
ORDER BY Medical_Condition;


SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Diabetes'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	


SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Cancer'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	


SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Arthritis'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	


SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Asthma'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	

SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Obesity'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	


SELECT  COUNT(distinct Name) AS No_of_Patients,Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint
WHERE Medical_Condition = 'Hypertension'
GROUP BY Test_Results, Medication
ORDER BY Medication ;	


WITH DRN AS(
SELECT Name, Date_of_Admission, Discharge_Date, DATEDIFF(DAY, [Date_of_Admission],ISNULL([Discharge_Date],GETDATE())) AS Duration, Medication, Test_Results
FROM dbo.healthcare_dataset_checkpoint)
SELECT COUNT(Duration)as Duration_Count, Duration
FROM DRN
GROUP BY Duration
ORDER BY Duration DESC;

--HOSPITAL




WITH MCN AS(
SELECT Doctor as DO,COUNT(Medical_Condition) AS C_N
FROM dbo.healthcare_dataset_checkpoint
GROUP BY  Doctor)
SELECT C_N,  DO
FROM MCN
WHERE C_N > 3
ORDER BY C_N DESC;



WITH CTE1 AS(
SELECT Name AS ID1, Insurance_Provider AS IP1
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Name, Insurance_Provider)
SELECT COUNT(ID1), IP1
FROM CTE1 AS A
JOIN dbo.healthcare_dataset_checkpoint as B
	ON A.ID1= B.Name
GROUP BY A.IP1;



SELECT COUNT(Name) AS COUNT_name, Insurance_Provider
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Insurance_Provider;


SELECT COUNT(Name) AS COUNT_MC, Medical_Condition, Insurance_Provider
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Insurance_Provider, Medical_Condition
ORDER BY Insurance_Provider, Medical_Condition DESC;



SELECT SUM(Billing_Amount) 
FROM dbo.healthcare_dataset_checkpoint;


SELECT COUNT(Name) AS COUNT_MC, SUM(Billing_Amount) AS BILL_PER_IP, Insurance_Provider, SUM(Billing_Amount)/COUNT(Billing_Amount)  AS AVG_AMOUNT
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Insurance_Provider
ORDER BY Insurance_Provider DESC;



SELECT COUNT(Name) AS COUNT_MC, SUM(Billing_Amount) AS BILL_PER_IP, Insurance_Provider, Medical_Condition
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Insurance_Provider , Medical_Condition
ORDER BY Insurance_Provider  DESC;


SELECT COUNT(Name) AS COUNT_MC, SUM(Billing_Amount) AS BILL_PER_IP, Medication
FROM dbo.healthcare_dataset_checkpoint
WHERE Test_Results = 'Normal'
GROUP BY  Medication
ORDER BY COUNT_MC  DESC;

SELECT COUNT(Name) AS COUNT_MC, SUM(Billing_Amount) AS BILL_PER_IP, Medication
FROM dbo.healthcare_dataset_checkpoint
WHERE Test_Results = 'Abnormal'
GROUP BY  Medication
ORDER BY COUNT_MC  DESC;


/* TO CHECK whether the count per category is absolute or error percist in it*/

--WITH AFK AS (SELECT COUNT(Name) AS COUNT_MC, SUM(Billing_Amount) AS BILL_PER_IP, Medication
--FROM dbo.healthcare_dataset_checkpoint
--WHERE Test_Results = 'Inconclusive'
--GROUP BY  Medication
--)
--SELECT SUM(COUNT_MC), SUM(BILL_PER_IP)
--FROM AFK


SELECT COUNT(Name)AS No_of_People, Admission_Type, AVG(Age) AS AVG_Age, STDEV(Age) AS STDEV_Age
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Admission_Type
ORDER BY No_of_People DESC


SELECT COUNT(Name)AS No_of_People, Admission_Type, Medical_Condition
FROM dbo.healthcare_dataset_checkpoint
GROUP BY Admission_Type,Medical_Condition
ORDER BY Medical_Condition DESC




SELECT   Blood_Type, count(Admission_Type) AS count, Gender
FROM dbo.healthcare_dataset_checkpoint
WHERE Admission_Type = 'Emergency'
GROUP BY Blood_Type,Gender
ORDER BY count DESC;



SELECT    count(Admission_Type) AS count, Admission_Type, YEAR(Date_of_Admission) as YEAR
FROM dbo.healthcare_dataset_checkpoint
GROUP BY YEAR(Date_of_Admission), Admission_Type
ORDER BY YEAR(Date_of_Admission) ;



SELECT    count(Admission_Type) AS count, Admission_Type, YEAR(Date_of_Admission) as YEAR
FROM dbo.healthcare_dataset_checkpoint
GROUP BY YEAR(Date_of_Admission), Admission_Type
ORDER BY YEAR(Date_of_Admission) ;




SELECT count(Discharge_Date)AS C_D_P, YEAR(Date_of_Admission) as YEAR
FROM dbo.healthcare_dataset_checkpoint
GROUP BY YEAR(Date_of_Admission)
ORDER BY YEAR(Date_of_Admission) ;




SELECT SUM(Billing_Amount) AS BILL, YEAR(Date_of_Admission) as YEAR
FROM dbo.healthcare_dataset_checkpoint
GROUP BY YEAR(Date_of_Admission)
ORDER BY YEAR(Date_of_Admission) ;



/* check admission of patient by medical condition as year wise */
--SELECT COUNT(Medical_Condition) AS M_C_Y, YEAR(Date_of_Admission) as YEAR, Medical_condition
--FROM dbo.healthcare_dataset_checkpoint
--WHERE YEAR(Date_of_Admission) = '2024'
--GROUP BY YEAR(Date_of_Admission), Medical_condition
--ORDER BY YEAR(Date_of_Admission), M_C_Y DESC ;







Select *
FROM dbo.healthcare_dataset_checkpoint
