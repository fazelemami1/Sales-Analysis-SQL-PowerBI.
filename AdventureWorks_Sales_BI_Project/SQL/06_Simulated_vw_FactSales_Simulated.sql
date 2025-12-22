-- Simulate sales dates across months
-- Reason: Original dataset has single transaction date
-- Note: Used for training & time intelligence only
CREATE OR ALTER VIEW vw_FactSales_Simulated AS
SELECT
    SalesOrderID,
    SalesOrderDetailID,
    CustomerID,
    ProductID,
    ShipToAddressID,
    BillToAddressID,

    -- Simulated Order Date
    DATEADD(
        MONTH,
        (SalesOrderID % 12),
        '2008-01-01'
    ) AS OrderDate,

    OrderQty,
    UnitPriceAmount,
    UnitPriceDiscount,
    LineTotalAmount,

    SalesOrderNumber,
    Status,
    ShipMethod
FROM vw_FactSales;
