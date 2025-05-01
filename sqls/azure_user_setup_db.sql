USE AdventureWorksLT2022;

GRANT SELECT ON Schema::SalesLT to wasif;

SELECT name, is_disabled FROM sys.sql_logins WHERE name = 'wasif';

ALTER LOGIN wasif ENABLE;
ALTER LOGIN wasif WITH PASSWORD = '####';

SELECT
s.name AS SchemaName,
t.name AS TablesName
From sys.tables t 
INNER JOIN sys.schemas s 
ON t.schema_id = s.schema_id
where s.name = 'SalesLT';

SELECT * FROM AdventureWorksLT2022.SalesLT.;

