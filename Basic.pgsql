-- checking the databases exists

--in pg admin: 
SELECT datname from pg_database
-- in psql shell:
\list

-- creating the databases
 CREATE DATABASE RishuDb;

-- Delete the databse : Disconnect if connected  then cmd
DROP database rishudb;

