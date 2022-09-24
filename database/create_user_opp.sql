-- Create the user for the logging demonstration
create user OPP
  identified by oracle;

alter user OPP
default tablespace users
 quota unlimited on users
container = current;

-- Grant basic database privileges
grant create session to OPP;
-- Grant object creation privileges
grant create table to OPP;
grant create view to OPP;
grant create procedure to OPP;
grant create type to OPP;
-- Grant/Revoke object privileges 
grant select on SYS.V_$OPEN_CURSOR to OPP;
grant select on SYS.V_$SESSION to OPP;
grant select on SYS.V_$SESSTAT to OPP;
grant select on SYS.V_$SQLAREA to OPP;
grant select on SYS.V_$STATNAME to OPP;
grant select on SYS.V_$TEMPORARY_LOBS to OPP;
-- Grant/Revoke role privileges 
grant aq_administrator_role to OPP with admin option;
grant dba to OPP with admin option;
--grant olap_dba to OPP with admin option;
grant resource to OPP with admin option;
grant xdbadmin to OPP with admin option;
-- Grant/Revoke system privileges 
grant unlimited tablespace to OPP with admin option;
