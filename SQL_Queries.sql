CREATE DATABASE RetailSalesDB

USE RetailSalesDB
GO

SELECT TOP 10 *
FROM dbo.RetailSales;

SELECT COUNT(*) AS TotalRows
FROM dbo.RetailSales;

EXEC sp_help 'dbo.RetailSales';

SELECT
    SUM(CASE WHEN Transaction_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Transaction_ID,
    SUM(CASE WHEN [Date] IS NULL THEN 1 ELSE 0 END) AS Missing_Date,
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS Missing_Customer_ID,
    SUM(CASE WHEN Gender IS NULL THEN 1 ELSE 0 END) AS Missing_Gender,
    SUM(CASE WHEN Age IS NULL THEN 1 ELSE 0 END) AS Missing_Age,
    SUM(CASE WHEN Product_Category IS NULL THEN 1 ELSE 0 END) AS Missing_Category,
    SUM(CASE WHEN Quantity IS NULL THEN 1 ELSE 0 END) AS Missing_Quantity,
    SUM(CASE WHEN Price_per_Unit IS NULL THEN 1 ELSE 0 END) AS Missing_Price,
    SUM(CASE WHEN Total_Amount IS NULL THEN 1 ELSE 0 END) AS Missing_Amount
FROM dbo.RetailSales;


SELECT
    Transaction_ID,
    COUNT(*) AS ID_Count
FROM dbo.RetailSales
GROUP BY Transaction_ID
HAVING COUNT(*) > 1;

SELECT *
FROM dbo.RetailSales
WHERE ABS(
    CAST(Total_Amount AS DECIMAL(12,2))
    - CAST(Quantity AS DECIMAL(12,2))
      * CAST(Price_per_Unit AS DECIMAL(12,2))
) > 0.01;

