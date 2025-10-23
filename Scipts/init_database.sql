USE master;
GO
--Drop and recreate the 'Datawarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name= 'DataWarehouse')
BEGIN 
  ALTER DATABASE DataWarrehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE Datawarehouse;
END;
GO

--Create the 'Datawarehouse' database
CREATE DATABASE Datawarehouse;
GO

USE Datawarehouse;
go
  
CREATE SCHEMA bronze;
GO
  
CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
