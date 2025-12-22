-- Purpose: Customer Dimension
-- Grain: One row per customer
-- Used for: Customer concentration risk analysis
Create OR ALTER VIEW  vw_DimCustomer as 
Select
[CustomerID],
FirstName + ' ' + LastName AS CustomerName,
ISNULL(CompanyName, 'Individual') AS CompanyName,
[SalesPerson],
[EmailAddress],
[Phone]
From
[SalesLT].[Customer];




