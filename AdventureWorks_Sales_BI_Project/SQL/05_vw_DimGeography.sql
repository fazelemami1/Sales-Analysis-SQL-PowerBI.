-- Purpose: Geography Dimension
-- Grain: One row per AddressID
-- Used for: Sales by location
Create or Alter VIEW  vw_DimGeography as
Select 
[AddressID],
[City],
[StateProvince],
[CountryRegion],
[PostalCode]
from
[SalesLT].[Address];
