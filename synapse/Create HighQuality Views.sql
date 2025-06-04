--------------------------
-- CREATE VIEW CALENDAR --
--------------------------
CREATE VIEW highquality.calendar
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Calendar/', 
        FORMAT = 'PARQUET'
        ) as query1


---------------------------
-- CREATE VIEW CUSTOMERS --
---------------------------
CREATE VIEW highquality.customers
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Customers/', 
        FORMAT = 'PARQUET'
        ) as query1


--------------------------
-- CREATE VIEW PRODUCTS --
--------------------------
CREATE VIEW highquality.products
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Products/', 
        FORMAT = 'PARQUET'
        ) as query1

-------------------------
-- CREATE VIEW RETURNS --
-------------------------
CREATE VIEW highquality.returns
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Returns/', 
        FORMAT = 'PARQUET'
        ) as query1


-----------------------
-- CREATE VIEW SALES --
-----------------------
CREATE VIEW highquality.sales
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Sales/', 
        FORMAT = 'PARQUET'
        ) as query1


------------------------
-- CREATE VIEW SUBCAT --
------------------------
CREATE VIEW highquality.subcat
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Product_Subcategories/', 
        FORMAT = 'PARQUET'
        ) as query1


----------------------------
-- CREATE VIEW CATEGORIES --
----------------------------
CREATE VIEW highquality.categories
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Product_Categories/', 
        FORMAT = 'PARQUET'
        ) as query1


-----------------------------
-- CREATE VIEW TERRITORIES --
-----------------------------
CREATE VIEW highquality.territories
AS
SELECT
    * 
FROM 
    OPENROWSET(
        BULK 'https://kepardstoragedatalake.dfs.core.windows.net/processed/AdventureWorks_Territories/', 
        FORMAT = 'PARQUET'
        ) as query1