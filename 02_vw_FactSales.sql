
-- Purpose: Create Sales Fact View
-- Grain: One row per SalesOrderDetail (order line)
-- Source: SalesOrderHeader + SalesOrderDetail

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
