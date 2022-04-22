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


SELECT name
FROM sys.databases;

use farmerjoe2;

 -- show tables
SELECT
  *
FROM
  SYSOBJECTS
WHERE
  xtype = 'U';
GO
select * from colors;
select * from veggie_lots;
 

delete from veggie_lots    
WHERE  lot_name  LIKE('%ORA%') OR lot_name  LIKE('%PUR%') 
update veggie_lots set lot_name='SILVER' where lot_name LIKE '%RED%'

SELECT v.lot_name, c.colorname  FROM veggie_lots as v 

LEFT  JOIN  colors as c   ON c.colorname = v.lot_name

 -- show tables
SELECT
  *
FROM
  SYSOBJECTS
WHERE
  xtype = 'U';
GO

drop table colors;

create table colors(
	color varchar(16),
	PRIMARY KEY (color)
);
select * from colors;
insert into colors values ('lilac');

create table clothing (
	productid varchar(20), 
	productname varchar(20), 
	productcolor varchar(20), 
	mens_ladies varchar(5), 
	price money
);
select * from clothing
BULK INSERT clothing
FROM 'C:\data\clothing.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)


ALTER TABLE Clothing 
ALTER COLUMN mens_ladies  VARCHAR(100);


BULK INSERT clothing
FROM 'C:\data\clothing.csv'
WITH
(
    FIRSTROW = 2, -- as 1st one is header
    FIELDTERMINATOR = ',',  --CSV field delimiter
    ROWTERMINATOR = '\n',   --Use to shift the control to next row
    TABLOCK
)

select * from colors;	   
select * from clothing;   

select c.color, p.productcolor, p.productname
from colors as c
	full outer join clothing as p
	ON  c.color = p.productcolor
	select * from colors;

use farmerjoe2;
select v.lot_name, c.color from veggie_lots as v
full outer join colors as c   ON c.color = v.lot_name

select * from colors ;
select * from veggie_lots;
update colors set color = 'YELLOW'  where color = 'yellow'
