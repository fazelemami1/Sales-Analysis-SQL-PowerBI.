-- Purpose: Explore AdventureWorksLT source tables
-- Goal: Understand grain, keys, and row counts

SELECT COUNT(*) FROM SalesLT.SalesOrderHeader;
SELECT COUNT(*) FROM SalesLT.SalesOrderDetail;
SELECT COUNT(*) FROM SalesLT.Customer;
SELECT COUNT(*) FROM SalesLT.Product;
SELECT COUNT(*) FROM SalesLT.Address;
