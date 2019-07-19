-- CREATE TABLES 
 -- ----------------------------------------------Creating tables
 USE assignment1;
DROP TABLE IF EXISTS food_gro;
CREATE TABLE food_gro(fgid varchar(2), foodgroup varchar(32), fgcat_id integer, fgcat varchar(64));

DROP TABLE IF EXISTS foods;
CREATE TABLE foods(fgid varchar(2), fgcat_id integer, srvg_sz varchar(64), food varchar(256), ID varchar(2));

DROP TABLE IF EXISTS serv_per_day;
CREATE TABLE serv_per_day(fgid varchar(2), gender varchar(6), ages varchar(16), servings varchar(16));

DROP TABLE IF EXISTS dir_sta;
CREATE TABLE dir_sta(fgid varchar(2), directional varchar(256), fgcat_id integer);

-- ----------------------------------------------importing data to the tables

-- *To remove file security privilege error. Files are copied in the following path.
-- *The path is found by this command: SHOW VARIABLES LIKE "secure_file_priv"; 

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\fg_directional_satements-en_ONPP.csv'
INTO TABLE dir_sta
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\foodgroups-en_ONPP.csv'
INTO TABLE food_gro
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\foods-en_ONPP_rev.csv'
INTO TABLE foods
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE 'C:\ProgramData\MySQL\MySQL Server 8.0\Uploads\servings_per_day-en_ONPP.csv'
INTO TABLE serv_per_day
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;


