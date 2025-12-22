
/* =====================================================
   Project : AdventureWorks Sales BI Project
   File    : 02_Fact_Sales.sql
   Purpose : Create Fact Sales view for Power BI
   Grain   : One row per SalesOrderDetail (order line)
   Source  : SalesLT.SalesOrderHeader, SalesLT.SalesOrderDetail
   Notes   : Core fact table for all sales analysis
   Author  : Fazel Emami
   ===================================================== */

CREATE VIEW ve_FactSales AS
SELECT
    -- Keys
    H.SalesOrderID,
    D.SalesOrderDetailID,
    H.CustomerID,
    D.ProductID,
    H.ShipToAddressID,
    H.BillToAddressID,

    -- Dates
    H.OrderDate,
    H.DueDate,
    H.ShipDate,

    -- Facts
    D.OrderQty,
    D.UnitPrice        AS UnitPriceAmount,
    D.UnitPriceDiscount,
    D.LineTotal        AS LineTotalAmount,

    -- Degenerate Dimensions
    H.SalesOrderNumber,
    H.Status,
    H.ShipMethod

FROM SalesLT.SalesOrderHeader H
JOIN SalesLT.SalesOrderDetail D
    ON H.SalesOrderID = D.SalesOrderID;
