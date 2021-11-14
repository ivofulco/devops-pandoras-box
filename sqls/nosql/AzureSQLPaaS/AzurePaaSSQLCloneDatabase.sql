-- Create database on other instance
-- Need execute in target instance with dbadmin privileges
create database [my-example-database-source] as copy of [prefix-sourceinstancename].[my-example-database-target]