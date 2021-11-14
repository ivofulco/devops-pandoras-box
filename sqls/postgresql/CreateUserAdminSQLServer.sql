-- Create user on database master
CREATE LOGIN myuserexample WITH password='mysup3rs3kr3t123';
-- Create user and vincule with login 
CREATE USER myuserexample FROM LOGIN myuserexample
-- Add roles
sp_addrolemember 'db_owner', 'myuserexample'
-- Add roles
sp_addrolemember 'db_ddladmin', 'myuserexample'
-- Give permissions
alter user myuserexample with login = myuserexample