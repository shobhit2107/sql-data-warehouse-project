/*
=================================
Create Database and Schemas
=================================
Script Purpose:
    This script creates a anew database named 'DataWarehouse' after checking if it already exisits.
    If the database exisits, it is dropped and recreated. Additionally, the script sets up three schemas
    within the database: 'bronze', 'silver', and 'gold'.

WARNING:
    Running this document will drop the entire 'Datawarehouse' database if it exisits. 
    All data in the database will be permanently deleted. Procedd with Caution and ensure 
    you have proper backups before running this scripts.
  */

USE master;
GO

-- Drop and recreate the 'Datawarehouse' database

IF EXISTS (SELECT 1 FROMsys.databases WHERE name = 'DataWarehouse')
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO

-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
GO
  
USE DataWarehouse;
GO

-- Create Schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
