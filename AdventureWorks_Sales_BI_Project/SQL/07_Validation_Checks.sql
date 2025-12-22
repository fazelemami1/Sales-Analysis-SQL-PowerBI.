-- Validate Fact & Dimensions

SELECT COUNT(*) FROM vw_FactSales;
SELECT COUNT(DISTINCT SalesOrderID) FROM vw_FactSales;

SELECT COUNT(*) FROM vw_DimCustomer;
SELECT COUNT(DISTINCT CustomerID) FROM vw_DimCustomer;
