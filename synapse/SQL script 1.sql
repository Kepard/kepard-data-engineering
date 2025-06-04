CREATE DATABASE SCOPED CREDENTIAL cred_bogdan
WITH
    IDENTITY = 'Managed Identity'


CREATE EXTERNAL DATA SOURCE source_processed
WITH
(
    LOCATION = 'https://kepardstoragedatalake.dfs.core.windows.net/processed',
    CREDENTIAL = cred_bogdan
)

CREATE EXTERNAL DATA SOURCE source_highquality
WITH
(
    LOCATION = 'https://kepardstoragedatalake.dfs.core.windows.net/high-quality',
    CREDENTIAL = cred_bogdan
)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)



------------------------------------
-- CREATE EXTERNAL TABLE EXTSALES --
------------------------------------

CREATE EXTERNAL TABLE highquality.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_highquality,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM highquality.sales


SELECT * FROM highquality.sales