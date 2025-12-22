/* =====================================================
   Project : AdventureWorks Sales BI Project
   File    : 03_Dim_Product.sql
   Purpose : Create Product Dimension for BI analysis
   Grain   : One row per ProductID
   Source  : SalesLT.Product, SalesLT.ProductCategory
   Used By : Product performance, Pareto analysis
   Author  : Fazel Emami
   ===================================================== */

CREATE OR ALTER VIEW vw_DimProduct AS
SELECT
    p.ProductID,
    p.Name AS ProductName,
    p.ProductNumber,
    pc.Name AS ProductCategoryName,
    p.ListPrice,
    p.StandardCost,
    ISNULL(p.Color, 'N/A') AS Color,
    ISNULL(p.Size, 'N/A')  AS Size,
    p.Weight
FROM SalesLT.Product AS p
LEFT JOIN SalesLT.ProductCategory AS pc
    ON p.ProductCategoryID = pc.ProductCategoryID;









