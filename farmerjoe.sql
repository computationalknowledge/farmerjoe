begin
CREATE DATABASE farmerjoe;
use farmerjoe;
end
go

-- show tables 
SELECT
  *
FROM
  SYSOBJECTS
WHERE
  xtype = 'U';
GO

select name  
from sys.Databases
WHERE name NOT IN ('master', 'tempdb', 'model', 'msdb');  /* removing the name of sys db*/

veggieid, veggieprice, veggiename
CREATE TABLE veggies (
    veggieid int,
    veggieprice float,
    veggiename varchar(255)
);

BULK INSERT veggies
FROM 'C:\data\veggies.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)
select * from veggies;

CREATE TABLE veggie_lots (
    lot_id int,
    quantity_of_vegatables int,
    lot_name varchar(255),
	veggie_id int
);

BULK INSERT veggie_lots
FROM 'C:\data\veggie_lots.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)			
select * from veggie_lots
