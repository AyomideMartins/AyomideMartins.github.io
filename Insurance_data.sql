
SELECT [Policy]
      ,[Expiry]
      ,[Location]
      ,[State]
      ,[Region]
      ,[InsuredValue]
      ,[Construction]
      ,[BusinessType]
      ,[Earthquake]
      ,[Flood]
  FROM [dbo].[Insurance Data]
  WHERE REGION = 'London' OR State = 'NY'

GO

--SQL WILDCARDS
SELECT *
FROM [dbo].[Insurance Data]
WHERE Location LIKE 'R%'

SELECT *
FROM [dbo].[Insurance Data]
WHERE Location LIKE '%L'

SELECT *
FROM [dbo].[Insurance Data]
WHERE Location LIKE '%L%'

SELECT *
FROM [dbo].[Insurance Data]
WHERE Location LIKE 'R____'

--SQL TOP CLAUSE 
SELECT TOP(5)*
FROM [dbo].[Insurance Data]

SELECT TOP 5 PERCENT *
FROM [dbo].[Insurance Data]

--SQL ORDER BY CLAUSE -- SORT FUNCTION IN EXCEL
SELECT *
FROM [dbo].[Insurance Data]
ORDER BY BusinessType DESC

SELECT TOP (5) *
FROM [dbo].[Insurance Data]
WHERE REGION = 'MIDWEST'
ORDER BY BusinessType DESC

-- AGGREGATE FUNCTION : SUM, COUNT, AVG, MIN, MAX
SELECT COUNT (*)
FROM [dbo].[Insurance Data]

SELECT MAX (BUSINESSTYPE)
FROM [dbo].[Insurance Data]

SELECT *
FROM [dbo].[Insurance Data]

-- SQL GROUP BY CLAUSE

SELECT REGION
        ,State
        ,SUM(INSUREDVALUE) AS TOTAL_INSURED_VALUE
FROM [dbo].[Insurance Data]
GROUP BY Region
            ,State
ORDER BY REGION ASC

SELECT *
FROM [dbo].[Insurance Data]

--SQL HAVING CLAUSE

SELECT *
FROM [dbo].['Food supply$']



